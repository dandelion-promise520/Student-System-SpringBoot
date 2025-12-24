package com.ruoyi.system.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生成绩对象 stu_score
 * 
 * @author ruoyi
 * @date 2025-12-25
 */
public class StuScore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 成绩ID */
    private Long scoreId;

    /** 学生ID */
    @Excel(name = "学生ID")
    private Long studentId;

    /** 课程ID */
    @Excel(name = "课程ID")
    private Long courseId;

    /** 考试成绩 */
    @Excel(name = "考试成绩")
    private BigDecimal score;

    /** 学期 */
    @Excel(name = "学期")
    private String term;


    private String studentName; // 接收学生姓名

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    private String courseName;  // 接收课程名称

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }


    /** 考试日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "考试日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date examDate;

    public void setScoreId(Long scoreId) 
    {
        this.scoreId = scoreId;
    }

    public Long getScoreId() 
    {
        return scoreId;
    }

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }

    public void setCourseId(Long courseId) 
    {
        this.courseId = courseId;
    }

    public Long getCourseId() 
    {
        return courseId;
    }

    public void setScore(BigDecimal score) 
    {
        this.score = score;
    }

    public BigDecimal getScore() 
    {
        return score;
    }

    public void setTerm(String term) 
    {
        this.term = term;
    }

    public String getTerm() 
    {
        return term;
    }

    public void setExamDate(Date examDate) 
    {
        this.examDate = examDate;
    }

    public Date getExamDate() 
    {
        return examDate;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("scoreId", getScoreId())
            .append("studentId", getStudentId())
            .append("courseId", getCourseId())
            .append("score", getScore())
            .append("term", getTerm())
            .append("examDate", getExamDate())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("remark", getRemark())
            .toString();
    }
}
