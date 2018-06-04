package com.yugandhar.common.util;


/**
 * The configuration properties class stores the names of properties as mentioned in CONFIG_APP_PROPERTIES table.
 * 
 * @author Yugandhar
 * @version 1.0
 * @since 1.0
 * @see Documentation
 */

public final class YugandharConfigurationProperties {
	
	public String getValueForProperty(String propertyName){
		
		switch(propertyName){
		case "com.yugandhar.dateFormat": 	return "yyyy-MM-dd'T'HH:mm:ss.SSSZ";
		
		}
		
		return null;
	}
	

	//date format
	public static final String com_yugandhar_dateFormat ="com_yugandhar_dateFormat";

	//Pagination
	public static final String com_yugandhar_pagination_referencelov_default_pagesize = "com_yugandhar_pagination_referencelov_default_pagesize";
	public static final String com_yugandhar_pagination_datatables_default_pagesize = "com_yugandhar_pagination_datatables_default_pagesize";
	public static final String com_yugandhar_pagination_default_pagesize_search = "com_yugandhar_pagination_default_pagesize_search";
	
	//phonetic
	public static final String com_yugandhar_phonetic_framework_enabled = "com_yugandhar_phonetic_framework_enabled";
	public static final String com_yugandhar_phonetic_algorithm_class = "com_yugandhar_phonetic_algorithm_class";
	public static final String com_yugandhar_phonetic_algorithm_class_method = "com_yugandhar_phonetic_algorithm_class_method";
	
	//Authorization
	public static final String com_yugandhar_authorization_framework_enabled = "com_yugandhar_authorization_framework_enabled";
	
	

	
}
