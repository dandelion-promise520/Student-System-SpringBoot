package com.dandelion.system.mapper;

import java.util.List;
import com.dandelion.system.domain.StuClass;
import com.dandelion.system.domain.StuStudent;

/**
 * 班级信息Mapper接口
 * 
 * @author dandelion
 * @date 2025-12-24
 */
public interface StuClassMapper 
{
    /**
     * 查询班级信息
     * 
     * @param classId 班级信息主键
     * @return 班级信息
     */
    public StuClass selectStuClassByClassId(Long classId);

    /**
     * 查询班级信息列表
     * 
     * @param stuClass 班级信息
     * @return 班级信息集合
     */
    public List<StuClass> selectStuClassList(StuClass stuClass);

    /**
     * 新增班级信息
     * 
     * @param stuClass 班级信息
     * @return 结果
     */
    public int insertStuClass(StuClass stuClass);

    /**
     * 修改班级信息
     * 
     * @param stuClass 班级信息
     * @return 结果
     */
    public int updateStuClass(StuClass stuClass);

    /**
     * 删除班级信息
     * 
     * @param classId 班级信息主键
     * @return 结果
     */
    public int deleteStuClassByClassId(Long classId);

    /**
     * 批量删除班级信息
     * 
     * @param classIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStuClassByClassIds(Long[] classIds);

    /**
     * 批量删除学生信息
     * 
     * @param classIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStuStudentByClassIds(Long[] classIds);
    
    /**
     * 批量新增学生信息
     * 
     * @param stuStudentList 学生信息列表
     * @return 结果
     */
    public int batchStuStudent(List<StuStudent> stuStudentList);
    

    /**
     * 通过班级信息主键删除学生信息信息
     * 
     * @param classId 班级信息ID
     * @return 结果
     */
    public int deleteStuStudentByClassId(Long classId);

    public StuClass selectClassByCode(String classCode);
}
