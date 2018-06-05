package com.yugandhar.common.constant;


/**
 * The default class to store the application level constants
 * 
 * @author Yugandhar
 * @version 1.0
 * @since 1.0
 * 
 */

public final class yugandharConstants {
	
	public static String RESPONSE_CODE_SUCCESS = "SUCCESS";
	public static String RESPONSE_CODE_FAIL ="FAIL";
	public static String PROPNAME_DATE_FORMAT="com.yugandhar.dateFormat";
	public static String YUGANDHAR_COMMON_LOGGER="YugandharCommonLogger";
	public static String YUGANDHAR_PERFSUMMARY_LOGGER="YugandharPerfSummaryLogger";
	public static String YUGANDHAR_ERROR_PERFSUMMARY_LOGGER="YugandharPerfErrorSummaryLogger";
	public static String YUGANDHAR_CACHE_LOGGER="YugandharCacheLogger";
	public static String YUGANDHAR_MQ_REQ_RESP_LOGGER="YugandharMQRequestResponseLogger";
	
	// Exception Additional Message categories
	public static String ERROR_CATEGORY_CONFIGURATION="Yugandhar Configuration Excepiton";
	public static String ERROR_HEADER_VALIDATION="Message Header Validation Exception";
	public static String ERROR_FILTER_VALIDATION="Filter Value Validation failed, valid values are ACTIVE, INACTIVE, ALL";
	
	//Filter values
	public static String FILTER_VALUE_ACTIVE="ACTIVE";
	public static String FILTER_VALUE_INACTIVE="INACTIVE";
	public static String FILTER_VALUE_ALL="ALL";
	
	
	//flag
	public static String FLAG_true = "true";
	public static String FLAG_false = "false";

	
}
