tableList = [
		{"table_name":"demo"},
		{"table_name":"jeecg_monthly_growth_analysis"},
		{"table_name":"jeecg_order_customer"},
		{"table_name":"jeecg_order_main"},
		{"table_name":"jeecg_order_ticket"},
		{"table_name":"jeecg_project_nature_income"},
		{"table_name":"joa_demo"},
		{"table_name":"onl_cgform_button"},
		{"table_name":"onl_cgform_enhance_java"},
		{"table_name":"onl_cgform_enhance_js"},
		{"table_name":"onl_cgform_enhance_sql"},
		{"table_name":"onl_cgform_field"},
		{"table_name":"onl_cgform_head"},
		{"table_name":"onl_cgform_index"},
		{"table_name":"onl_cgreport_head"},
		{"table_name":"onl_cgreport_item"},
		{"table_name":"onl_cgreport_param"},
		{"table_name":"oss_file"},
		{"table_name":"qrtz_blob_triggers"},
		{"table_name":"qrtz_calendars"},
		{"table_name":"qrtz_cron_triggers"},
		{"table_name":"qrtz_fired_triggers"},
		{"table_name":"qrtz_job_details"},
		{"table_name":"qrtz_locks"},
		{"table_name":"qrtz_paused_trigger_grps"},
		{"table_name":"qrtz_scheduler_state"},
		{"table_name":"qrtz_simple_triggers"},
		{"table_name":"qrtz_simprop_triggers"},
		{"table_name":"qrtz_triggers"},
		{"table_name":"sys_announcement"},
		{"table_name":"sys_announcement_send"},
		{"table_name":"sys_category"},
		{"table_name":"sys_data_log"},
		{"table_name":"sys_depart"},
		{"table_name":"sys_dict"},
		{"table_name":"sys_dict_item"},
		{"table_name":"sys_fill_rule"},
		{"table_name":"sys_log"},
		{"table_name":"sys_permission"},
		{"table_name":"sys_permission_data_rule"},
		{"table_name":"sys_position"},
		{"table_name":"sys_quartz_job"},
		{"table_name":"sys_role"},
		{"table_name":"sys_role_permission"},
		{"table_name":"sys_sms"},
		{"table_name":"sys_sms_template"},
		{"table_name":"sys_user"},
		{"table_name":"sys_user_agent"},
		{"table_name":"sys_user_depart"},
		{"table_name":"sys_user_role"},
		{"table_name":"test_demo"},
		{"table_name":"test_order_main"},
		{"table_name":"test_order_product"},
		{"table_name":"test_person"}
	]
for item in tableList:
	#新增租户id
	#ALTER TABLE `sys_user` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id' ;
	#新增租户id的索引
	#ALTER TABLE `jeecg-boot`.`sys_user` ADD INDEX `index_user_tenancy_id` (`tenancyId`) USING BTREE;


	#表名
	table_name = item['table_name']



	alterDDL = "ALTER TABLE `%s` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';";
	alterIndexDDL = "ALTER TABLE `jeecg-boot`.`%s` ADD INDEX `index_%s_tenancy_id` (`tenancy_id`) USING BTREE;"
	sql = "update %s SET %s.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4'"
	
	print("-- ----------------------------")
	print("-- Table %s " % table_name)
	print("-- 新增 tenancyId 租户字段 & 创建索引")
	print("-- ----------------------------")


	print(alterDDL % table_name)
	print(alterIndexDDL % (table_name, table_name))
	print(sql % (table_name, table_name))


