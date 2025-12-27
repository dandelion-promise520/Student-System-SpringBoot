package com.dandelion.system.service;

import java.util.List;

import com.dandelion.system.domain.StuCourse;
import com.dandelion.system.domain.StuScore;

/**
 * 学生成绩Service接口
 * 
 * @author dandelion
 * @date 2025-12-25
 */
public interface IStuScoreService 
{
    /**
     * 查询学生成绩
     * 
     * @param scoreId 学生成绩主键
     * @return 学生成绩
     */
    public StuScore selectStuScoreByScoreId(Long scoreId);

    /**
     * 查询学生成绩列表
     * 
     * @param stuScore 学生成绩
     * @return 学生成绩集合
     */
    public List<StuScore> selectStuScoreList(StuScore stuScore);

    /**
     * 新增学生成绩
     * 
     * @param stuScore 学生成绩
     * @return 结果
     */
    public int insertStuScore(StuScore stuScore);

    /**
     * 修改学生成绩
     * 
     * @param stuScore 学生成绩
     * @return 结果
     */
    public int updateStuScore(StuScore stuScore);

    /**
     * 批量删除学生成绩
     * 
     * @param scoreIds 需要删除的学生成绩主键集合
     * @return 结果
     */
    public int deleteStuScoreByScoreIds(Long[] scoreIds);

    /**
     * 删除学生成绩信息
     * 
     * @param scoreId 学生成绩主键
     * @return 结果
     */
    public int deleteStuScoreByScoreId(Long scoreId);

    /**
     * 导入成绩数据
     * 
     * @param scoreList 成绩列表
     * @param isUpdateSupport 是否更新已存在的数据
     * @return 导入结果描述
     */
    public String importScore(List<StuScore> scoreList, Boolean isUpdateSupport);

    /**
     * 课程Service接口
     *
     * @author dandelion
     * @date 2025-12-25
     */
    interface IStuCourseService
    {
        /**
         * 查询课程
         *
         * @param courseId 课程主键
         * @return 课程
         */
        public StuCourse selectStuCourseByCourseId(Long courseId);

        /**
         * 查询课程列表
         *
         * @param stuCourse 课程
         * @return 课程集合
         */
        public List<StuCourse> selectStuCourseList(StuCourse stuCourse);

        /**
         * 新增课程
         *
         * @param stuCourse 课程
         * @return 结果
         */
        public int insertStuCourse(StuCourse stuCourse);

        /**
         * 修改课程
         *
         * @param stuCourse 课程
         * @return 结果
         */
        public int updateStuCourse(StuCourse stuCourse);

        /**
         * 批量删除课程
         *
         * @param courseIds 需要删除的课程主键集合
         * @return 结果
         */
        public int deleteStuCourseByCourseIds(Long[] courseIds);

        /**
         * 删除课程信息
         *
         * @param courseId 课程主键
         * @return 结果
         */
        public int deleteStuCourseByCourseId(Long courseId);
    }
}
