package com.yugandhar.msp.dobj;
/* Generated Sep 5, 2017 1:54:23 PM by Hibernate Tools 5.2.1.Final using Yugandhar custom templates. 
Generated and to be used in accordance with Yugandhar Licensing Terms. */

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * DO class for mapped to database REF_LANGUAGE_CODE entity
*@author Yugandhar
*@version 1.0
*@since 1.0
*@see AbstractRefLanguageCodeDO
*/

@Entity
@Table(name = "REF_LANGUAGE_CODE", uniqueConstraints = @UniqueConstraint(columnNames = { "CONFIG_LANGUAGE_CODE_KEY",
		"KEY" }))
public class RefLanguageCodeDO extends AbstractRefLanguageCodeDO {

	/**
	 *  Any additional attributes in the OOTB entity needs to be added in this class
	 */
	private static final long serialVersionUID = 1L;

	public RefLanguageCodeDO() {
		super();
	}

	public RefLanguageCodeDO(RefLanguageCodeDO theRefLanguageCodeDO) {
		super(theRefLanguageCodeDO);
	}
}
