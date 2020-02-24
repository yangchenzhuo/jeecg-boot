-- ----------------------------
-- Table sys_announcement
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_announcement` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_announcement` ADD INDEX `index_sys_announcement_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_announcement_send
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_announcement_send` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_announcement_send` ADD INDEX `index_sys_announcement_send_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_category
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_category` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_category` ADD INDEX `index_sys_category_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_depart
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_depart` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_depart` ADD INDEX `index_sys_depart_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_dict
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_dict` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_dict` ADD INDEX `index_sys_dict_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_dict_item
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_dict_item` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_dict_item` ADD INDEX `index_sys_dict_item_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_fill_rule
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_fill_rule` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_fill_rule` ADD INDEX `index_sys_fill_rule_tenancy_id` (`tenancy_id`) USING BTREE;

-- ----------------------------
-- Table sys_permission
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_permission` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_permission` ADD INDEX `index_sys_permission_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_permission_data_rule
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_permission_data_rule` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_permission_data_rule` ADD INDEX `index_sys_permission_data_rule_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_position
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_position` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_position` ADD INDEX `index_sys_position_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_quartz_job
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_quartz_job` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_quartz_job` ADD INDEX `index_sys_quartz_job_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_role
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_role` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_role` ADD INDEX `index_sys_role_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_role_permission
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_role_permission` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_role_permission` ADD INDEX `index_sys_role_permission_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_sms
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_sms` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_sms` ADD INDEX `index_sys_sms_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_sms_template
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_sms_template` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_sms_template` ADD INDEX `index_sys_sms_template_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_user
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_user` ADD INDEX `index_sys_user_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_user_agent
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user_agent` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_user_agent` ADD INDEX `index_sys_user_agent_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_user_depart
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user_depart` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_user_depart` ADD INDEX `index_sys_user_depart_tenancy_id` (`tenancy_id`) USING BTREE;
-- ----------------------------
-- Table sys_user_role
-- 新增 tenancyId 租户字段 & 创建索引
-- ----------------------------
ALTER TABLE `sys_user_role` ADD `tenancy_id` VARCHAR(128) NOT NULL COMMENT '租户id';
ALTER TABLE `jeecg-boot`.`sys_user_role` ADD INDEX `index_sys_user_role_tenancy_id` (`tenancy_id`) USING BTREE;
