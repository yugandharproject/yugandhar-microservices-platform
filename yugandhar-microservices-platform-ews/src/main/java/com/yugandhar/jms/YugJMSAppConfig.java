package com.yugandhar.jms;

import org.springframework.context.annotation.Configuration;
import org.springframework.jms.annotation.EnableJms;


/**
 * The springboot config class for yugandhar ews jms configuration
 * 
 * @author Yugandhar
 * @version 1.0
 * @since 1.0
 * 
 */

@Configuration
@EnableJms
public class YugJMSAppConfig {
	public static final String QUEUE_YUG_DEFAULT_SYNC_REQUEST = "YUG.DEFAULT.SYNC.REQUEST";
	public static final String QUEUE_YUG_DEFAULT_ASYNC_REQUEST = "YUG.DEFAULT.ASYNC.REQUEST";
	public static final String QUEUE_YUG_DEFAULT_RESPONSE = "YUG.DEFAULT.RESPONSE";

}

