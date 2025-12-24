package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.StuClass;

/**
 * 班级信息Service接口
 * 
 * @author dandelion
 * @date 2025-12-24
 */
public interface IStuClassService 
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
     * 批量删除班级信息
     * 
     * @param classIds 需要删除的班级信息主键集合
     * @return 结果
     */
    public int deleteStuClassByClassIds(Long[] classIds);

    /**
     * 删除班级信息信息
     * 
     * @param classId 班级信息主键
     * @return 结果
     */
    public int deleteStuClassByClassId(Long classId);
}
