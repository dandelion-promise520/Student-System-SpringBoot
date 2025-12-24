package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.ruoyi.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.ruoyi.system.domain.StuStudent;
import com.ruoyi.system.mapper.StuClassMapper;
import com.ruoyi.system.domain.StuClass;
import com.ruoyi.system.service.IStuClassService;

/**
 * 班级信息Service业务层处理
 * 
 * @author dandelion
 * @date 2025-12-24
 */
@Service
public class StuClassServiceImpl implements IStuClassService 
{
    @Autowired
    private StuClassMapper stuClassMapper;

    /**
     * 查询班级信息
     * 
     * @param classId 班级信息主键
     * @return 班级信息
     */
    @Override
    public StuClass selectStuClassByClassId(Long classId)
    {
        return stuClassMapper.selectStuClassByClassId(classId);
    }

    /**
     * 查询班级信息列表
     * 
     * @param stuClass 班级信息
     * @return 班级信息
     */
    @Override
    public List<StuClass> selectStuClassList(StuClass stuClass)
    {
        return stuClassMapper.selectStuClassList(stuClass);
    }

    /**
     * 新增班级信息
     * 
     * @param stuClass 班级信息
     * @return 结果
     */
    @Transactional
    @Override
    public int insertStuClass(StuClass stuClass)
    {
        stuClass.setCreateTime(DateUtils.getNowDate());
        int rows = stuClassMapper.insertStuClass(stuClass);
        insertStuStudent(stuClass);
        return rows;
    }

    /**
     * 修改班级信息
     * 
     * @param stuClass 班级信息
     * @return 结果
     */
    @Transactional
    @Override
    public int updateStuClass(StuClass stuClass)
    {
        stuClass.setUpdateTime(DateUtils.getNowDate());
        stuClassMapper.deleteStuStudentByClassId(stuClass.getClassId());
        insertStuStudent(stuClass);
        return stuClassMapper.updateStuClass(stuClass);
    }

    /**
     * 批量删除班级信息
     * 
     * @param classIds 需要删除的班级信息主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteStuClassByClassIds(Long[] classIds)
    {
        stuClassMapper.deleteStuStudentByClassIds(classIds);
        return stuClassMapper.deleteStuClassByClassIds(classIds);
    }

    /**
     * 删除班级信息信息
     * 
     * @param classId 班级信息主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteStuClassByClassId(Long classId)
    {
        stuClassMapper.deleteStuStudentByClassId(classId);
        return stuClassMapper.deleteStuClassByClassId(classId);
    }

    /**
     * 新增学生信息信息
     * 
     * @param stuClass 班级信息对象
     */
    public void insertStuStudent(StuClass stuClass)
    {
        List<StuStudent> stuStudentList = stuClass.getStuStudentList();
        Long classId = stuClass.getClassId();
        if (StringUtils.isNotNull(stuStudentList))
        {
            List<StuStudent> list = new ArrayList<StuStudent>();
            for (StuStudent stuStudent : stuStudentList)
            {
                stuStudent.setClassId(classId);
                list.add(stuStudent);
            }
            if (list.size() > 0)
            {
                stuClassMapper.batchStuStudent(list);
            }
        }
    }
}
