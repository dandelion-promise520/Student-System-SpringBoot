package com.dandelion.system.service.impl;

import java.util.List;
import com.dandelion.common.exception.ServiceException;
import com.dandelion.common.utils.DateUtils;
import com.dandelion.common.utils.SecurityUtils;
import com.dandelion.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dandelion.system.mapper.StuScoreMapper;
import com.dandelion.system.mapper.StuStudentMapper;
import com.dandelion.system.mapper.StuCourseMapper;
import com.dandelion.system.domain.StuScore;
import com.dandelion.system.domain.StuStudent;
import com.dandelion.system.domain.StuCourse;
import com.dandelion.system.service.IStuScoreService;

/**
 * 学生成绩Service业务层处理
 * 
 * @author dandelion
 * @date 2025-12-25
 */
@Service
public class StuScoreServiceImpl implements IStuScoreService 
{
    @Autowired
    private StuScoreMapper stuScoreMapper;

    @Autowired
    private StuStudentMapper stuStudentMapper;

    @Autowired
    private StuCourseMapper stuCourseMapper;

    /**
     * 查询学生成绩
     * 
     * @param scoreId 学生成绩主键
     * @return 学生成绩
     */
    @Override
    public StuScore selectStuScoreByScoreId(Long scoreId)
    {
        return stuScoreMapper.selectStuScoreByScoreId(scoreId);
    }

    /**
     * 查询学生成绩列表
     * 
     * @param stuScore 学生成绩
     * @return 学生成绩
     */
    @Override
    public List<StuScore> selectStuScoreList(StuScore stuScore)
    {
        return stuScoreMapper.selectStuScoreList(stuScore);
    }

    /**
     * 新增学生成绩
     * 
     * @param stuScore 学生成绩
     * @return 结果
     */
    @Override
    public int insertStuScore(StuScore stuScore)
    {
        stuScore.setCreateTime(DateUtils.getNowDate());
        return stuScoreMapper.insertStuScore(stuScore);
    }

    /**
     * 修改学生成绩
     * 
     * @param stuScore 学生成绩
     * @return 结果
     */
    @Override
    public int updateStuScore(StuScore stuScore)
    {
        stuScore.setUpdateTime(DateUtils.getNowDate());
        return stuScoreMapper.updateStuScore(stuScore);
    }

    /**
     * 批量删除学生成绩
     * 
     * @param scoreIds 需要删除的学生成绩主键
     * @return 结果
     */
    @Override
    public int deleteStuScoreByScoreIds(Long[] scoreIds)
    {
        return stuScoreMapper.deleteStuScoreByScoreIds(scoreIds);
    }

    /**
     * 删除学生成绩信息
     * 
     * @param scoreId 学生成绩主键
     * @return 结果
     */
    @Override
    public int deleteStuScoreByScoreId(Long scoreId)
    {
        return stuScoreMapper.deleteStuScoreByScoreId(scoreId);
    }

    @Override
    public String importScore(List<StuScore> scoreList, Boolean isUpdateSupport) {
        if (StringUtils.isNull(scoreList) || scoreList.size() == 0) {
            throw new ServiceException("导入成绩数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();

        String operName = SecurityUtils.getUsername();

        for (StuScore score : scoreList) {
            try {
                // 尝试解析学生
                Long studentId = score.getStudentId();
                if (studentId == null) {
                    // 优先按学号查找（studentName 字段可能被用于填写学号或姓名）
                    if (StringUtils.isNotEmpty(score.getStudentName())) {
                        StuStudent s = stuStudentMapper.selectStuStudentByNumber(score.getStudentName());
                        if (StringUtils.isNotNull(s)) {
                            studentId = s.getStudentId();
                        } else {
                            // 按姓名模糊/精确查找，要求返回唯一
                            StuStudent filter = new StuStudent();
                            filter.setStudentName(score.getStudentName());
                            List<StuStudent> students = stuStudentMapper.selectStuStudentList(filter);
                            if (students != null && students.size() == 1) {
                                studentId = students.get(0).getStudentId();
                            }
                        }
                    }
                }

                // 解析课程
                Long courseId = score.getCourseId();
                if (courseId == null) {
                    if (StringUtils.isNotEmpty(score.getCourseName())) {
                        StuCourse cfilter = new StuCourse();
                        cfilter.setCourseName(score.getCourseName());
                        List<StuCourse> courses = stuCourseMapper.selectStuCourseList(cfilter);
                        if (courses != null && courses.size() == 1) {
                            courseId = courses.get(0).getCourseId();
                        }
                    }
                }

                if (studentId == null) {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、学生无法识别：" + score.getStudentName());
                    continue;
                }
                if (courseId == null) {
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、课程无法识别：" + score.getCourseName());
                    continue;
                }

                // 检查是否存在已记录的成绩（按 studentId + courseId + term）
                StuScore filter = new StuScore();
                filter.setStudentId(studentId);
                filter.setCourseId(courseId);
                filter.setTerm(score.getTerm());
                List<StuScore> existList = stuScoreMapper.selectStuScoreList(filter);

                if (existList == null || existList.size() == 0) {
                    score.setStudentId(studentId);
                    score.setCourseId(courseId);
                    score.setCreateBy(operName);
                    score.setCreateTime(DateUtils.getNowDate());
                    stuScoreMapper.insertStuScore(score);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、学生ID " + studentId + " 课程ID " + courseId + " 导入成功");
                } else {
                    if (isUpdateSupport) {
                        StuScore es = existList.get(0);
                        score.setScoreId(es.getScoreId());
                        score.setStudentId(studentId);
                        score.setCourseId(courseId);
                        score.setUpdateBy(operName);
                        score.setUpdateTime(DateUtils.getNowDate());
                        stuScoreMapper.updateStuScore(score);
                        successNum++;
                        successMsg.append("<br/>" + successNum + "、学生ID " + studentId + " 课程ID " + courseId + " 更新成功");
                    } else {
                        failureNum++;
                        failureMsg.append("<br/>" + failureNum + "、学生ID " + studentId + " 课程ID " + courseId + " 已存在");
                    }
                }
            } catch (Exception e) {
                failureNum++;
                failureMsg.append("<br/>" + failureNum + "、学生 " + score.getStudentName() + " 导入异常：" + e.getMessage());
            }
        }

        if (failureNum > 0) {
            failureMsg.insert(0, "很抱歉，导入部分失败！共 " + failureNum + " 条错误如下：");
            throw new ServiceException(failureMsg.toString());
        } else {
            successMsg.insert(0, "恭喜您，数据已全部导入成功！共 " + successNum + " 条。");
        }
        return successMsg.toString();
    }
}
