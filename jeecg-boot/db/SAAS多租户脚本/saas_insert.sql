update sys_announcement SET sys_announcement.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_announcement_send SET sys_announcement_send.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_category SET sys_category.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_data_log SET sys_data_log.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_depart SET sys_depart.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_dict SET sys_dict.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_dict_item SET sys_dict_item.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_fill_rule SET sys_fill_rule.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_log SET sys_log.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_permission SET sys_permission.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_permission_data_rule SET sys_permission_data_rule.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_position SET sys_position.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_quartz_job SET sys_quartz_job.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_role SET sys_role.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_role_permission SET sys_role_permission.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_sms SET sys_sms.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_sms_template SET sys_sms_template.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_user SET sys_user.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_user_agent SET sys_user_agent.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_user_depart SET sys_user_depart.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';
update sys_user_role SET sys_user_role.tenancy_id = '4e8f11dafee143938b0ef9215cccd9a4';

# 新增默认系系统租户
INSERT INTO `jeecg-boot`.`sys_tenancy_info`(`id`, `create_by`, `create_time`, `update_by`, `update_time`, `domain`, `tenancy_name`, `tenancy_info`, `user_limit`, `expire`, `tenancy_type`) VALUES ('4e8f11dafee143938b0ef9215cccd9a4', 'admin', '2020-02-25 11:35:27', 'admin', '2020-02-25 11:36:18', 'testxxx.com', '系统默认租户', '系统默认租户', 0, NULL, 'sys');