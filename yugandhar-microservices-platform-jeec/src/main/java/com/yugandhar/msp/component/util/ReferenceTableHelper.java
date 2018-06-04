package com.yugandhar.msp.component.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.yugandhar.msp.corecomponentref.RefCountryIsoComponent;
import com.yugandhar.msp.corecomponentref.RefCurrencyComponent;
import com.yugandhar.msp.corecomponentref.RefLanguageCodeComponent;
import com.yugandhar.msp.dobj.RefCountryIsoDO;
import com.yugandhar.msp.dobj.RefCurrencyDO;
import com.yugandhar.msp.dobj.RefLanguageCodeDO;

@Scope(value = "singleton")
@Component
public class ReferenceTableHelper {


	@Autowired
	RefCountryIsoComponent theRefCountryIsoComponent;

	@Autowired
	RefCurrencyComponent theRefCurrencyComponent;

	@Autowired
	RefLanguageCodeComponent theRefLanguageCodeComponent;

	
	public RefLanguageCodeDO getRefLanguageCodeValueByKey(String requesterLanguage, String Refkey, String filterValue) {
		return theRefLanguageCodeComponent.executeRepositoryQuery(requesterLanguage, Refkey, filterValue);
	}

	public RefCountryIsoDO getRefCountryIsoValueByKey(String requesterLanguage, String Refkey, String filterValue) {
		return theRefCountryIsoComponent.executeRepositoryQuery(requesterLanguage, Refkey, filterValue);
	}

	public RefCurrencyDO getRefCurrencyValueByKey(String requesterLanguage, String Refkey, String filterValue) {
		return theRefCurrencyComponent.executeRepositoryQuery(requesterLanguage, Refkey, filterValue);
	}

	
}
