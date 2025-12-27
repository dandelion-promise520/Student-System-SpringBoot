package com.dandelion.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.dandelion.system.domain.StuCourse;
import com.dandelion.system.domain.StuStudent;
import com.dandelion.system.service.IStuCourseService;
import com.dandelion.system.service.IStuStudentService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.dandelion.common.annotation.Log;
import com.dandelion.common.core.controller.BaseController;
import com.dandelion.common.core.domain.AjaxResult;
import com.dandelion.common.enums.BusinessType;
import com.dandelion.system.domain.StuScore;
import com.dandelion.system.service.IStuScoreService;
import com.dandelion.common.utils.poi.ExcelUtil;
import com.dandelion.common.core.page.TableDataInfo;

/**
 * 学生成绩Controller
 * 
 * @author dandelion
 * @date 2025-12-25
 */
@RestController
@RequestMapping("/system/score")
public class StuScoreController extends BaseController
{
    @Autowired
    private IStuScoreService stuScoreService;

    @Autowired
    private IStuStudentService studentService;
    @Autowired
    private IStuCourseService courseService;

    /**
     * 获取学生和课程的下拉列表数据
     */
    @GetMapping("/getOptions")
    public AjaxResult getOptions() {
        AjaxResult ajax = AjaxResult.success();
        ajax.put("students", studentService.selectStuStudentList(new StuStudent()));
        ajax.put("courses", courseService.selectStuCourseList(new StuCourse()));
        return ajax;
    }

    /**
     * 查询学生成绩列表
     */
    @PreAuthorize("@ss.hasPermi('system:score:list')")
    @GetMapping("/list")
    public TableDataInfo list(StuScore stuScore)
    {
        startPage();
        List<StuScore> list = stuScoreService.selectStuScoreList(stuScore);
        return getDataTable(list);
    }

    /**
     * 导出学生成绩列表
     */
    @PreAuthorize("@ss.hasPermi('system:score:export')")
    @Log(title = "学生成绩", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StuScore stuScore)
    {
        List<StuScore> list = stuScoreService.selectStuScoreList(stuScore);
        ExcelUtil<StuScore> util = new ExcelUtil<StuScore>(StuScore.class);
        util.exportExcel(response, list, "学生成绩数据");
    }

    /**
     * 获取学生成绩详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:score:query')")
    @GetMapping(value = "/{scoreId}")
    public AjaxResult getInfo(@PathVariable("scoreId") Long scoreId)
    {
        return success(stuScoreService.selectStuScoreByScoreId(scoreId));
    }

    /**
     * 新增学生成绩
     */
    @PreAuthorize("@ss.hasPermi('system:score:add')")
    @Log(title = "学生成绩", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuScore stuScore)
    {
        return toAjax(stuScoreService.insertStuScore(stuScore));
    }

    /**
     * 修改学生成绩
     */
    @PreAuthorize("@ss.hasPermi('system:score:edit')")
    @Log(title = "学生成绩", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StuScore stuScore)
    {
        return toAjax(stuScoreService.updateStuScore(stuScore));
    }

    /**
     * 删除学生成绩
     */
    @PreAuthorize("@ss.hasPermi('system:score:remove')")
    @Log(title = "学生成绩", businessType = BusinessType.DELETE)
	@DeleteMapping("/{scoreIds}")
    public AjaxResult remove(@PathVariable Long[] scoreIds)
    {
        return toAjax(stuScoreService.deleteStuScoreByScoreIds(scoreIds));
    }
}
