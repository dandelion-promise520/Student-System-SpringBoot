package com.dandelion.system.service.impl;

import java.util.List;

import com.dandelion.common.exception.ServiceException;
import com.dandelion.common.utils.DateUtils;
import com.dandelion.common.utils.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.dandelion.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.dandelion.system.domain.StuStudent;
import com.dandelion.system.mapper.StuClassMapper;
import com.dandelion.system.domain.StuClass;
import com.dandelion.system.service.IStuClassService;

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

    @Override
    public String importClass(List<StuClass> classList, Boolean isUpdateSupport) {
        if (StringUtils.isNull(classList) || classList.size() == 0) {
            throw new ServiceException("导入班级数据不能为空！");
        }
        int successNum = 0;
        int failureNum = 0;
        StringBuilder successMsg = new StringBuilder();
        StringBuilder failureMsg = new StringBuilder();
        String operName = SecurityUtils.getUsername();

        for (StuClass stuClass : classList) {
            try {
                // 1. 验证班级编号是否为空
                if (StringUtils.isEmpty(stuClass.getClassCode())) {
                    failureNum++;
                    failureMsg.append("<br/>导入失败：班级编号不能为空");
                    continue;
                }

                // 2. 检查班级编号是否存在 (需要去 Mapper 定义此方法)
                StuClass c = stuClassMapper.selectClassByCode(stuClass.getClassCode());

                if (StringUtils.isNull(c)) {
                    stuClass.setCreateBy(operName);
                    stuClassMapper.insertStuClass(stuClass);
                    successNum++;
                } else if (isUpdateSupport) {
                    stuClass.setClassId(c.getClassId());
                    stuClass.setUpdateBy(operName);
                    stuClassMapper.updateStuClass(stuClass);
                    successNum++;
                } else {
                    failureNum++;
                    failureMsg.append("<br/>班级编号 " + stuClass.getClassCode() + " 已存在");
                }
            } catch (Exception e) {
                failureNum++;
                failureMsg.append("<br/>班级编号 " + stuClass.getClassCode() + " 导入异常：" + e.getMessage());
            }
        }

        if (failureNum > 0) {
            failureMsg.insert(0, "导入部分失败！共 " + failureNum + " 条错误：");
            throw new ServiceException(failureMsg.toString());
        }
        return "恭喜您，数据已全部导入成功！共 " + successNum + " 条。";
    }
}
