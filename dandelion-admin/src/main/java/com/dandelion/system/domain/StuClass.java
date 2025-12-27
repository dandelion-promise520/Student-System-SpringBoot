package com.dandelion.system.domain;

import java.util.List;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.dandelion.common.annotation.Excel;
import com.dandelion.common.core.domain.BaseEntity;

/**
 * 班级信息对象 stu_class
 * 
 * @author dandelion
 * @date 2025-12-24
 */
public class StuClass extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 班级ID */
    private Long classId;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String className;

    /** 班级编号 */
    @Excel(name = "班级编号")
    private String classCode;

    /** 年级 */
    @Excel(name = "年级")
    private String grade;

    /** 班主任 */
    @Excel(name = "班主任")
    private String teacherName;

    /** 状态（0正常 1停用） */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    private String status;

    /** 学生信息信息 */
    private List<StuStudent> stuStudentList;

    public void setClassId(Long classId) 
    {
        this.classId = classId;
    }

    public Long getClassId() 
    {
        return classId;
    }

    public void setClassName(String className) 
    {
        this.className = className;
    }

    public String getClassName() 
    {
        return className;
    }

    public void setClassCode(String classCode) 
    {
        this.classCode = classCode;
    }

    public String getClassCode() 
    {
        return classCode;
    }

    public void setGrade(String grade) 
    {
        this.grade = grade;
    }

    public String getGrade() 
    {
        return grade;
    }

    public void setTeacherName(String teacherName) 
    {
        this.teacherName = teacherName;
    }

    public String getTeacherName() 
    {
        return teacherName;
    }

    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    public List<StuStudent> getStuStudentList()
    {
        return stuStudentList;
    }

    public void setStuStudentList(List<StuStudent> stuStudentList)
    {
        this.stuStudentList = stuStudentList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("classId", getClassId())
            .append("className", getClassName())
            .append("classCode", getClassCode())
            .append("grade", getGrade())
            .append("teacherName", getTeacherName())
            .append("status", getStatus())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .append("stuStudentList", getStuStudentList())
            .toString();
    }
}
