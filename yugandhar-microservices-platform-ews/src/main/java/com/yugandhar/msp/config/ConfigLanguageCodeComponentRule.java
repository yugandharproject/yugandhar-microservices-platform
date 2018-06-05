package com.yugandhar.msp.config;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.yugandhar.common.exception.YugandharCommonException;
import com.yugandhar.common.transobj.TxnTransferObj;
import com.yugandhar.common.util.CommonValidationUtil;
import com.yugandhar.msp.dobj.ConfigLanguageCodeDO;

@Scope(value = "prototype")
@Component
public class ConfigLanguageCodeComponentRule {

	@Autowired
	protected CommonValidationUtil commonValidationUtil;


	/**
	*Pre execute persist validation method for ConfigLanguageCodeComp to validate mandatory attributes etc
	* This method is externalized in com.yugandhar.msp.extern.util.CommonValidationUtil class
	* Override this method in CommonValidationUtil to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void prevalidateConfigLanguageCodeCompPersit(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
	}

	/**
	*Pre execute merge validation method for ConfigLanguageCodeComp to validate mandatory attributes etc
	* This method is externalized in com.yugandhar.msp.extern.util.CommonValidationUtil class
	* Override this method in CommonValidationUtil to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void PrevalidateConfigLanguageCodeCompMerge(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
	}

	/**
	*Pre execute findbyId validation method for ConfigLanguageCodeComp to validate mandatory attributes etc
	* This method is externalized in com.yugandhar.msp.extern.util.CommonValidationUtil class
	* Override this method in CommonValidationUtil to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void prevalidateConfigLanguageCodeCompFindById(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}

	/**
	*Pre execute findByBusinessKey validation method for ConfigLanguageCodeComp to validate mandatory attributes etc
	* This method is externalized in com.yugandhar.msp.extern.util.CommonValidationUtil class
	* Override this method in CommonValidationUtil to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void preValidateConfigLanguageCodefindByBusinessKey(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	*Pre execute rule for persist in ConfigLanguageCodeComp
	* This rule is externalized in com.yugandhar.msp.extern.util.YugandharPrePostComponentRule class
	* Override this method in YugandharPrePostComponentRule to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void preExecuteConfigLanguageCodeCompPersist(ConfigLanguageCodeDO reqConfigLanguageCodeDO, TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}

	/**
	*Pre execute rule for persist in ConfigLanguageCodeComp
	* This rule is externalized in com.yugandhar.msp.extern.util.YugandharPrePostComponentRule class
	* Override this method in YugandharPrePostComponentRule to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void postExecuteConfigLanguageCodeCompPersit(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}

	/**
	*Pre execute rule for merge in ConfigLanguageCodeComp
	* This rule is externalized in com.yugandhar.msp.extern.util.YugandharPrePostComponentRule class
	* Override this method in YugandharPrePostComponentRule to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void preExecuteConfigLanguageCodeCompMerge(ConfigLanguageCodeDO reqConfigLanguageCodeDO,
			ConfigLanguageCodeDO dbimageConfigLanguageCodeDO, TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}

	/**
	*Pre execute rule for merge in ConfigLanguageCodeComp
	* This rule is externalized in com.yugandhar.msp.extern.util.YugandharPrePostComponentRule class
	* Override this method in YugandharPrePostComponentRule to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void postExecuteConfigLanguageCodeCompMerge(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}

	/**
	*Pre execute rule for findbyId in ConfigLanguageCodeComp 
	* This rule is externalized in com.yugandhar.msp.extern.util.YugandharPrePostComponentRule class
	* Override this method in YugandharPrePostComponentRule to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void postExecuteConfigLanguageCodeCompFindById(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	*Pre execute rule for findByBusinessKey in ConfigLanguageCodeComp 
	* This rule is externalized in com.yugandhar.msp.extern.util.YugandharPrePostComponentRule class
	* Override this method in YugandharPrePostComponentRule to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void preExecuteConfigLanguageCodefindByBusinessKey(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	*Pre execute rule for findByBusinessKey in ConfigLanguageCodeComp 
	* This rule is externalized in com.yugandhar.msp.extern.util.YugandharPrePostComponentRule class
	* Override this method in YugandharPrePostComponentRule to modify the default OOTB validation
*@throws YugandharCommonException yugandhar common exception 
	*/
	public void postExecuteConfigLanguageCodefindByBusinessKey(TxnTransferObj txnTransferObj) {
		// TODO Auto-generated method stub
		
	}

}

