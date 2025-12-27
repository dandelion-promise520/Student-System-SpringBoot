package com.dandelion.system.service.impl;

import java.util.List;

import com.dandelion.common.exception.ServiceException;
import com.dandelion.common.utils.DateUtils;
import com.dandelion.common.utils.SecurityUtils;
import com.dandelion.common.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dandelion.system.mapper.StuStudentMapper;
import com.dandelion.system.domain.StuStudent;
import com.dandelion.system.service.IStuStudentService;

/**
 * 学生信息Service业务层处理
 * 
 * @author dandelion
 * @date 2025-12-25
 */
@Service
public class StuStudentServiceImpl implements IStuStudentService 
{
    @Autowired
    private StuStudentMapper stuStudentMapper;

    /**
     * 查询学生信息
     * 
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    @Override
    public StuStudent selectStuStudentByStudentId(Long studentId)
    {
        return stuStudentMapper.selectStuStudentByStudentId(studentId);
    }

    /**
     * 查询学生信息列表
     * 
     * @param stuStudent 学生信息
     * @return 学生信息
     */
    @Override
    public List<StuStudent> selectStuStudentList(StuStudent stuStudent)
    {
        return stuStudentMapper.selectStuStudentList(stuStudent);
    }

    /**
     * 新增学生信息
     * 
     * @param stuStudent 学生信息
     * @return 结果
     */
    @Override
    public int insertStuStudent(StuStudent stuStudent)
    {
        stuStudent.setCreateTime(DateUtils.getNowDate());
        return stuStudentMapper.insertStuStudent(stuStudent);
    }

    /**
     * 修改学生信息
     * 
     * @param stuStudent 学生信息
     * @return 结果
     */
    @Override
    public int updateStuStudent(StuStudent stuStudent)
    {
        stuStudent.setUpdateTime(DateUtils.getNowDate());
        return stuStudentMapper.updateStuStudent(stuStudent);
    }

    /**
     * 批量删除学生信息
     * 
     * @param studentIds 需要删除的学生信息主键
     * @return 结果
     */
    @Override
    public int deleteStuStudentByStudentIds(Long[] studentIds)
    {
        return stuStudentMapper.deleteStuStudentByStudentIds(studentIds);
    }

    /**
     * 删除学生信息信息
     * 
     * @param studentId 学生信息主键
     * @return 结果
     */
    @Override
    public int deleteStuStudentByStudentId(Long studentId)
    {
        return stuStudentMapper.deleteStuStudentByStudentId(studentId);
    }

    @Override
    public String importStudent(List<StuStudent> studentList, Boolean isUpdateSupport) {
        if (StringUtils.isNull(studentList) || studentList.size() == 0) {
            throw new ServiceException("导入学生数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();

        // 获取当前操作人姓名，用于记录 createBy/updateBy
        String operName = SecurityUtils.getUsername();

        for (StuStudent student : studentList) {
            try {
                // 1. 验证学号是否为空
                if (StringUtils.isEmpty(student.getStudentNumber())) {
                    failureNum++;
                    failureMsg.append("<br/>导入失败：学号不能为空");
                    continue;
                }

                // 2. 检查学号是否存在
                StuStudent s = stuStudentMapper.selectStuStudentByNumber(student.getStudentNumber());

                if (StringUtils.isNull(s)) {
                    // 不存在则新增
                    student.setCreateBy(operName);
                    stuStudentMapper.insertStuStudent(student);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、学号 " + student.getStudentNumber() + " 导入成功");
                } else if (isUpdateSupport) {
                    // 已存在且支持更新
                    student.setStudentId(s.getStudentId());
                    student.setUpdateBy(operName);
                    stuStudentMapper.updateStuStudent(student);
                    successNum++;
                    successMsg.append("<br/>" + successNum + "、学号 " + student.getStudentNumber() + " 更新成功");
                } else {
                    // 已存在但不支持更新
                    failureNum++;
                    failureMsg.append("<br/>" + failureNum + "、学号 " + student.getStudentNumber() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                failureMsg.append("<br/>" + failureNum + "、学号 " + student.getStudentNumber() + " 导入异常：" + e.getMessage());
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
