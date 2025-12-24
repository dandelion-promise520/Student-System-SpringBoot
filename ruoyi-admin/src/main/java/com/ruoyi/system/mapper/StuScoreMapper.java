package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.StuScore;

/**
 * 学生成绩Mapper接口
 * 
 * @author ruoyi
 * @date 2025-12-25
 */
public interface StuScoreMapper 
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
     * 删除学生成绩
     * 
     * @param scoreId 学生成绩主键
     * @return 结果
     */
    public int deleteStuScoreByScoreId(Long scoreId);

    /**
     * 批量删除学生成绩
     * 
     * @param scoreIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteStuScoreByScoreIds(Long[] scoreIds);
}
