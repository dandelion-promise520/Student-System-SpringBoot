package com.dandelion.system.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.dandelion.system.domain.StuClass;
import com.dandelion.system.service.IStuClassService;
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
import org.springframework.web.multipart.MultipartFile;
import com.dandelion.common.annotation.Log;
import com.dandelion.common.core.controller.BaseController;
import com.dandelion.common.core.domain.AjaxResult;
import com.dandelion.common.enums.BusinessType;
import com.dandelion.system.domain.StuStudent;
import com.dandelion.system.service.IStuStudentService;
import com.dandelion.common.utils.poi.ExcelUtil;
import com.dandelion.common.core.page.TableDataInfo;

/**
 * 学生信息Controller
 * * @author dandelion
 * @date 2025-12-25
 */
@RestController
@RequestMapping("/system/student")
public class StuStudentController extends BaseController
{
    @Autowired
    private IStuStudentService stuStudentService;

    @Autowired
    private IStuClassService stuClassService;

    /**
     * 查询学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:student:list')")
    @GetMapping("/list")
    public TableDataInfo list(StuStudent stuStudent)
    {
        startPage();
        List<StuStudent> list = stuStudentService.selectStuStudentList(stuStudent);
        return getDataTable(list);
    }

    /**
     * 获取班级下拉选择列表
     */
    @GetMapping("/classList")
    public AjaxResult getClassList()
    {
        return success(stuClassService.selectStuClassList(new StuClass()));
    }

    /**
     * 导入学生信息数据
     */
    @Log(title = "学生信息", businessType = BusinessType.IMPORT)
    @PreAuthorize("@ss.hasPermi('system:student:import')")
    @PostMapping("/importData")
    public AjaxResult importData(MultipartFile file, boolean updateSupport) throws Exception
    {
        ExcelUtil<StuStudent> util = new ExcelUtil<StuStudent>(StuStudent.class);
        List<StuStudent> studentList = util.importExcel(file.getInputStream());
        String message = stuStudentService.importStudent(studentList, updateSupport);
        return AjaxResult.success(message);
    }

    /**
     * 下载导入模板
     */
    @PostMapping("/importTemplate")
    public void importTemplate(HttpServletResponse response)
    {
        ExcelUtil<StuStudent> util = new ExcelUtil<StuStudent>(StuStudent.class);
        util.importTemplateExcel(response, "学生数据导入模板");
    }

    /**
     * 导出学生信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:student:export')")
    @Log(title = "学生信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, StuStudent stuStudent)
    {
        List<StuStudent> list = stuStudentService.selectStuStudentList(stuStudent);
        ExcelUtil<StuStudent> util = new ExcelUtil<StuStudent>(StuStudent.class);
        util.exportExcel(response, list, "学生信息数据");
    }

    /**
     * 获取学生信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:student:query')")
    @GetMapping(value = "/{studentId}")
    public AjaxResult getInfo(@PathVariable("studentId") Long studentId)
    {
        return success(stuStudentService.selectStuStudentByStudentId(studentId));
    }

    /**
     * 新增学生信息
     */
    @PreAuthorize("@ss.hasPermi('system:student:add')")
    @Log(title = "学生信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody StuStudent stuStudent)
    {
        return toAjax(stuStudentService.insertStuStudent(stuStudent));
    }

    /**
     * 修改学生信息
     */
    @PreAuthorize("@ss.hasPermi('system:student:edit')")
    @Log(title = "学生信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody StuStudent stuStudent)
    {
        return toAjax(stuStudentService.updateStuStudent(stuStudent));
    }

    /**
     * 删除学生信息
     */
    @PreAuthorize("@ss.hasPermi('system:student:remove')")
    @Log(title = "学生信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{studentIds}")
    public AjaxResult remove(@PathVariable Long[] studentIds)
    {
        return toAjax(stuStudentService.deleteStuStudentByStudentIds(studentIds));
    }
}