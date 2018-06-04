package com.yugandhar.msp.keygen;

import java.util.UUID;


/**
 * The abstract class for default unique- key generator for yugandhar application
*@author Yugandhar
*@version 1.0
*@since 1.0
*/

public class AbstractYugandharKeygenerator {
	
	public String generateKey(){
	return UUID.randomUUID().toString();
	}

}
