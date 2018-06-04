package com.yugandhar.common.transobj;

import java.util.List;

import com.yugandhar.msp.dobj.AuthRolesRegistryDO;
import com.yugandhar.msp.dobj.AuthUserRegistryDO;
import com.yugandhar.msp.dobj.AuthUserRoleAssocDO;
import com.yugandhar.msp.dobj.AuthUserroleAccesscontrolDO;
import com.yugandhar.msp.dobj.ConfigAppPropertiesDO;
import com.yugandhar.msp.dobj.ConfigErrorcodeRegistryDO;
import com.yugandhar.msp.dobj.ConfigLanguageCodeDO;
import com.yugandhar.msp.dobj.ConfigTxnRegistryDO;
import com.yugandhar.msp.dobj.RefCountryIsoDO;
import com.yugandhar.msp.dobj.RefCurrencyDO;
import com.yugandhar.msp.dobj.RefLanguageCodeDO;
import com.yugandhar.msp.dobj.SearchAuthAccessControlDO;
import com.yugandhar.msp.misc.dobj.CommonValidationResponse;

/**
 * The default transaction transfer object for yugandhar request processor APIs.
 * Abstract class to be extended by TxnPayload class
 * 
 * @author Yugandhar
 * @version 1.0
 * @since 1.0
 * @see Documentation
 */

public abstract class AbstractTxnPayload implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// Pagination
	protected Integer paginationIndexOfCurrentSlice; // Input parameter
	protected Integer paginationPageSize; // Input parameter to define the size
											// of the page (e.g. 25 elements or
											// 100 elements)
	protected Integer paginationInfoElementsOnCurrentSlice; // output
															// information on
															// elements
															// (database rows)
															// on the current
															// slice or page
	protected Long paginationInfoTotalElements; // output information on total
												// number of elements (database
												// rows) for given
												// search/retrieve/find criteria
	protected Integer paginationInfoTotalPages; // output information on total
												// number of pages for given
												// search/retrieve/find criteria

	// Common Objects
	protected CommonValidationResponse errorResponseObj;

	// Data Objects
	protected ConfigTxnRegistryDO configTxnRegistryDO;
	protected ConfigErrorcodeRegistryDO configErrorcodeRegistryDO;
	protected RefCountryIsoDO refCountryIsoDO;
	protected RefCurrencyDO refCurrencyDO;
	protected RefLanguageCodeDO refLanguageCodeDO;

	// Data Objects Lists
	protected List<ConfigTxnRegistryDO> configTxnRegistryDOList;
	protected List<ConfigErrorcodeRegistryDO> configErrorcodeRegistryDOList;

	// Reference data DO Lists
	protected List<RefCountryIsoDO> refCountryIsoDOList;
	protected List<RefCurrencyDO> refCurrencyDOList;
	protected List<RefLanguageCodeDO> refLanguageCodeDOList;

	// config
	protected ConfigAppPropertiesDO configAppPropertiesDO;
	protected ConfigLanguageCodeDO configLanguageCodeDO;

	protected List<ConfigAppPropertiesDO> configAppPropertiesDOList;
	protected List<ConfigLanguageCodeDO> configLanguageCodeDOList;

	// Authorization framework
	protected AuthRolesRegistryDO authRolesRegistryDO;
	protected AuthUserRegistryDO authUserRegistryDO;
	protected AuthUserroleAccesscontrolDO authUserroleAccesscontrolDO;
	protected AuthUserRoleAssocDO authUserRoleAssocDO;
	protected SearchAuthAccessControlDO searchAuthAccessControlDO;


	public SearchAuthAccessControlDO getSearchAuthAccessControlDO() {
		return searchAuthAccessControlDO;
	}
	public void setSearchAuthAccessControlDO(SearchAuthAccessControlDO searchAuthAccessControlDO) {
		this.searchAuthAccessControlDO = searchAuthAccessControlDO;
	}
	protected List<AuthRolesRegistryDO> authRolesRegistryDOList;
	protected List<AuthUserRegistryDO> authUserRegistryDOList;
	protected List<AuthUserroleAccesscontrolDO> authUserroleAccesscontrolDOList;
	protected List<AuthUserRoleAssocDO> authUserRoleAssocDOList;
	
	
	
	public Integer getPaginationIndexOfCurrentSlice() {
		return paginationIndexOfCurrentSlice;
	}
	public void setPaginationIndexOfCurrentSlice(Integer paginationIndexOfCurrentSlice) {
		this.paginationIndexOfCurrentSlice = paginationIndexOfCurrentSlice;
	}
	public Integer getPaginationPageSize() {
		return paginationPageSize;
	}
	public void setPaginationPageSize(Integer paginationPageSize) {
		this.paginationPageSize = paginationPageSize;
	}
	public Integer getPaginationInfoElementsOnCurrentSlice() {
		return paginationInfoElementsOnCurrentSlice;
	}
	public void setPaginationInfoElementsOnCurrentSlice(Integer paginationInfoElementsOnCurrentSlice) {
		this.paginationInfoElementsOnCurrentSlice = paginationInfoElementsOnCurrentSlice;
	}
	public Long getPaginationInfoTotalElements() {
		return paginationInfoTotalElements;
	}
	public void setPaginationInfoTotalElements(Long paginationInfoTotalElements) {
		this.paginationInfoTotalElements = paginationInfoTotalElements;
	}
	public Integer getPaginationInfoTotalPages() {
		return paginationInfoTotalPages;
	}
	public void setPaginationInfoTotalPages(Integer paginationInfoTotalPages) {
		this.paginationInfoTotalPages = paginationInfoTotalPages;
	}
	public CommonValidationResponse getErrorResponseObj() {
		return errorResponseObj;
	}
	public void setErrorResponseObj(CommonValidationResponse errorResponseObj) {
		this.errorResponseObj = errorResponseObj;
	}
	public ConfigTxnRegistryDO getConfigTxnRegistryDO() {
		return configTxnRegistryDO;
	}
	public void setConfigTxnRegistryDO(ConfigTxnRegistryDO configTxnRegistryDO) {
		this.configTxnRegistryDO = configTxnRegistryDO;
	}
	public ConfigErrorcodeRegistryDO getConfigErrorcodeRegistryDO() {
		return configErrorcodeRegistryDO;
	}
	public void setConfigErrorcodeRegistryDO(ConfigErrorcodeRegistryDO configErrorcodeRegistryDO) {
		this.configErrorcodeRegistryDO = configErrorcodeRegistryDO;
	}
	public RefCountryIsoDO getRefCountryIsoDO() {
		return refCountryIsoDO;
	}
	public void setRefCountryIsoDO(RefCountryIsoDO refCountryIsoDO) {
		this.refCountryIsoDO = refCountryIsoDO;
	}
	public RefCurrencyDO getRefCurrencyDO() {
		return refCurrencyDO;
	}
	public void setRefCurrencyDO(RefCurrencyDO refCurrencyDO) {
		this.refCurrencyDO = refCurrencyDO;
	}
	public RefLanguageCodeDO getRefLanguageCodeDO() {
		return refLanguageCodeDO;
	}
	public void setRefLanguageCodeDO(RefLanguageCodeDO refLanguageCodeDO) {
		this.refLanguageCodeDO = refLanguageCodeDO;
	}
	public List<ConfigTxnRegistryDO> getConfigTxnRegistryDOList() {
		return configTxnRegistryDOList;
	}
	public void setConfigTxnRegistryDOList(List<ConfigTxnRegistryDO> configTxnRegistryDOList) {
		this.configTxnRegistryDOList = configTxnRegistryDOList;
	}
	public List<ConfigErrorcodeRegistryDO> getConfigErrorcodeRegistryDOList() {
		return configErrorcodeRegistryDOList;
	}
	public void setConfigErrorcodeRegistryDOList(List<ConfigErrorcodeRegistryDO> configErrorcodeRegistryDOList) {
		this.configErrorcodeRegistryDOList = configErrorcodeRegistryDOList;
	}
	public List<RefCountryIsoDO> getRefCountryIsoDOList() {
		return refCountryIsoDOList;
	}
	public void setRefCountryIsoDOList(List<RefCountryIsoDO> refCountryIsoDOList) {
		this.refCountryIsoDOList = refCountryIsoDOList;
	}
	public List<RefCurrencyDO> getRefCurrencyDOList() {
		return refCurrencyDOList;
	}
	public void setRefCurrencyDOList(List<RefCurrencyDO> refCurrencyDOList) {
		this.refCurrencyDOList = refCurrencyDOList;
	}
	public List<RefLanguageCodeDO> getRefLanguageCodeDOList() {
		return refLanguageCodeDOList;
	}
	public void setRefLanguageCodeDOList(List<RefLanguageCodeDO> refLanguageCodeDOList) {
		this.refLanguageCodeDOList = refLanguageCodeDOList;
	}
	public ConfigAppPropertiesDO getConfigAppPropertiesDO() {
		return configAppPropertiesDO;
	}
	public void setConfigAppPropertiesDO(ConfigAppPropertiesDO configAppPropertiesDO) {
		this.configAppPropertiesDO = configAppPropertiesDO;
	}
	public ConfigLanguageCodeDO getConfigLanguageCodeDO() {
		return configLanguageCodeDO;
	}
	public void setConfigLanguageCodeDO(ConfigLanguageCodeDO configLanguageCodeDO) {
		this.configLanguageCodeDO = configLanguageCodeDO;
	}
	public List<ConfigAppPropertiesDO> getConfigAppPropertiesDOList() {
		return configAppPropertiesDOList;
	}
	public void setConfigAppPropertiesDOList(List<ConfigAppPropertiesDO> configAppPropertiesDOList) {
		this.configAppPropertiesDOList = configAppPropertiesDOList;
	}
	public List<ConfigLanguageCodeDO> getConfigLanguageCodeDOList() {
		return configLanguageCodeDOList;
	}
	public void setConfigLanguageCodeDOList(List<ConfigLanguageCodeDO> configLanguageCodeDOList) {
		this.configLanguageCodeDOList = configLanguageCodeDOList;
	}
	public AuthRolesRegistryDO getAuthRolesRegistryDO() {
		return authRolesRegistryDO;
	}
	public void setAuthRolesRegistryDO(AuthRolesRegistryDO authRolesRegistryDO) {
		this.authRolesRegistryDO = authRolesRegistryDO;
	}
	public AuthUserRegistryDO getAuthUserRegistryDO() {
		return authUserRegistryDO;
	}
	public void setAuthUserRegistryDO(AuthUserRegistryDO authUserRegistryDO) {
		this.authUserRegistryDO = authUserRegistryDO;
	}
	public AuthUserroleAccesscontrolDO getAuthUserroleAccesscontrolDO() {
		return authUserroleAccesscontrolDO;
	}
	public void setAuthUserroleAccesscontrolDO(AuthUserroleAccesscontrolDO authUserroleAccesscontrolDO) {
		this.authUserroleAccesscontrolDO = authUserroleAccesscontrolDO;
	}
	public AuthUserRoleAssocDO getAuthUserRoleAssocDO() {
		return authUserRoleAssocDO;
	}
	public void setAuthUserRoleAssocDO(AuthUserRoleAssocDO authUserRoleAssocDO) {
		this.authUserRoleAssocDO = authUserRoleAssocDO;
	}
	public List<AuthRolesRegistryDO> getAuthRolesRegistryDOList() {
		return authRolesRegistryDOList;
	}
	public void setAuthRolesRegistryDOList(List<AuthRolesRegistryDO> authRolesRegistryDOList) {
		this.authRolesRegistryDOList = authRolesRegistryDOList;
	}
	public List<AuthUserRegistryDO> getAuthUserRegistryDOList() {
		return authUserRegistryDOList;
	}
	public void setAuthUserRegistryDOList(List<AuthUserRegistryDO> authUserRegistryDOList) {
		this.authUserRegistryDOList = authUserRegistryDOList;
	}
	public List<AuthUserroleAccesscontrolDO> getAuthUserroleAccesscontrolDOList() {
		return authUserroleAccesscontrolDOList;
	}
	public void setAuthUserroleAccesscontrolDOList(List<AuthUserroleAccesscontrolDO> authUserroleAccesscontrolDOList) {
		this.authUserroleAccesscontrolDOList = authUserroleAccesscontrolDOList;
	}
	public List<AuthUserRoleAssocDO> getAuthUserRoleAssocDOList() {
		return authUserRoleAssocDOList;
	}
	public void setAuthUserRoleAssocDOList(List<AuthUserRoleAssocDO> authUserRoleAssocDOList) {
		this.authUserRoleAssocDOList = authUserRoleAssocDOList;
	}
	
	

}
