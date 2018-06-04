package com.yugandhar.msp.config;
/* Generated Aug 7, 2017 3:52:45 PM by Hibernate Tools 5.2.1.Final using Yugandhar custom templates. 
Generated and to be used in accordance with Yugandhar Licensing Terms. */

import java.util.Date;

import javax.cache.annotation.CacheResult;
import javax.persistence.EntityManager;
import javax.persistence.OptimisticLockException;
import javax.persistence.PersistenceContext;

import org.hibernate.exception.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.yugandhar.common.constant.yugandharConstants;
import com.yugandhar.common.exception.YugandharCommonException;
import com.yugandhar.common.transobj.TxnTransferObj;
import com.yugandhar.common.util.CommonValidationUtil;
import com.yugandhar.common.util.IgnoreAttributesUtil;
import com.yugandhar.msp.dobj.ConfigAppPropertiesDO;
import com.yugandhar.msp.keygen.YugandharKeygenerator;

/**
 * Component object for domain model ConfigAppPropertiesDO class
*@author Yugandhar
*@version 1.0
*@since 1.0
*@see Documentation
*/

@Component
@Scope(value = "prototype")
public class ConfigAppPropertiesComponent {

	private static final Logger logger = LoggerFactory.getLogger(yugandharConstants.YUGANDHAR_COMMON_LOGGER);

	//  entityManager instance injection
	@PersistenceContext
	private EntityManager entityManager;

	// get the repository instance
	@Autowired
	private ConfigAppPropertiesRepository theConfigAppPropertiesRepository;

	@Autowired
	CommonValidationUtil commonValidationUtil;

	@Autowired
	ConfigAppPropertiesComponentRule theConfigAppPropertiesComponentRule;

	//default transaction response object
	TxnTransferObj respTxnTransferObj;

	// default constructor
	public ConfigAppPropertiesComponent() {
	}

	/**
	*This method creates a record in database. generates the idpk if not provided in the request and 
	*populate the updatedByUser, updatedByTxnId, createdTsString, updatedTsString attributes.
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with persisted instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or other mandatory attributes not present
	*
	*/
	public TxnTransferObj persist(TxnTransferObj txnTransferObj) throws YugandharCommonException {
		respTxnTransferObj = new TxnTransferObj();
		respTxnTransferObj.setTxnHeader(txnTransferObj.getTxnHeader());

		try {
			performCommonvalidationBeforePersist(txnTransferObj);
			theConfigAppPropertiesComponentRule.prevalidateConfigAppPropertiesCompPersit(txnTransferObj);
			// check if idpk is provided, else generate idpk with default UUID generator
			ConfigAppPropertiesDO reqConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload().getConfigAppPropertiesDO();
			if (null == reqConfigAppPropertiesDO.getPrimaryKeyDO() || null == reqConfigAppPropertiesDO.getPrimaryKeyDO().getIdPk()) {
				logger.debug("Persist Method - pk Id in request is null, generating new id");
				YugandharKeygenerator yugandharKeygenerator = new YugandharKeygenerator();
				reqConfigAppPropertiesDO.setIdPk(yugandharKeygenerator.generateKey());
			}else
			{
			reqConfigAppPropertiesDO.setIdPk(reqConfigAppPropertiesDO.getPrimaryKeyDO().getIdPk());
				ConfigAppPropertiesDO dbimageConfigAppPropertiesDO = entityManager.find(ConfigAppPropertiesDO.class, reqConfigAppPropertiesDO.getIdPk());
				if (null != dbimageConfigAppPropertiesDO) {
					throw commonValidationUtil.createErrorResponse(txnTransferObj, "101", "ConfigAppPropertiesComponent.persist failed with Validation Exception"); 
					//Record already present for given Idpk
				}
			}
			theConfigAppPropertiesComponentRule.preExecuteConfigAppPropertiesCompPersist(reqConfigAppPropertiesDO, txnTransferObj);
			entityManager.persist(reqConfigAppPropertiesDO);
			entityManager.flush();
			reqConfigAppPropertiesDO.setPrimaryKeyDO(null);
			respTxnTransferObj.getTxnPayload().setConfigAppPropertiesDO(reqConfigAppPropertiesDO);
			theConfigAppPropertiesComponentRule.postExecuteConfigAppPropertiesCompPersit(respTxnTransferObj);
			respTxnTransferObj.setResponseCode(yugandharConstants.RESPONSE_CODE_SUCCESS);
			
		} catch (YugandharCommonException yce) {
			throw yce;
		} catch (javax.persistence.PersistenceException pe) {
			logger.error("persist failed", pe);
			pe.printStackTrace();
			Throwable theCause = pe.getCause();
			if (theCause instanceof ConstraintViolationException) {
				throw commonValidationUtil.populateErrorResponse(txnTransferObj, "3", pe,
						"ConfigAppPropertiesComponent.persist failed - Unique Key Violated");
			} else {
				throw commonValidationUtil.populateErrorResponse(txnTransferObj, "4", pe,
						"ConfigAppPropertiesComponent.persist failed unexpectedly with PersistenceException");
				// Transaction Failed due to unknown error, please check statck
				// trace
		}
		}catch (RuntimeException re) {
			logger.error("persist failed", re);
			re.printStackTrace();
			throw commonValidationUtil.populateErrorResponse(txnTransferObj, "1", re, "ConfigAppPropertiesComponent.persist failed unexpectedly"); 
			//Transaction Failed due to unknown error, please check statck trace
		}
		return respTxnTransferObj;
	}

	/**This service updates the record in database. populate the updatedByUser, updatedByTxnId, updatedTsString attributes
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with database instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or mandatory attributes primary key is not present
	*/

	public TxnTransferObj merge(TxnTransferObj txnTransferObj) {
		respTxnTransferObj = new TxnTransferObj();
		respTxnTransferObj.setTxnHeader(txnTransferObj.getTxnHeader());
		try {
			performCommonvalidationBeforeMerge(txnTransferObj);
			theConfigAppPropertiesComponentRule.PrevalidateConfigAppPropertiesCompMerge(txnTransferObj);
			ConfigAppPropertiesDO reqConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload()
					.getConfigAppPropertiesDO();
			ConfigAppPropertiesDO dbimageConfigAppPropertiesDO = entityManager.find(ConfigAppPropertiesDO.class,
					reqConfigAppPropertiesDO.getIdPk());
			if (null == dbimageConfigAppPropertiesDO) {
				throw commonValidationUtil.createErrorResponse(txnTransferObj, "102",
						"ConfigAppPropertiesComponent.merge failed with Validation Exception");
				//Record not found for given Idpk
			}

			IgnoreAttributesUtil ignoreAttributesUtil = new IgnoreAttributesUtil();
			String[] strIgnoreProperties = ignoreAttributesUtil.getAttributesToIgnore(reqConfigAppPropertiesDO);
			BeanUtils.copyProperties(reqConfigAppPropertiesDO, dbimageConfigAppPropertiesDO, strIgnoreProperties);
			entityManager.detach(dbimageConfigAppPropertiesDO);
			theConfigAppPropertiesComponentRule.preExecuteConfigAppPropertiesCompMerge(reqConfigAppPropertiesDO,
					dbimageConfigAppPropertiesDO, txnTransferObj);
			respTxnTransferObj.getTxnPayload()
					.setConfigAppPropertiesDO(entityManager.merge(dbimageConfigAppPropertiesDO));
			entityManager.flush();
			respTxnTransferObj.setResponseCode(yugandharConstants.RESPONSE_CODE_SUCCESS);
			theConfigAppPropertiesComponentRule.postExecuteConfigAppPropertiesCompMerge(respTxnTransferObj);

		} catch (YugandharCommonException yce) {
			throw yce;
		} catch (OptimisticLockException oe) {
			logger.error("merge failed with OptimisticLockException", oe);
			oe.printStackTrace();
			throw commonValidationUtil.populateErrorResponse(txnTransferObj, "2", oe,
					"OptimisticLockException in ConfigAppPropertiesComponent.merge");
			//OptimisticLockException- Row was updated or deleted by another transaction
		} catch (javax.persistence.PersistenceException pe) {
			logger.error("persist failed", pe);
			pe.printStackTrace();
			Throwable theCause = pe.getCause();
			if (theCause instanceof ConstraintViolationException) {
				throw commonValidationUtil.populateErrorResponse(txnTransferObj, "3", pe,
						"ConfigAppPropertiesComponent.persist failed - Unique Key Violated");
			} else {
				throw commonValidationUtil.populateErrorResponse(txnTransferObj, "4", pe,
						"ConfigAppPropertiesComponent.persist failed unexpectedly with PersistenceException");
				// Transaction Failed due to unknown error, please check statck
				// trace
			}
		} catch (RuntimeException re) {
			logger.error("merge failed", re);
			re.printStackTrace();
			throw commonValidationUtil.populateErrorResponse(txnTransferObj, "1", re,
					"ConfigAppPropertiesComponent.merge failed unexpectedly");
			//Transaction Failed due to unknown error, please check statck trace
		}
		return respTxnTransferObj;
	}

	/**
	* This method search the database record based on primary key. 
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with database instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or mandatory attributes primary key is not present
	*/
	public TxnTransferObj findById(TxnTransferObj txnTransferObj) {
		respTxnTransferObj = new TxnTransferObj();
		respTxnTransferObj.setTxnHeader(txnTransferObj.getTxnHeader());

		try {
			performCommonvalidationBeforeFindById(txnTransferObj);
			theConfigAppPropertiesComponentRule.prevalidateConfigAppPropertiesCompFindById(txnTransferObj);
			ConfigAppPropertiesDO reqConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload()
					.getConfigAppPropertiesDO();
			ConfigAppPropertiesDO dbimageConfigAppPropertiesDO = entityManager.find(ConfigAppPropertiesDO.class,
					reqConfigAppPropertiesDO.getIdPk());
			if (null == dbimageConfigAppPropertiesDO) {
				throw commonValidationUtil.createErrorResponse(txnTransferObj, "102",
						"ConfigAppPropertiesComponent.findbyId failed with Validation Exception");
				//Record not found
			}
			respTxnTransferObj.getTxnPayload().setConfigAppPropertiesDO(dbimageConfigAppPropertiesDO);
			entityManager.flush();
			respTxnTransferObj.setResponseCode(yugandharConstants.RESPONSE_CODE_SUCCESS);
			theConfigAppPropertiesComponentRule.postExecuteConfigAppPropertiesCompFindById(respTxnTransferObj);

		} catch (YugandharCommonException yce) {
			throw yce;
		} catch (RuntimeException re) {
			logger.error("merge failed", re);
			re.printStackTrace();
			throw commonValidationUtil.populateErrorResponse(txnTransferObj, "1", re,
					"ConfigAppPropertiesComponent.findById failed unexpectedly");
			//Transaction Failed due to unknown error, please check statck trace
		}
		return respTxnTransferObj;

	}

	/**
	* perform the common validation before persisting ConfigAppPropertiesDO object in the database.
	* populate createdTimestamp, updatedTimestamp, transaction reference Id and user
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with database instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or mandatory attributes business key is not present
	*/
	private void performCommonvalidationBeforePersist(TxnTransferObj txnTransferObj) {
		commonValidationUtil.validateHeaderForInternalTxn(txnTransferObj);

		if (null == txnTransferObj.getTxnPayload().getConfigAppPropertiesDO()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1001",
					"ConfigAppPropertiesDO is needed in the request");
		}
		ConfigAppPropertiesDO theConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload()
				.getConfigAppPropertiesDO();
		if (null == theConfigAppPropertiesDO.getKey() || theConfigAppPropertiesDO.getKey().isEmpty()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1006",
					"ConfigAppPropertiesDO.key should not be null");
		}

		if (null == theConfigAppPropertiesDO.getValue() || theConfigAppPropertiesDO.getValue().isEmpty()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1011",
					"ConfigAppPropertiesDO.Value should not be null");
		}

		theConfigAppPropertiesDO.setCreatedTs(new Date());
		theConfigAppPropertiesDO.setUpdatedTs(new Date());
		theConfigAppPropertiesDO.setUpdatedByTxnId(txnTransferObj.getTxnHeader().getTxnMessageId());
		theConfigAppPropertiesDO.setUpdatedByUser(txnTransferObj.getTxnHeader().getUserName());
	}

	/**
	* perform the common validation before updating ConfigAppPropertiesDO object in the database.
	* populate  updatedTimestamp, transaction reference Id and user
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with database instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or mandatory attributes business key is not present
	*/
	private void performCommonvalidationBeforeMerge(TxnTransferObj txnTransferObj) {
		commonValidationUtil.validateHeaderForInternalTxn(txnTransferObj);
		if (null == txnTransferObj.getTxnPayload().getConfigAppPropertiesDO()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1001",
					"ConfigAppPropertiesDO is needed in the request");
		}
		if (null == txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().getIdPk()
				|| txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().getIdPk().isEmpty()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1004",
					"ConfigAppPropertiesDO.idpk should not be null");
		}

		if (null == txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().getVersion()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1010",
					"ConfigAppPropertiesDO.version should not be null");
		}
		
		ConfigAppPropertiesDO theConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload()
				.getConfigAppPropertiesDO();
		if (null == theConfigAppPropertiesDO.getKey() || theConfigAppPropertiesDO.getKey().isEmpty()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1006",
					"ConfigAppPropertiesDO.key should not be null");
		}

		if (null == theConfigAppPropertiesDO.getValue() || theConfigAppPropertiesDO.getValue().isEmpty()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1011",
					"ConfigAppPropertiesDO.Value should not be null");
		}
		
		theConfigAppPropertiesDO.setUpdatedTs(new Date());
		theConfigAppPropertiesDO.setUpdatedByTxnId(txnTransferObj.getTxnHeader().getTxnMessageId());
		theConfigAppPropertiesDO.setUpdatedByUser(txnTransferObj.getTxnHeader().getUserName());
	}

	/**
	* perform the common validation that ConfigAppPropertiesDO and idpk is not null
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with database instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or mandatory attributes business key is not present
	*/
	private void performCommonvalidationBeforeFindById(TxnTransferObj txnTransferObj) {

		commonValidationUtil.validateHeaderForInternalTxn(txnTransferObj);

		if (null == txnTransferObj.getTxnPayload().getConfigAppPropertiesDO()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1001",
					"ConfigAppPropertiesDO is needed in the request");
		}
		ConfigAppPropertiesDO theConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload()
				.getConfigAppPropertiesDO();
		if (null == theConfigAppPropertiesDO.getIdPk()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1004",
					"ConfigAppPropertiesDO.idpk should not be null");
		}

	}

	/**
	* This method search the database table CONFIG_APP_PROPERTIES records based on business key (e.g.LanguageCode and Key)
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with database instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or mandatory attributes business key is not present
	*/

	public TxnTransferObj findByBusinessKey(TxnTransferObj txnTransferObj) {
		respTxnTransferObj = new TxnTransferObj();
		respTxnTransferObj.setTxnHeader(txnTransferObj.getTxnHeader());

		try {
			performCommonvalidationBeforeFindByBusinessKey(txnTransferObj);
			ConfigAppPropertiesDO reqConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload()
					.getConfigAppPropertiesDO();
			theConfigAppPropertiesComponentRule.preValidateConfigAppPropertiesfindByBusinessKey(txnTransferObj);
			theConfigAppPropertiesComponentRule.preExecuteConfigAppPropertiesfindByBusinessKey(txnTransferObj);

			ConfigAppPropertiesDO dbimageConfigAppPropertiesDO = executeRepositoryQuery(reqConfigAppPropertiesDO.getKey(),
					reqConfigAppPropertiesDO.getInquiryFilter());

			if (null == dbimageConfigAppPropertiesDO) {
				throw commonValidationUtil.createErrorResponse(txnTransferObj, "102",
						"ConfigAppPropertiesComponent.findByBusinessKey search result have no records");
				//Record not found
			} else {
				dbimageConfigAppPropertiesDO
						.setInquiryFilter(txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().getInquiryFilter());
				respTxnTransferObj.getTxnPayload().setConfigAppPropertiesDO(dbimageConfigAppPropertiesDO);
			}

			theConfigAppPropertiesComponentRule.postExecuteConfigAppPropertiesfindByBusinessKey(respTxnTransferObj);
			respTxnTransferObj.setResponseCode(yugandharConstants.RESPONSE_CODE_SUCCESS);
		} catch (YugandharCommonException yce) {
			throw yce;
		} catch (RuntimeException re) {
			logger.error("findByLanguageCodeAndKey failed", re);
			re.printStackTrace();
			throw commonValidationUtil.populateErrorResponse(txnTransferObj, "1", re,
					"ConfigAppPropertiesComponent.findByBusinessKey failed unexpectedly");
		}

		return respTxnTransferObj;
	}

	/**
	* Execute the query using JPA Repository 
	*@since 1.0
	*@param  String languageCodeRefkey
	*@param String key 
	*@param String filter
	*@return  ConfigAppPropertiesDO returns the populated ConfigAppPropertiesDO object
	*/
	@CacheResult(cacheName = "CONFIGAPPPROPERTIES_BUSKEY")
	public ConfigAppPropertiesDO executeRepositoryQuery(String key, String filter) {
		ConfigAppPropertiesDO dbimageConfigAppPropertiesDO = null;
		if (filter.toUpperCase().equals("ACTIVE")) {
			dbimageConfigAppPropertiesDO = this.theConfigAppPropertiesRepository
					.findByBusinessKeyActive(key);
		} else if (filter.toUpperCase().equals("INACTIVE")) {
			dbimageConfigAppPropertiesDO = this.theConfigAppPropertiesRepository
					.findByBusinessKeyInactive(key);
		} else if (filter.toUpperCase().equals("ALL")) {
			dbimageConfigAppPropertiesDO = this.theConfigAppPropertiesRepository
					.findByBusinessKeyAll(key);

		}

		return dbimageConfigAppPropertiesDO;
	}

	/**
	* perform the common validation that ConfigAppPropertiesDO, ConfigAppPropertiesDO.languageCodeRefkey and ConfigAppPropertiesDO.key is not null
	*@since 1.0
	*@param  txnTransferObj  Transfer Object TxnTransferObj instance
	*@return  txnTransferObj Returns the Transfer Object TxnTransferObj instance populated with database instance 
	*@throws YugandharCommonException if ConfigAppPropertiesDO object is not present in the request or mandatory attributes business key is not present
	*/
	private void performCommonvalidationBeforeFindByBusinessKey(TxnTransferObj txnTransferObj) {
		commonValidationUtil.validateHeaderForInternalTxn(txnTransferObj);
		if (null == txnTransferObj.getTxnPayload().getConfigAppPropertiesDO()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1001",
					"ConfigAppPropertiesDO is needed in the request");
		}
		ConfigAppPropertiesDO theConfigAppPropertiesDO = (ConfigAppPropertiesDO) txnTransferObj.getTxnPayload()
				.getConfigAppPropertiesDO();
		if (null == theConfigAppPropertiesDO.getKey() || theConfigAppPropertiesDO.getKey().isEmpty()) {
			throw commonValidationUtil.populateValidationErrorResponse(txnTransferObj, "1006",
					"ConfigAppPropertiesDO.key should not be null");
		}

		//if inquiry filter is null then consider the inquiry is for ACTIVE records
		if (null == txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().getInquiryFilter()
				|| txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().getInquiryFilter().isEmpty()) {
			txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().setInquiryFilter("ACTIVE");
		} else {
			commonValidationUtil.validateFilterValue(txnTransferObj,
					txnTransferObj.getTxnPayload().getConfigAppPropertiesDO().getInquiryFilter());
		}
	}

	
	

}
