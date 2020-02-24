package org.jeecg.modules.demo.saas.controller;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.aspect.annotation.AutoLog;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.demo.saas.entity.TenancyInfo;
import org.jeecg.modules.demo.saas.service.ITenancyInfoService;
import java.util.Date;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.system.base.controller.JeecgController;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.alibaba.fastjson.JSON;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

 /**
 * @Description: TenancyInfo
 * @Author: jeecg-boot
 * @Date:   2020-02-24
 * @Version: V1.0
 */
@Slf4j
@Api(tags="TenancyInfo")
@RestController
@RequestMapping("/saas/tenancyInfo")
public class TenancyInfoController extends JeecgController<TenancyInfo, ITenancyInfoService> {
	@Autowired
	private ITenancyInfoService tenancyInfoService;
	
	/**
	 * 分页列表查询
	 *
	 * @param tenancyInfo
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@AutoLog(value = "TenancyInfo-分页列表查询")
	@ApiOperation(value="TenancyInfo-分页列表查询", notes="TenancyInfo-分页列表查询")
	@GetMapping(value = "/list")
	public Result<?> queryPageList(TenancyInfo tenancyInfo,
								   @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
								   @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
								   HttpServletRequest req) {
		QueryWrapper<TenancyInfo> queryWrapper = QueryGenerator.initQueryWrapper(tenancyInfo, req.getParameterMap());
		Page<TenancyInfo> page = new Page<TenancyInfo>(pageNo, pageSize);
		IPage<TenancyInfo> pageList = tenancyInfoService.page(page, queryWrapper);
		return Result.ok(pageList);
	}
	
	/**
	 * 添加
	 *
	 * @param tenancyInfo
	 * @return
	 */
	@AutoLog(value = "TenancyInfo-添加")
	@ApiOperation(value="TenancyInfo-添加", notes="TenancyInfo-添加")
	@PostMapping(value = "/add")
	public Result<?> add(@RequestBody TenancyInfo tenancyInfo) {
		tenancyInfoService.save(tenancyInfo);
		return Result.ok("添加成功！");
	}
	
	/**
	 * 编辑
	 *
	 * @param tenancyInfo
	 * @return
	 */
	@AutoLog(value = "TenancyInfo-编辑")
	@ApiOperation(value="TenancyInfo-编辑", notes="TenancyInfo-编辑")
	@PutMapping(value = "/edit")
	public Result<?> edit(@RequestBody TenancyInfo tenancyInfo) {
		tenancyInfoService.updateById(tenancyInfo);
		return Result.ok("编辑成功!");
	}
	
	/**
	 * 通过id删除
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "TenancyInfo-通过id删除")
	@ApiOperation(value="TenancyInfo-通过id删除", notes="TenancyInfo-通过id删除")
	@DeleteMapping(value = "/delete")
	public Result<?> delete(@RequestParam(name="id",required=true) String id) {
		tenancyInfoService.removeById(id);
		return Result.ok("删除成功!");
	}
	
	/**
	 * 批量删除
	 *
	 * @param ids
	 * @return
	 */
	@AutoLog(value = "TenancyInfo-批量删除")
	@ApiOperation(value="TenancyInfo-批量删除", notes="TenancyInfo-批量删除")
	@DeleteMapping(value = "/deleteBatch")
	public Result<?> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		this.tenancyInfoService.removeByIds(Arrays.asList(ids.split(",")));
		return Result.ok("批量删除成功！");
	}
	
	/**
	 * 通过id查询
	 *
	 * @param id
	 * @return
	 */
	@AutoLog(value = "TenancyInfo-通过id查询")
	@ApiOperation(value="TenancyInfo-通过id查询", notes="TenancyInfo-通过id查询")
	@GetMapping(value = "/queryById")
	public Result<?> queryById(@RequestParam(name="id",required=true) String id) {
		TenancyInfo tenancyInfo = tenancyInfoService.getById(id);
		return Result.ok(tenancyInfo);
	}

  /**
   * 导出excel
   *
   * @param request
   * @param tenancyInfo
   */
  @RequestMapping(value = "/exportXls")
  public ModelAndView exportXls(HttpServletRequest request, TenancyInfo tenancyInfo) {
      return super.exportXls(request, tenancyInfo, TenancyInfo.class, "TenancyInfo");
  }

  /**
   * 通过excel导入数据
   *
   * @param request
   * @param response
   * @return
   */
  @RequestMapping(value = "/importExcel", method = RequestMethod.POST)
  public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
      return super.importExcel(request, response, TenancyInfo.class);
  }

}
