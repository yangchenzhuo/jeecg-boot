package org.jeecg.modules.system.entity;

import lombok.Data;

/**
 * multi-tenancy technology
 * SAAS 多租户
 */

@Data
public class BaseEntity {
    /**
     * 租户ID
     */
    private String tenancyId;
}
