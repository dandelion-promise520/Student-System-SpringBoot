package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生信息对象 stu_student
 * 
 * @author dandelion
 * @date 2025-12-25
 */
public class StuStudent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 学生ID */
    private Long studentId;

    /** 班级ID */
    @Excel(name = "班级ID")
    private Long classId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentName;

    /** 学号 */
    @Excel(name = "学号")
    private String studentNumber;

    /** 性别（0男 1女 2未知） */
    @Excel(name = "性别", readConverterExp = "0=男,1=女,2=未知")
    private String gender;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date birthday;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phone;

    /** 邮箱 */
    private String email;

    /** 家庭住址 */
    private String address;

    /** 入学日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "入学日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date enrollmentDate;

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }

    public void setClassId(Long classId) 
    {
        this.classId = classId;
    }

    public Long getClassId() 
    {
        return classId;
    }

    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }

    public void setStudentNumber(String studentNumber) 
    {
        this.studentNumber = studentNumber;
    }

    public String getStudentNumber() 
    {
        return studentNumber;
    }

    public void setGender(String gender) 
    {
        this.gender = gender;
    }

    public String getGender() 
    {
        return gender;
    }

    public void setBirthday(Date birthday) 
    {
        this.birthday = birthday;
    }

    public Date getBirthday() 
    {
        return birthday;
    }

    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }

    public void setEmail(String email) 
    {
        this.email = email;
    }

    public String getEmail() 
    {
        return email;
    }

    public void setAddress(String address) 
    {
        this.address = address;
    }

    public String getAddress() 
    {
        return address;
    }

    public void setEnrollmentDate(Date enrollmentDate) 
    {
        this.enrollmentDate = enrollmentDate;
    }

    public Date getEnrollmentDate() 
    {
        return enrollmentDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("studentId", getStudentId())
            .append("classId", getClassId())
            .append("studentName", getStudentName())
            .append("studentNumber", getStudentNumber())
            .append("gender", getGender())
            .append("birthday", getBirthday())
            .append("phone", getPhone())
            .append("email", getEmail())
            .append("address", getAddress())
            .append("enrollmentDate", getEnrollmentDate())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
