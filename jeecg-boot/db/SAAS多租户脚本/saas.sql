-- ----------------------------
-- Table demo
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `demo` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`demo` ADD INDEX `index_demo_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table jeecg_monthly_growth_analysis
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `jeecg_monthly_growth_analysis` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`jeecg_monthly_growth_analysis` ADD INDEX `index_jeecg_monthly_growth_analysis_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table jeecg_order_customer
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `jeecg_order_customer` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`jeecg_order_customer` ADD INDEX `index_jeecg_order_customer_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table jeecg_order_main
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `jeecg_order_main` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`jeecg_order_main` ADD INDEX `index_jeecg_order_main_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table jeecg_order_ticket
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `jeecg_order_ticket` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`jeecg_order_ticket` ADD INDEX `index_jeecg_order_ticket_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table jeecg_project_nature_income
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `jeecg_project_nature_income` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`jeecg_project_nature_income` ADD INDEX `index_jeecg_project_nature_income_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table joa_demo
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `joa_demo` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`joa_demo` ADD INDEX `index_joa_demo_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgform_button
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgform_button` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgform_button` ADD INDEX `index_onl_cgform_button_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgform_enhance_java
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgform_enhance_java` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgform_enhance_java` ADD INDEX `index_onl_cgform_enhance_java_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgform_enhance_js
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgform_enhance_js` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgform_enhance_js` ADD INDEX `index_onl_cgform_enhance_js_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgform_enhance_sql
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgform_enhance_sql` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgform_enhance_sql` ADD INDEX `index_onl_cgform_enhance_sql_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgform_field
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgform_field` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgform_field` ADD INDEX `index_onl_cgform_field_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgform_head
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgform_head` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgform_head` ADD INDEX `index_onl_cgform_head_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgform_index
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgform_index` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgform_index` ADD INDEX `index_onl_cgform_index_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgreport_head
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgreport_head` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgreport_head` ADD INDEX `index_onl_cgreport_head_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgreport_item
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgreport_item` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgreport_item` ADD INDEX `index_onl_cgreport_item_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table onl_cgreport_param
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `onl_cgreport_param` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`onl_cgreport_param` ADD INDEX `index_onl_cgreport_param_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table oss_file
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `oss_file` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`oss_file` ADD INDEX `index_oss_file_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_blob_triggers
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_blob_triggers` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_blob_triggers` ADD INDEX `index_qrtz_blob_triggers_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_calendars
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_calendars` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_calendars` ADD INDEX `index_qrtz_calendars_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_cron_triggers
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_cron_triggers` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_cron_triggers` ADD INDEX `index_qrtz_cron_triggers_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_fired_triggers
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_fired_triggers` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_fired_triggers` ADD INDEX `index_qrtz_fired_triggers_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_job_details
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_job_details` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_job_details` ADD INDEX `index_qrtz_job_details_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_locks
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_locks` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_locks` ADD INDEX `index_qrtz_locks_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_paused_trigger_grps
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_paused_trigger_grps` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_paused_trigger_grps` ADD INDEX `index_qrtz_paused_trigger_grps_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_scheduler_state
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_scheduler_state` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_scheduler_state` ADD INDEX `index_qrtz_scheduler_state_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_simple_triggers
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_simple_triggers` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_simple_triggers` ADD INDEX `index_qrtz_simple_triggers_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_simprop_triggers
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_simprop_triggers` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_simprop_triggers` ADD INDEX `index_qrtz_simprop_triggers_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table qrtz_triggers
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `qrtz_triggers` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`qrtz_triggers` ADD INDEX `index_qrtz_triggers_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_announcement
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_announcement` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_announcement` ADD INDEX `index_sys_announcement_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_announcement_send
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_announcement_send` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_announcement_send` ADD INDEX `index_sys_announcement_send_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_category
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_category` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_category` ADD INDEX `index_sys_category_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_data_log
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_data_log` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_data_log` ADD INDEX `index_sys_data_log_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_depart
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_depart` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_depart` ADD INDEX `index_sys_depart_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_dict
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_dict` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_dict` ADD INDEX `index_sys_dict_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_dict_item
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_dict_item` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_dict_item` ADD INDEX `index_sys_dict_item_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_fill_rule
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_fill_rule` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_fill_rule` ADD INDEX `index_sys_fill_rule_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_log
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_log` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_log` ADD INDEX `index_sys_log_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_permission
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_permission` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_permission` ADD INDEX `index_sys_permission_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_permission_data_rule
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_permission_data_rule` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_permission_data_rule` ADD INDEX `index_sys_permission_data_rule_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_position
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_position` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_position` ADD INDEX `index_sys_position_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_quartz_job
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_quartz_job` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_quartz_job` ADD INDEX `index_sys_quartz_job_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_role
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_role` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_role` ADD INDEX `index_sys_role_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_role_permission
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_role_permission` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_role_permission` ADD INDEX `index_sys_role_permission_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_sms
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_sms` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_sms` ADD INDEX `index_sys_sms_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_sms_template
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_sms_template` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_sms_template` ADD INDEX `index_sys_sms_template_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_user
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_user` ADD INDEX `index_sys_user_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_user_agent
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user_agent` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_user_agent` ADD INDEX `index_sys_user_agent_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_user_depart
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user_depart` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_user_depart` ADD INDEX `index_sys_user_depart_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table sys_user_role
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user_role` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`sys_user_role` ADD INDEX `index_sys_user_role_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table test_demo
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `test_demo` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`test_demo` ADD INDEX `index_test_demo_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table test_order_main
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `test_order_main` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`test_order_main` ADD INDEX `index_test_order_main_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table test_order_product
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `test_order_product` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`test_order_product` ADD INDEX `index_test_order_product_tenancy_id` (`tenancyId`) USING BTREE;
-- ----------------------------
-- Table test_person
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `test_person` ADD `tenancyId` VARCHAR(128) NOT NULL COMMENT '租户id'
ALTER TABLE `jeecg-boot`.`test_person` ADD INDEX `index_test_person_tenancy_id` (`tenancyId`) USING BTREE;