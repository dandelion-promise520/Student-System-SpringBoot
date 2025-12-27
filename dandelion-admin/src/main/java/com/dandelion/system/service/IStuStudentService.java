package com.dandelion.system.service;

import java.util.List;
import com.dandelion.system.domain.StuStudent;

/**
 * 学生信息Service接口
 * 
 * @author dandelion
 * @date 2025-12-25
 */
public interface IStuStudentService 
{
    /**
     * 查询学生信息
     * 
     * @param studentId 学生信息主键
     * @return 学生信息
     */
    public StuStudent selectStuStudentByStudentId(Long studentId);

    /**
     * 查询学生信息列表
     * 
     * @param stuStudent 学生信息
     * @return 学生信息集合
     */
    public List<StuStudent> selectStuStudentList(StuStudent stuStudent);

    /**
     * 新增学生信息
     * 
     * @param stuStudent 学生信息
     * @return 结果
     */
    public int insertStuStudent(StuStudent stuStudent);

    /**
     * 修改学生信息
     * 
     * @param stuStudent 学生信息
     * @return 结果
     */
    public int updateStuStudent(StuStudent stuStudent);

    /**
     * 批量删除学生信息
     * 
     * @param studentIds 需要删除的学生信息主键集合
     * @return 结果
     */
    public int deleteStuStudentByStudentIds(Long[] studentIds);

    /**
     * 删除学生信息信息
     * 
     * @param studentId 学生信息主键
     * @return 结果
     */
    public int deleteStuStudentByStudentId(Long studentId);

    /**
     * 导入学生数据
     * * @param studentList 学生数据列表
     * @param isUpdateSupport 是否更新支持，如果已存在，则进行更新数据
     * @return 结果
     */
    public String importStudent(List<StuStudent> studentList, Boolean isUpdateSupport);
}
