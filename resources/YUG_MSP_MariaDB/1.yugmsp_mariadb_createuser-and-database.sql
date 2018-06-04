-- --------------------------------------------------------
-- Yugandhar Microservices Platform V1.0.0.RELEASE
-- Database scripts for MariaDB
-- --------------------------------------------------------

CREATE USER 'YUG_MSP'@'%' IDENTIFIED BY 'YUG_MSP';
GRANT EXECUTE, PROCESS, SELECT, SHOW DATABASES, SHOW VIEW, ALTER, ALTER ROUTINE, CREATE, CREATE ROUTINE, CREATE TABLESPACE, CREATE TEMPORARY TABLES, CREATE VIEW, DELETE, DROP, EVENT, INDEX, INSERT, REFERENCES, TRIGGER, UPDATE, CREATE USER, FILE, LOCK TABLES, RELOAD, REPLICATION CLIENT, REPLICATION SLAVE  ON *.* TO 'YUG_MSP'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for yug_msp
CREATE DATABASE IF NOT EXISTS `yug_msp` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `yug_msp`;

-- Dumping structure for table yug_msp.al_auth_roles_registry
CREATE TABLE IF NOT EXISTS `al_auth_roles_registry` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_NAME` varchar(400) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_AUTH_ROLES_REGISTRY` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_auth_roles_registry: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_auth_roles_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_auth_roles_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_auth_userrole_accesscontrol
CREATE TABLE IF NOT EXISTS `al_auth_userrole_accesscontrol` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PROFILE_TYPE` varchar(80) COLLATE utf8_bin NOT NULL,
  `AUTH_USER_ROLE_REGISTRY_IDPK` varchar(200) COLLATE utf8_bin NOT NULL,
  `CONFIG_TXN_REGISTRY_IDPK` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(600) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_AUTH_USERROLE_ACCESSCONT` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_auth_userrole_accesscontrol: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_auth_userrole_accesscontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_auth_userrole_accesscontrol` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_auth_user_registry
CREATE TABLE IF NOT EXISTS `al_auth_user_registry` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `USER_NAME` varchar(400) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_AUTH_USER_REGISTRY` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_auth_user_registry: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_auth_user_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_auth_user_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_auth_user_role_assoc
CREATE TABLE IF NOT EXISTS `al_auth_user_role_assoc` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `AUTH_USER_REGISTRY_IDPK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUTH_ROLES_REGISTRY_IDPK` varchar(50) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_AUTH_USER_ROLE_ASSOC` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_auth_user_role_assoc: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_auth_user_role_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_auth_user_role_assoc` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_config_app_properties
CREATE TABLE IF NOT EXISTS `al_config_app_properties` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `KEY` varchar(150) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(150) COLLATE utf8_bin NOT NULL,
  `VALUE_DEFAULT` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_CONFIG_APP_PROPERTIES` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_config_app_properties: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_config_app_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_config_app_properties` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_config_errorcode_registry
CREATE TABLE IF NOT EXISTS `al_config_errorcode_registry` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ERROR_CODE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ERROR_MESSAGE` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_TS` datetime(6) DEFAULT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_CONFIG_ERRORCODE_REGIS` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_config_errorcode_registry: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_config_errorcode_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_config_errorcode_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_config_language_code
CREATE TABLE IF NOT EXISTS `al_config_language_code` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `KEY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_CONFIG_LANGUAGE_CODE` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_config_language_code: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_config_language_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_config_language_code` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_config_txn_registry
CREATE TABLE IF NOT EXISTS `al_config_txn_registry` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `TXNSERVICE_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TXNSERVICE_CLASS` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TXNSERVICE_CLASSMETHOD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_TXN_REF_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_CONFIG_TXN_REGISTRY` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_config_txn_registry: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_config_txn_registry` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_config_txn_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_ref_country_iso
CREATE TABLE IF NOT EXISTS `al_ref_country_iso` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_REF_COUNTRY_ISO` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_ref_country_iso: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_ref_country_iso` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_ref_country_iso` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_ref_currency
CREATE TABLE IF NOT EXISTS `al_ref_currency` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_REF_CURRENCY` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_ref_currency: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_ref_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_ref_currency` ENABLE KEYS */;

-- Dumping structure for table yug_msp.al_ref_language_code
CREATE TABLE IF NOT EXISTS `al_ref_language_code` (
  `AUDITLOG_ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
  `AUDITLOG_ACTION_CODE` varchar(1) COLLATE utf8_bin NOT NULL,
  `ID_PK` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `KEY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AUDITLOG_ID_PK`),
  KEY `IDXAL_REF_LANGUAGE_CODE` (`ID_PK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.al_ref_language_code: ~0 rows (approximately)
/*!40000 ALTER TABLE `al_ref_language_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `al_ref_language_code` ENABLE KEYS */;

-- Dumping structure for table yug_msp.auth_roles_registry
CREATE TABLE IF NOT EXISTS `auth_roles_registry` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ROLE_NAME` varchar(400) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `AUTH_ROLES_REGISTRY_UNIQUEKEY` (`ROLE_NAME`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.auth_roles_registry: ~2 rows (approximately)
/*!40000 ALTER TABLE `auth_roles_registry` DISABLE KEYS */;
INSERT INTO `auth_roles_registry` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `ROLE_NAME`, `DESCRIPTION`) VALUES
	('7d96d881-257b-4862-b82a-cc517b0a6891', 1, '2017-10-02 16:06:39.000000', NULL, '2017-10-02 16:07:28.000000', 'admin', '1234567890123', 'GUEST', 'GUEST'),
	('ff142ad4-33d8-4827-a094-e7506c732536', 0, '2017-10-02 16:06:22.000000', NULL, '2017-10-02 16:06:22.000000', 'admin', '1234567890123', 'admin', 'admin');
/*!40000 ALTER TABLE `auth_roles_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.auth_userrole_accesscontrol
CREATE TABLE IF NOT EXISTS `auth_userrole_accesscontrol` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PROFILE_TYPE` varchar(80) COLLATE utf8_bin NOT NULL,
  `AUTH_USER_ROLE_REGISTRY_IDPK` varchar(200) COLLATE utf8_bin NOT NULL,
  `CONFIG_TXN_REGISTRY_IDPK` varchar(200) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(600) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `SYS_C0019271` (`CONFIG_TXN_REGISTRY_IDPK`,`AUTH_USER_ROLE_REGISTRY_IDPK`,`PROFILE_TYPE`),
  KEY `INDX_AUTH_USERROLE_ACCNTRL1` (`PROFILE_TYPE`),
  KEY `INDX_AUTH_USERROLE_ACCNTRL2` (`AUTH_USER_ROLE_REGISTRY_IDPK`),
  KEY `INDX_AUTH_USERROLE_ACCNTRL3` (`CONFIG_TXN_REGISTRY_IDPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.auth_userrole_accesscontrol: ~5 rows (approximately)
/*!40000 ALTER TABLE `auth_userrole_accesscontrol` DISABLE KEYS */;
INSERT INTO `auth_userrole_accesscontrol` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `PROFILE_TYPE`, `AUTH_USER_ROLE_REGISTRY_IDPK`, `CONFIG_TXN_REGISTRY_IDPK`, `DESCRIPTION`) VALUES
	('04cab634-bf3c-47ac-92d2-ea57e75fa173', 0, '2017-10-03 17:34:04.000000', NULL, '2017-10-03 17:34:04.000000', 'admin', '1234567890123', 'USER', '83474f01-6efa-4c0c-af30-afd9057278b4', '314', 'USER access control'),
	('4d5f4974-8d59-42ad-9052-7e5d945df1d9', 0, '2017-10-03 17:33:58.000000', NULL, '2017-10-03 17:33:58.000000', 'admin', '1234567890123', 'USER', '83474f01-6efa-4c0c-af30-afd9057278b4', '494', 'USER access control'),
	('5bf6c3f8-ccf2-4e42-b9f1-adfc48a2c3c5', 0, '2017-10-03 17:34:01.000000', NULL, '2017-10-03 17:34:01.000000', 'admin', '1234567890123', 'USER', '83474f01-6efa-4c0c-af30-afd9057278b4', '317', 'USER access control'),
	('b0e8ec88-06ae-41be-9b79-e854736ae8e4', 0, '2017-10-08 16:52:53.000000', NULL, '2017-10-08 16:52:53.000000', 'admin', '1234567890123', 'ROLE', 'ff142ad4-33d8-4827-a094-e7506c732536', '317', 'USER access control'),
	('bd4c0395-4677-4e37-855f-d141245f7909', 1, '2017-10-03 17:21:43.000000', NULL, '2017-10-03 17:33:13.000000', 'admin', '1234567890123', 'USER', '83474f01-6efa-4c0c-af30-afd9057278b4', '495', 'user access control');
/*!40000 ALTER TABLE `auth_userrole_accesscontrol` ENABLE KEYS */;

-- Dumping structure for table yug_msp.auth_user_registry
CREATE TABLE IF NOT EXISTS `auth_user_registry` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `USER_NAME` varchar(400) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `AUTH_USER_ROLE_REGISTRY_UKEY` (`USER_NAME`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.auth_user_registry: ~2 rows (approximately)
/*!40000 ALTER TABLE `auth_user_registry` DISABLE KEYS */;
INSERT INTO `auth_user_registry` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `USER_NAME`, `DESCRIPTION`) VALUES
	('103d98d2-b558-405b-9574-b6bdffa82bd5', 1, '2017-10-03 16:50:04.000000', NULL, '2017-10-03 16:50:35.000000', 'admin', '1234567890123', 'SNEHA', 'TEST USER'),
	('83474f01-6efa-4c0c-af30-afd9057278b4', 0, '2017-10-03 16:49:45.000000', NULL, '2017-10-03 16:49:45.000000', 'admin', '1234567890123', 'RAKESH', 'TEST USER');
/*!40000 ALTER TABLE `auth_user_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.auth_user_role_assoc
CREATE TABLE IF NOT EXISTS `auth_user_role_assoc` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `AUTH_USER_REGISTRY_IDPK` varchar(50) COLLATE utf8_bin NOT NULL,
  `AUTH_ROLES_REGISTRY_IDPK` varchar(50) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `AUTH_USER_ROLE_ASSOC_UKEY` (`AUTH_ROLES_REGISTRY_IDPK`,`AUTH_USER_REGISTRY_IDPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.auth_user_role_assoc: ~3 rows (approximately)
/*!40000 ALTER TABLE `auth_user_role_assoc` DISABLE KEYS */;
INSERT INTO `auth_user_role_assoc` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `AUTH_USER_REGISTRY_IDPK`, `AUTH_ROLES_REGISTRY_IDPK`, `DESCRIPTION`) VALUES
	('02b352b6-12f9-48d2-8fa8-6139811815ff', 3, '2017-10-03 16:58:06.000000', NULL, '2017-10-03 16:58:54.000000', 'admin', '1234567890123', '103d98d2-b558-405b-9574-b6bdffa82bd5', '7d96d881-257b-4862-b82a-cc517b0a6891', 'ROLE to USER Mapping'),
	('c03dbf6e-5808-49b9-9cb8-384457499671', 0, '2017-10-03 16:57:29.000000', NULL, '2017-10-03 16:57:29.000000', 'admin', '1234567890123', '83474f01-6efa-4c0c-af30-afd9057278b4', 'ff142ad4-33d8-4827-a094-e7506c732536', 'ROLE to USER Mapping'),
	('f693c974-3962-449c-8e8d-71be0946d9da', 0, '2017-10-03 16:57:57.000000', NULL, '2017-10-03 16:57:57.000000', 'admin', '1234567890123', '83474f01-6efa-4c0c-af30-afd9057278b4', '7d96d881-257b-4862-b82a-cc517b0a6891', 'ROLE to USER Mapping');
/*!40000 ALTER TABLE `auth_user_role_assoc` ENABLE KEYS */;

-- Dumping structure for table yug_msp.config_app_properties
CREATE TABLE IF NOT EXISTS `config_app_properties` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `KEY` varchar(150) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(150) COLLATE utf8_bin NOT NULL,
  `VALUE_DEFAULT` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `CONFIG_APPPROP_UNIQUEKEY` (`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.config_app_properties: ~9 rows (approximately)
/*!40000 ALTER TABLE `config_app_properties` DISABLE KEYS */;
INSERT INTO `config_app_properties` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `KEY`, `VALUE`, `VALUE_DEFAULT`, `DESCRIPTION`) VALUES
	('2f8ca313-b276-41e2-91d6-ebfed7fb32b6', 0, '2017-10-01 14:00:59.000000', NULL, '2017-10-01 14:00:59.000000', 'admin', '00000000', 'com_yugandhar_phonetic_framework_enabled', 'true', 'true', 'phonetic framework is enabled by default, set it to false to disable'),
	('31adee64-e858-436f-9ebd-dfce384acda3', 0, '2017-10-01 14:17:16.000000', NULL, '2017-10-01 14:17:16.000000', 'admin', '00000000', 'com_yugandhar_phonetic_algorithm_class', 'org.apache.commons.codec.language.Nysiis', 'org.apache.commons.codec.language.Nysiis', 'phonetic algorithm class, default uses the apache nysiis implementation from commons-codec distribution'),
	('5e565ee6-b176-4813-ab2f-4822223e2bed', 0, '2017-08-29 14:42:31.000000', NULL, '2017-08-29 14:42:31.000000', 'admin', '00000000', 'com_yugandhar_authorization_framework_enabled', 'false', 'true', 'Enables or disable the authorization framework, must be enabled in production environment. In test or developement environment this can be disabled. Valid values are (true, false)'),
	('780352cf-6da7-4e29-97c8-65e1cd7cc91e', 0, '2017-09-13 15:48:18.000000', NULL, '2017-09-13 15:48:18.000000', 'admin', '00000000', 'com_yugandhar_pagination_default_pagesize_search', '25', '25', 'default page size for the data table search results'),
	('9fabebab-effd-4772-8ff3-97e1bddd09a2', 0, '2017-10-01 14:18:46.000000', NULL, '2017-10-01 14:18:46.000000', 'admin', '00000000', 'com_yugandhar_phonetic_algorithm_class_method', 'encode', 'encode', 'method name to invoke from the algorithm class, by default encode method from commons-codec distribution is invoked '),
	('aa1f5170-574b-4700-827f-5b017eaccc47', 0, '2017-11-07 14:53:20.000000', NULL, '2017-11-07 14:53:20.000000', 'admin', '00000000', 'com_yugandhar_match_le_Fuzzy_LePerson_RuleClassMethod', 'process', 'process', 'LE Matching rule class method-name for fuzzy matching of Person type LE'),
	('aa264f9d-099c-4087-bb01-d65b38a87465', 0, '2017-08-24 12:46:26.000000', NULL, '2017-08-24 12:46:26.000000', 'admin', '00000000', 'com_yugandhar_dateFormat', 'yyyy-MM-dd\'T\'HH:mm:ss.SSSZ', 'yyyy-MM-dd\'T\'HH:mm:ss.SSSZ', 'default date format'),
	('b59fbc76-e093-4389-ae9a-c037118f0bd1', 0, '2017-09-08 14:32:43.000000', NULL, '2017-09-08 14:32:43.000000', 'admin', '00000000', 'com_yugandhar_pagination_referencelov_default_pagesize', '50', '50', 'default page size for the reference lov'),
	('f2807a0e-9553-4931-a88b-ac8d07af6f36', 0, '2017-09-08 14:33:32.000000', NULL, '2017-09-08 14:33:32.000000', 'admin', '00000000', 'com_yugandhar_pagination_datatables_default_pagesize', '50', '50', 'default page size for the data table find/retrieve results');
/*!40000 ALTER TABLE `config_app_properties` ENABLE KEYS */;

-- Dumping structure for table yug_msp.config_errorcode_registry
CREATE TABLE IF NOT EXISTS `config_errorcode_registry` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ERROR_CODE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ERROR_MESSAGE` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_TS` datetime(6) DEFAULT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `CONFERRCODEREG_UNIQUEKEY` (`ERROR_CODE`,`CONFIG_LANGUAGE_CODE_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.config_errorcode_registry: ~43 rows (approximately)
/*!40000 ALTER TABLE `config_errorcode_registry` DISABLE KEYS */;
INSERT INTO `config_errorcode_registry` (`ID_PK`, `VERSION`, `CONFIG_LANGUAGE_CODE_KEY`, `ERROR_CODE`, `ERROR_MESSAGE`, `DESCRIPTION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`) VALUES
	('009f6d41-a6f3-4958-9776-6d05dba75216', 0, '1', '10082', 'searchAuthAccessControlDO.txnserviceName is required', 'searchAuthAccessControlDO.txnserviceName is required', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '00000000'),
	('1', 0, '1', '1', 'Transaction Failed due to unknown error,  please check statck trace', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('10', 0, '1', '1002', 'Transaction Service Name not found in configuration', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('11', 0, '1', '1003', 'Transaction Service Name is present but not configured properly', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('12', 0, '1', '1004', 'Idpk should not be null', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('13', 0, '1', '1005', 'Error code should not be null', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('14', 0, '1', '1006', 'Reference list key should not be null ', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('15', 0, '1', '1007', 'configLanguageCodeKey Should not be Null', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('16', 0, '1', '1008', 'Filter Value not Valid', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('18', 0, '1', '1010', 'version attribute should not be null', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('2', 0, '1', '2', 'OptimisticLockException, Row was updated or deleted by another transaction', NULL, '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '000000'),
	('20c56ef7-4cd1-4de4-ab0e-045b648dd8f1', 0, '1', '10078', 'authUserRoleAssocDO.authRolesRegistryIdpk should not be null', 'authUserRoleAssocDO.authRolesRegistryIdpk should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('2e57ecf3-c704-47d3-ba55-98281f6d72be', 0, '1', '10084', 'userName Provided in the request is not part of role given in roleName', 'userName Provided in the request is not part of role given in roleName', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '00000000'),
	('3', 0, '1', '101', 'Record already present for given Idpk', NULL, '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '000000'),
	('31', 0, '1', '10013', 'roletypeRefkey is required', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('4', 0, '1', '102', 'Record not found for given Idpk', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('4be798ac-a9bb-46df-8052-a9b91ec215b8', 0, '1', '1011', 'Reference list value attribute should not be null ', 'Reference list value attribute should not be null ', '2018-04-16 18:31:31.000000', NULL, '2018-04-16 18:31:31.000000', 'admin', '12312311115999'),
	('5', 0, '1', '103', 'No records found for given reference list', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('568ff82e-8849-4a27-b878-0488b9cc39c2', 0, '1', '1014', 'ConfigTxnRegistryDO.txnserviceName should not be null', 'ConfigTxnRegistryDO.txnserviceName should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('5cd2498a-9504-45d7-9c56-9268b5b5feb2', 0, '1', '10079', 'authUserRoleAssocDO.authUserRegistryIdpk should not be null', 'authUserRoleAssocDO.authUserRegistryIdpk should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('5e855d8a-c5b5-440b-aed8-39d202e3a676', 0, '1', '1021', 'Invalid page number in the request. Note- Pages Index starts with 0', 'Invalid page number in the request. Note- Pages Index starts with 0', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('6', 0, '1', '104', 'requesterLanguage is Needed  in the request txnHeader', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('61', 0, '1', '10051', 'countryRefkey is required', NULL, '2018-04-16 18:31:34.000000', NULL, '2018-04-16 18:31:34.000000', 'admin', '000000'),
	('64c00c6a-ccca-4144-a692-18c1ab637160', 0, '1', '10073', 'authRolesRegistryDO.roleName should not be null', 'authRolesRegistryDO.roleName should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('694483f3-05f2-45a1-ae1e-b6e7229cc41e', 0, '1', '107', 'txnHeader Object is needed in the request', NULL, '2018-04-16 18:31:30.000000', NULL, '2018-04-16 18:31:30.000000', 'admin', '12312311115999'),
	('6ba616c5-54bc-446a-a65b-35bb31e6e160', 0, '1', '10077', 'authUserroleAccesscontrolDO.configTxnRegistryIdpk should not be null', 'authUserroleAccesscontrolDO.configTxnRegistryIdpk should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('7', 0, '1', '105', 'userName is Needed in the request txnHeader', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('71', 0, '1', '3', 'Constraint Violation Exception, either Unique Key or other constraint violated', NULL, '2018-04-16 18:31:34.000000', NULL, '2018-04-16 18:31:34.000000', 'admin', '000000'),
	('72', 0, '1', '4', 'Persistence Exception', NULL, '2018-04-16 18:31:34.000000', NULL, '2018-04-16 18:31:34.000000', 'admin', '000000'),
	('73', 0, '1', '5', 'Composite service failed unexpectedly', NULL, '2018-04-16 18:31:34.000000', NULL, '2018-04-16 18:31:34.000000', 'admin', '000000'),
	('7974befe-082b-46c7-a9b5-514db46e9041', 0, '1', '10074', 'authUserRegistryDO.userName should not be null', 'authUserRegistryDO.userName should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('8', 0, '1', '106', 'userRole is Needed in the request txnHeader', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('9', 0, '1', '1001', 'Required Data Object is not present in the request', NULL, '2018-04-16 18:31:33.000000', NULL, '2018-04-16 18:31:33.000000', 'admin', '000000'),
	('a889486f-beac-43e5-abee-937d93c4aed2', 0, '1', '1015', 'ConfigTxnRegistryDO.txnserviceClass should not be null', 'ConfigTxnRegistryDO.txnserviceClass should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('ad4e5732-39ec-473b-9cd0-e44ad4e08dbb', 0, '1', '1017', 'configInquiryLevelsDO.inquiryLevel should not be null', 'configInquiryLevelsDO.inquiryLevel should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('b6001f67-d80c-4a42-bad0-055ee6119738', 0, '1', '1020', 'Invalid inquiry level provided in the request', 'Invalid inquiry level provided in the request', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('b8095b96-ddd0-4dfe-a61d-f7daea29a5b9', 0, '1', '1012', 'configLanguageCodeKey is not valid', 'configLanguageCodeKey is not valid', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('bf6bf8e8-11c9-457e-87a1-975b2498a1ed', 0, '1', '10075', 'authUserroleAccesscontrolDO.profileType should not be null', 'authUserroleAccesscontrolDO.profileType should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('c03ad3a0-7c19-4f28-8f9c-64252da149fe', 0, '1', '10076', 'authUserroleAccesscontrolDO.authUserRoleRegistryIdpk should not be null', 'authUserroleAccesscontrolDO.authUserRoleRegistryIdpk should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('d4da19b3-2039-4380-8bd4-cc063a60559f', 0, '1', '1016', 'ConfigTxnRegistryDO.txnserviceClassmethod should not be null', 'ConfigTxnRegistryDO.txnserviceClassmethod should not be null', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '12312311115999'),
	('e4e521c8-ea8c-40b0-8a28-1020b92e6974', 0, '1', '10080', 'authUserroleAccesscontrolDO.profileType value is not valid, valid values are USER and ROLE', 'authUserroleAccesscontrolDO.profileType value is not valid, valid values are USER and ROLE', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '00000000'),
	('f4b38eda-78fb-41ca-b19d-7ad3c551a809', 0, '1', '10083', 'user or role is not authorized to execute given transaction', 'user or role is not authorized to execute given transaction', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '00000000'),
	('fd10aee6-4783-400d-ad33-59ef7da727a4', 0, '1', '10081', 'One of the attributes searchAuthAccessControlDO.rolename or userName is required', 'One of the attributes searchAuthAccessControlDO.rolename or userName is required', '2018-04-16 18:31:32.000000', NULL, '2018-04-16 18:31:32.000000', 'admin', '00000000');
/*!40000 ALTER TABLE `config_errorcode_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.config_language_code
CREATE TABLE IF NOT EXISTS `config_language_code` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `KEY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `CONFIG_LANGCODE_UNIQUEKEY` (`KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.config_language_code: ~2 rows (approximately)
/*!40000 ALTER TABLE `config_language_code` DISABLE KEYS */;
INSERT INTO `config_language_code` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `KEY`, `VALUE`, `DESCRIPTION`) VALUES
	('7b18a1f2-3df1-4660-81b6-0ad29bda70ee', 1, '2017-08-08 16:01:57.000000', NULL, '2017-08-08 16:02:41.000000', 'admin', '1234567890123', '1', 'ENGLISH', 'English International'),
	('8dfadeae-acea-48a5-b7cf-f3cefd05fcd3', 0, '2017-08-08 16:14:35.000000', NULL, '2017-08-08 16:14:35.000000', 'admin', '1234567890123', '2', 'HINDI', 'Hindi');
/*!40000 ALTER TABLE `config_language_code` ENABLE KEYS */;

-- Dumping structure for table yug_msp.config_txn_registry
CREATE TABLE IF NOT EXISTS `config_txn_registry` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `TXNSERVICE_NAME` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `TXNSERVICE_CLASS` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `TXNSERVICE_CLASSMETHOD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_TXN_REF_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  UNIQUE KEY `CONFIG_APPPROPERTIES_PK` (`ID_PK`),
  UNIQUE KEY `TXNSERVICE_UNIQUE` (`TXNSERVICE_CLASSMETHOD`,`TXNSERVICE_CLASS`,`TXNSERVICE_NAME`),
  UNIQUE KEY `UNIQUESERVICENAME` (`TXNSERVICE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.config_txn_registry: ~55 rows (approximately)
/*!40000 ALTER TABLE `config_txn_registry` DISABLE KEYS */;
INSERT INTO `config_txn_registry` (`ID_PK`, `VERSION`, `TXNSERVICE_NAME`, `TXNSERVICE_CLASS`, `TXNSERVICE_CLASSMETHOD`, `DESCRIPTION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_TXN_REF_ID`) VALUES
	('1', 0, 'createConfigTxnRegistryBase', 'com.yugandhar.msp.config.ConfigTxnRegistryService', 'add', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('117', 0, 'createRefLanguageCodeBase', 'com.yugandhar.msp.corecomponentref.RefLanguageCodeService', 'add', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:31.000000', NULL, '2018-04-16 18:35:31.000000', 'Generator', '000000000'),
	('118', 0, 'updateRefLanguageCodeBase', 'com.yugandhar.msp.corecomponentref.RefLanguageCodeService', 'merge', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:31.000000', NULL, '2018-04-16 18:35:31.000000', 'Generator', '000000000'),
	('119', 0, 'retrieveRefLanguageCodeBase', 'com.yugandhar.msp.corecomponentref.RefLanguageCodeService', 'findById', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:31.000000', NULL, '2018-04-16 18:35:31.000000', 'Generator', '000000000'),
	('120', 0, 'findRefLanguageCodeByBusinessKeyBase', 'com.yugandhar.msp.corecomponentref.RefLanguageCodeService', 'findByBusinessKey', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:31.000000', NULL, '2018-04-16 18:35:31.000000', 'Generator', '000000000'),
	('121', 0, 'findAllRefLanguageCodeByLanguageCodeBase', 'com.yugandhar.msp.corecomponentref.RefLanguageCodeService', 'findAllRecordsByLanguageCode', 'find All records by language code', '2018-04-16 18:35:31.000000', NULL, '2018-04-16 18:35:31.000000', 'Generator', '000000000'),
	('2', 0, 'updateConfigTxnRegistryBase', 'com.yugandhar.msp.config.ConfigTxnRegistryService', 'merge', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('267', 0, 'createRefCountryIsoBase', 'com.yugandhar.msp.corecomponentref.RefCountryIsoService', 'add', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('268', 0, 'updateRefCountryIsoBase', 'com.yugandhar.msp.corecomponentref.RefCountryIsoService', 'merge', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('269', 0, 'retrieveRefCountryIsoBase', 'com.yugandhar.msp.corecomponentref.RefCountryIsoService', 'findById', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('270', 0, 'findRefCountryIsoByBusinessKeyBase', 'com.yugandhar.msp.corecomponentref.RefCountryIsoService', 'findByBusinessKey', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('271', 0, 'findAllRefCountryIsoByLanguageCodeBase', 'com.yugandhar.msp.corecomponentref.RefCountryIsoService', 'findAllRecordsByLanguageCode', 'find All records by language code', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('272', 0, 'createRefCurrencyBase', 'com.yugandhar.msp.corecomponentref.RefCurrencyService', 'add', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('273', 0, 'updateRefCurrencyBase', 'com.yugandhar.msp.corecomponentref.RefCurrencyService', 'merge', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('274', 0, 'retrieveRefCurrencyBase', 'com.yugandhar.msp.corecomponentref.RefCurrencyService', 'findById', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('275', 0, 'findRefCurrencyByBusinessKeyBase', 'com.yugandhar.msp.corecomponentref.RefCurrencyService', 'findByBusinessKey', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('276', 0, 'findAllRefCurrencyByLanguageCodeBase', 'com.yugandhar.msp.corecomponentref.RefCurrencyService', 'findAllRecordsByLanguageCode', 'find All records by language code', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('3', 0, 'retrieveConfigTxnRegistryBase', 'com.yugandhar.msp.config.ConfigTxnRegistryService', 'findById', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('4', 0, 'findConfigTxnRegistryByBusinessKeyBase', 'com.yugandhar.msp.config.ConfigTxnRegistryService', 'findByBusinessKey', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('407', 0, 'createConfigAppPropertiesBase', 'com.yugandhar.msp.config.ConfigAppPropertiesService', 'add', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('408', 0, 'updateConfigAppPropertiesBase', 'com.yugandhar.msp.config.ConfigAppPropertiesService', 'merge', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('409', 0, 'retrieveConfigAppPropertiesBase', 'com.yugandhar.msp.config.ConfigAppPropertiesService', 'findById', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('410', 0, 'findConfigAppPropertiesByBusinessKeyBase', 'com.yugandhar.msp.config.ConfigAppPropertiesService', 'findByBusinessKey', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('417', 0, 'createConfigLanguageCodeBase', 'com.yugandhar.msp.config.ConfigLanguageCodeService', 'add', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('418', 0, 'updateConfigLanguageCodeBase', 'com.yugandhar.msp.config.ConfigLanguageCodeService', 'merge', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('419', 0, 'retrieveConfigLanguageCodeBase', 'com.yugandhar.msp.config.ConfigLanguageCodeService', 'findById', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('420', 0, 'findConfigLanguageCodeByBusinessKeyBase', 'com.yugandhar.msp.config.ConfigLanguageCodeService', 'findByBusinessKey', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('421', 0, 'findAllConfigLanguageCodesBase', 'com.yugandhar.msp.config.ConfigLanguageCodeService', 'findAllRecords', 'find All records by language code', '2018-04-16 18:35:35.000000', NULL, '2018-04-16 18:35:35.000000', 'Generator', '000000000'),
	('479', 0, 'createAuthRolesRegistryBase', 'com.yugandhar.msp.auth.AuthRolesRegistryService', 'add', 'create record in database', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('480', 0, 'updateAuthRolesRegistryBase', 'com.yugandhar.msp.auth.AuthRolesRegistryService', 'merge', 'update the record in database based on idpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('481', 0, 'retrieveAuthRolesRegistryBase', 'com.yugandhar.msp.auth.AuthRolesRegistryService', 'findById', 'find the record based on primary key i.e. idpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('482', 0, 'findAuthRolesRegistryByBusinessKeyBase', 'com.yugandhar.msp.auth.AuthRolesRegistryService', 'findByBusinessKey', 'find by business key method search properties based on roleName', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('483', 0, 'createAuthUserRegistryBase', 'com.yugandhar.msp.auth.AuthUserRegistryService', 'add', 'create record in database', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('484', 0, 'updateAuthUserRegistryBase', 'com.yugandhar.msp.auth.AuthUserRegistryService', 'merge', 'update the record in database based on idpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('485', 0, 'retrieveAuthUserRegistryBase', 'com.yugandhar.msp.auth.AuthUserRegistryService', 'findById', 'find the record based on primary key i.e. idpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('486', 0, 'findAuthUserRegistryByBusinessKeyBase', 'com.yugandhar.msp.auth.AuthUserRegistryService', 'findByBusinessKey', 'find by business key method search properties based on UserName', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('487', 0, 'createAuthUserroleAccesscontrolBase', 'com.yugandhar.msp.auth.AuthUserroleAccesscontrolService', 'add', 'create record in database. if profiletype is USER then provide the AuthUserRegistryIdpk else if profile type is ROLE then provide AuthRolesRegistryIdpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('488', 0, 'updateAuthUserroleAccesscontrolBase', 'com.yugandhar.msp.auth.AuthUserroleAccesscontrolService', 'merge', 'update the record in database based on idpk. if profiletype is USER then provide the AuthUserRegistryIdpk else if profile type is ROLE then provide AuthRolesRegistryIdpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('489', 0, 'retrieveAuthUserroleAccesscontrolBase', 'com.yugandhar.msp.auth.AuthUserroleAccesscontrolService', 'findById', 'find the record based on primary key i.e. idpk. if profiletype is USER then provide the AuthUserRegistryIdpk else if profile type is ROLE then provide AuthRolesRegistryIdpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('494', 0, 'findAuthUserroleAccesscontrolByBusinessKeyBase', 'com.yugandhar.msp.auth.AuthUserroleAccesscontrolService', 'findByBusinessKey', 'find by business key method search properties based on profileType, authUserRoleRegistryIdpk and configTxnRegistryIdpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('495', 0, 'findAuthUserroleAccesscontrolByRegistryIdpkBase', 'com.yugandhar.msp.auth.AuthUserroleAccesscontrolService', 'findAuthUserroleAccesscontrolByRegistryIdpk', 'find All records by ProfileType and AuthUserRoleRegistryIdpk. if profiletype is USER then provide the AuthUserRegistryIdpk else if profile type is ROLE then provide AuthRolesRegistryIdpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('496', 0, 'createAuthUserRoleAssocBase', 'com.yugandhar.msp.auth.AuthUserRoleAssocService', 'add', 'create record in database', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('497', 0, 'updateAuthUserRoleAssocBase', 'com.yugandhar.msp.auth.AuthUserRoleAssocService', 'merge', 'update the record in database based on idpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('498', 0, 'retrieveAuthUserRoleAssocBase', 'com.yugandhar.msp.auth.AuthUserRoleAssocService', 'findById', 'find the record based on primary key i.e. idpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('499', 0, 'findAuthUserRoleAssocByBusinessKeyBase', 'com.yugandhar.msp.auth.AuthUserRoleAssocService', 'findByBusinessKey', 'find by business key method search properties based on authRolesRegistryIdpk and authUserRoleAssocIdpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('5', 0, 'createConfigErrorcodeRegistryBase', 'com.yugandhar.msp.config.ConfigErrorcodeRegistryService', 'add', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('500', 0, 'findAllRecordsByAuthUserRegistryIdpkBase', 'com.yugandhar.msp.auth.AuthUserRoleAssocService', 'findAllRecordsByAuthUserRegistryIdpk', 'find All records by authUserRegistryIdpkBase', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('501', 0, 'findAllRecordsByAuthRolesRegistryIdpkBase', 'com.yugandhar.msp.auth.AuthUserRoleAssocService', 'findAllRecordsByAuthRolesRegistryIdpk', 'find All records by AuthRolesRegistryIdpk', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('509', 0, 'searchAuthRoles', 'com.yugandhar.msp.auth.SearchAuthRolesService', 'process', 'find the Auth roles based on userName or roleName', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('510', 0, 'searchAuthUsers', 'com.yugandhar.msp.auth.searchAuthUsersService', 'process', 'find the Auth users based on userName or roleName', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('519', 0, 'searchAuthAccessControl', 'com.yugandhar.msp.auth.searchAuthAccessControlService', 'process', 'searches if user is authorized to for given transaction. Wildcard searches are not allowed in this transaction considering the fact that this transaction is used for performing authorization', '2018-04-16 18:35:33.000000', NULL, '2018-04-16 18:35:33.000000', 'Generator', '000000000'),
	('6', 0, 'updateConfigErrorcodeRegistryBase', 'com.yugandhar.msp.config.ConfigErrorcodeRegistryService', 'merge', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('7', 0, 'retrieveConfigErrorcodeRegistryBase', 'com.yugandhar.msp.config.ConfigErrorcodeRegistryService', 'findById', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('8', 0, 'findConfigErrorcodeRegistryByBusinessKeyBase', 'com.yugandhar.msp.config.ConfigErrorcodeRegistryService', 'findByBusinessKey', 'find by business key method search properties based on transaction Name', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000'),
	('9', 0, 'findAllConfigErrorcodeRegistryByLanguageCodeBase', 'com.yugandhar.msp.config.ConfigErrorcodeRegistryService', 'findAllRecordsByLanguageCode', 'find All records by language code', '2018-04-16 18:35:32.000000', NULL, '2018-04-16 18:35:32.000000', 'Generator', '000000000');
/*!40000 ALTER TABLE `config_txn_registry` ENABLE KEYS */;

-- Dumping structure for table yug_msp.ref_country_iso
CREATE TABLE IF NOT EXISTS `ref_country_iso` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `REF_COUNTRY_ISO_UNIQUEKEY` (`KEY`,`CONFIG_LANGUAGE_CODE_KEY`),
  KEY `INDX_REF_COUNTRY_ISO_1` (`KEY`),
  KEY `INDX_REF_COUNTRY_ISO_2` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.ref_country_iso: ~247 rows (approximately)
/*!40000 ALTER TABLE `ref_country_iso` DISABLE KEYS */;
INSERT INTO `ref_country_iso` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `CONFIG_LANGUAGE_CODE_KEY`, `KEY`, `VALUE`, `DESCRIPTION`) VALUES
	('1', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '4', 'AFG', 'Afghanistan'),
	('10', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '32', 'ARG', 'Argentina'),
	('100', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '344', 'HKG', 'Hong Kong, SAR China'),
	('101', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '348', 'HUN', 'Hungary'),
	('102', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '352', 'ISL', 'Iceland'),
	('103', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '356', 'IND', 'India'),
	('104', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '360', 'IDN', 'Indonesia'),
	('105', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '364', 'IRN', 'Iran, Islamic Republic of'),
	('106', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '368', 'IRQ', 'Iraq'),
	('107', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '372', 'IRL', 'Ireland'),
	('108', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '376', 'ISR', 'Israel'),
	('109', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '380', 'ITA', 'Italy'),
	('11', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '36', 'AUS', 'Australia'),
	('110', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '384', 'CIV', 'Cote dIvoire'),
	('111', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '388', 'JAM', 'Jamaica'),
	('112', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '392', 'JPN', 'Japan'),
	('113', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '398', 'KAZ', 'Kazakhstan'),
	('114', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '400', 'JOR', 'Jordan'),
	('115', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '404', 'KEN', 'Kenya'),
	('116', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '408', 'PRK', 'KoreaÃ‚Â (North)'),
	('117', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '410', 'KOR', 'KoreaÃ‚Â (South)'),
	('118', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '414', 'KWT', 'Kuwait'),
	('119', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '417', 'KGZ', 'Kyrgyzstan'),
	('12', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '40', 'AUT', 'Austria'),
	('120', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '418', 'LAO', 'Lao PDR'),
	('121', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '422', 'LBN', 'Lebanon'),
	('122', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '426', 'LSO', 'Lesotho'),
	('123', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '428', 'LVA', 'Latvia'),
	('124', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '430', 'LBR', 'Liberia'),
	('125', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '434', 'LBY', 'Libya'),
	('126', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '438', 'LIE', 'Liechtenstein'),
	('127', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '440', 'LTU', 'Lithuania'),
	('128', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '442', 'LUX', 'Luxembourg'),
	('129', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '446', 'MAC', 'Macao, SAR China'),
	('13', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '44', 'BHS', 'Bahamas'),
	('130', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '450', 'MDG', 'Madagascar'),
	('131', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '454', 'MWI', 'Malawi'),
	('132', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '458', 'MYS', 'Malaysia'),
	('133', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '462', 'MDV', 'Maldives'),
	('134', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '466', 'MLI', 'Mali'),
	('135', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '470', 'MLT', 'Malta'),
	('136', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '474', 'MTQ', 'Martinique'),
	('137', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '478', 'MRT', 'Mauritania'),
	('138', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '480', 'MUS', 'Mauritius'),
	('139', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '484', 'MEX', 'Mexico'),
	('14', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '48', 'BHR', 'Bahrain'),
	('140', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '492', 'MCO', 'Monaco'),
	('141', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '496', 'MNG', 'Mongolia'),
	('142', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '498', 'MDA', 'Moldova'),
	('143', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '499', 'MNE', 'Montenegro'),
	('144', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '500', 'MSR', 'Montserrat'),
	('145', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '504', 'MAR', 'Morocco'),
	('146', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '508', 'MOZ', 'Mozambique'),
	('147', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '512', 'OMN', 'Oman'),
	('148', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '516', 'NAM', 'Namibia'),
	('149', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '520', 'NRU', 'Nauru'),
	('15', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '50', 'BGD', 'Bangladesh'),
	('150', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '524', 'NPL', 'Nepal'),
	('151', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '528', 'NLD', 'Netherlands'),
	('152', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '530', 'ANT', 'Netherlands Antilles'),
	('153', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '533', 'ABW', 'Aruba'),
	('154', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '540', 'NCL', 'New Caledonia'),
	('155', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '548', 'VUT', 'Vanuatu'),
	('156', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '554', 'NZL', 'New Zealand'),
	('157', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '558', 'NIC', 'Nicaragua'),
	('158', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '562', 'NER', 'Niger'),
	('159', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '566', 'NGA', 'Nigeria'),
	('16', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '51', 'ARM', 'Armenia'),
	('160', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '570', 'NIU', 'Niue'),
	('161', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '574', 'NFK', 'Norfolk Island'),
	('162', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '578', 'NOR', 'Norway'),
	('163', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '580', 'MNP', 'Northern Mariana Islands'),
	('164', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '581', 'UMI', 'US Minor Outlying Islands'),
	('165', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '583', 'FSM', 'Micronesia, Federated States of'),
	('166', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '584', 'MHL', 'Marshall Islands'),
	('167', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '585', 'PLW', 'Palau'),
	('168', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '586', 'PAK', 'Pakistan'),
	('169', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '591', 'PAN', 'Panama'),
	('17', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '52', 'BRB', 'Barbados'),
	('170', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '598', 'PNG', 'Papua New Guinea'),
	('171', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '600', 'PRY', 'Paraguay'),
	('172', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '604', 'PER', 'Peru'),
	('173', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '608', 'PHL', 'Philippines'),
	('174', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '612', 'PCN', 'Pitcairn'),
	('175', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '616', 'POL', 'Poland'),
	('176', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '620', 'PRT', 'Portugal'),
	('177', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '624', 'GNB', 'Guinea-Bissau'),
	('178', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '626', 'TLS', 'Timor-Leste'),
	('179', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '630', 'PRI', 'Puerto Rico'),
	('18', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '56', 'BEL', 'Belgium'),
	('180', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '634', 'QAT', 'Qatar'),
	('181', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '638', 'REU', 'RÃƒÂ©union'),
	('182', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '642', 'ROU', 'Romania'),
	('183', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '643', 'RUS', 'Russian Federation'),
	('184', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '646', 'RWA', 'Rwanda'),
	('185', 0, '2018-04-16 18:27:17.000000', NULL, '2018-04-16 18:27:17.000000', 'admin', '000000', '1', '652', 'BLM', 'Saint-BarthÃƒÂ©lemy'),
	('186', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '654', 'SHN', 'Saint Helena'),
	('187', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '659', 'KNA', 'Saint Kitts and Nevis'),
	('188', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '660', 'AIA', 'Anguilla'),
	('189', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '662', 'LCA', 'Saint Lucia'),
	('19', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '60', 'BMU', 'Bermuda'),
	('190', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '663', 'MAF', 'Saint-Martin (French part)'),
	('191', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '666', 'SPM', 'Saint Pierre and Miquelon'),
	('192', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '670', 'VCT', 'Saint Vincent and Grenadines'),
	('193', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '674', 'SMR', 'San Marino'),
	('194', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '678', 'STP', 'Sao Tome and Principe'),
	('195', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '682', 'SAU', 'Saudi Arabia'),
	('196', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '686', 'SEN', 'Senegal'),
	('197', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '688', 'SRB', 'Serbia'),
	('198', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '690', 'SYC', 'Seychelles'),
	('199', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '694', 'SLE', 'Sierra Leone'),
	('2', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '8', 'ALB', 'Albania'),
	('20', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '64', 'BTN', 'Bhutan'),
	('200', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '702', 'SGP', 'Singapore'),
	('201', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '703', 'SVK', 'Slovakia'),
	('202', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '704', 'VNM', 'Viet Nam'),
	('203', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '705', 'SVN', 'Slovenia'),
	('204', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '706', 'SOM', 'Somalia'),
	('205', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '710', 'ZAF', 'South Africa'),
	('206', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '716', 'ZWE', 'Zimbabwe'),
	('207', 0, '2018-04-16 18:27:18.000000', NULL, '2018-04-16 18:27:18.000000', 'admin', '000000', '1', '724', 'ESP', 'Spain'),
	('208', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '728', 'SSD', 'South Sudan'),
	('209', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '732', 'ESH', 'Western Sahara'),
	('21', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '68', 'BOL', 'Bolivia'),
	('210', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '736', 'SDN', 'Sudan'),
	('211', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '740', 'SUR', 'Suriname'),
	('212', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '744', 'SJM', 'Svalbard and Jan Mayen Islands'),
	('213', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '748', 'SWZ', 'Swaziland'),
	('214', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '752', 'SWE', 'Sweden'),
	('215', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '756', 'CHE', 'Switzerland'),
	('216', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '760', 'SYR', 'Syrian Arab RepublicÃ‚Â (Syria)'),
	('217', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '762', 'TJK', 'Tajikistan'),
	('218', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '764', 'THA', 'Thailand'),
	('219', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '768', 'TGO', 'Togo'),
	('22', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '70', 'BIH', 'Bosnia and Herzegovina'),
	('220', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '772', 'TKL', 'Tokelau'),
	('221', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '776', 'TON', 'Tonga'),
	('222', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '780', 'TTO', 'Trinidad and Tobago'),
	('223', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '784', 'ARE', 'United Arab Emirates'),
	('224', 0, '2018-04-16 18:27:13.000000', NULL, '2018-04-16 18:27:13.000000', 'admin', '000000', '1', '788', 'TUN', 'Tunisia'),
	('225', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '792', 'TUR', 'Turkey'),
	('226', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '795', 'TKM', 'Turkmenistan'),
	('227', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '796', 'TCA', 'Turks and Caicos Islands'),
	('228', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '798', 'TUV', 'Tuvalu'),
	('229', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '800', 'UGA', 'Uganda'),
	('23', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '72', 'BWA', 'Botswana'),
	('230', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '804', 'UKR', 'Ukraine'),
	('231', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '807', 'MKD', 'Macedonia, Republic of'),
	('232', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '818', 'EGY', 'Egypt'),
	('233', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '826', 'GBR', 'United Kingdom'),
	('234', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '831', 'GGY', 'Guernsey'),
	('235', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '832', 'JEY', 'Jersey'),
	('236', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '833', 'IMN', 'Isle of Man'),
	('237', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '834', 'TZA', 'Tanzania, United Republic of'),
	('238', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '840', 'USA', 'United States of America'),
	('239', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '850', 'VIR', 'Virgin Islands, US'),
	('24', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '74', 'BVT', 'Bouvet Island'),
	('240', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '854', 'BFA', 'Burkina Faso'),
	('241', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '858', 'URY', 'Uruguay'),
	('242', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '860', 'UZB', 'Uzbekistan'),
	('243', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '862', 'VEN', 'VenezuelaÃ‚Â (Bolivarian Republic)'),
	('244', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '876', 'WLF', 'Wallis and Futuna Islands'),
	('245', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '882', 'WSM', 'Samoa'),
	('246', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '887', 'YEM', 'Yemen'),
	('247', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '894', 'ZMB', 'Zambia'),
	('25', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '76', 'BRA', 'Brazil'),
	('26', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '84', 'BLZ', 'Belize'),
	('27', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '86', 'IOT', 'British Indian Ocean Territory'),
	('28', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '90', 'SLB', 'Solomon Islands'),
	('29', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '92', 'VGB', 'British Virgin Islands'),
	('3', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '10', 'ATA', 'Antarctica'),
	('30', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '96', 'BRN', 'Brunei Darussalam'),
	('31', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '100', 'BGR', 'Bulgaria'),
	('32', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '104', 'MMR', 'Myanmar'),
	('33', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '108', 'BDI', 'Burundi'),
	('34', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '112', 'BLR', 'Belarus'),
	('35', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '116', 'KHM', 'Cambodia'),
	('36', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '120', 'CMR', 'Cameroon'),
	('37', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '124', 'CAN', 'Canada'),
	('38', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '132', 'CPV', 'Cape Verde'),
	('39', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '136', 'CYM', 'Cayman Islands'),
	('4', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '12', 'DZA', 'Algeria'),
	('40', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '140', 'CAF', 'Central African Republic'),
	('41', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '144', 'LKA', 'Sri Lanka'),
	('42', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '148', 'TCD', 'Chad'),
	('43', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '152', 'CHL', 'Chile'),
	('44', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '156', 'CHN', 'China'),
	('45', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '158', 'TWN', 'Taiwan, Republic of China'),
	('46', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '162', 'CXR', 'Christmas Island'),
	('47', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '166', 'CCK', 'Cocos (Keeling) Islands'),
	('48', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '170', 'COL', 'Colombia'),
	('49', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '174', 'COM', 'Comoros'),
	('5', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '16', 'ASM', 'American Samoa'),
	('50', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '175', 'MYT', 'Mayotte'),
	('51', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '178', 'COG', 'CongoÃ‚Â (Brazzaville)'),
	('52', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '180', 'COD', 'Congo, (Kinshasa)'),
	('53', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '184', 'COK', 'Cook Islands'),
	('54', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '188', 'CRI', 'Costa Rica'),
	('55', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '191', 'HRV', 'Croatia'),
	('56', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '192', 'CUB', 'Cuba'),
	('57', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '196', 'CYP', 'Cyprus'),
	('58', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '203', 'CZE', 'Czech Republic'),
	('59', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '204', 'BEN', 'Benin'),
	('6', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '20', 'AND', 'Andorra'),
	('60', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '208', 'DNK', 'Denmark'),
	('61', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '212', 'DMA', 'Dominica'),
	('62', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '214', 'DOM', 'Dominican Republic'),
	('63', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '218', 'ECU', 'Ecuador'),
	('64', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '222', 'SLV', 'El Salvador'),
	('65', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '226', 'GNQ', 'Equatorial Guinea'),
	('66', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '231', 'ETH', 'Ethiopia'),
	('67', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '232', 'ERI', 'Eritrea'),
	('68', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '233', 'EST', 'Estonia'),
	('69', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '234', 'FRO', 'Faroe Islands'),
	('7', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '24', 'AGO', 'Angola'),
	('70', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '238', 'FLK', 'Falkland Islands (Malvinas)'),
	('71', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '239', 'SGS', 'South Georgia and the South Sandwich Islands'),
	('72', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '242', 'FJI', 'Fiji'),
	('73', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '246', 'FIN', 'Finland'),
	('74', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '248', 'ALA', 'Aland Islands'),
	('75', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '250', 'FRA', 'France'),
	('76', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '254', 'GUF', 'French Guiana'),
	('77', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '258', 'PYF', 'French Polynesia'),
	('78', 0, '2018-04-16 18:27:15.000000', NULL, '2018-04-16 18:27:15.000000', 'admin', '000000', '1', '260', 'ATF', 'French Southern Territories'),
	('79', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '262', 'DJI', 'Djibouti'),
	('8', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '28', 'ATG', 'Antigua and Barbuda'),
	('80', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '266', 'GAB', 'Gabon'),
	('81', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '268', 'GEO', 'Georgia'),
	('82', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '270', 'GMB', 'Gambia'),
	('83', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '275', 'PSE', 'Palestinian Territory'),
	('84', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '276', 'DEU', 'Germany'),
	('85', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '288', 'GHA', 'Ghana'),
	('86', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '292', 'GIB', 'Gibraltar'),
	('87', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '296', 'KIR', 'Kiribati'),
	('88', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '300', 'GRC', 'Greece'),
	('89', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '304', 'GRL', 'Greenland'),
	('9', 0, '2018-04-16 18:27:14.000000', NULL, '2018-04-16 18:27:14.000000', 'admin', '000000', '1', '31', 'AZE', 'Azerbaijan'),
	('90', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '308', 'GRD', 'Grenada'),
	('91', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '312', 'GLP', 'Guadeloupe'),
	('92', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '316', 'GUM', 'Guam'),
	('93', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '320', 'GTM', 'Guatemala'),
	('94', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '324', 'GIN', 'Guinea'),
	('95', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '328', 'GUY', 'Guyana'),
	('96', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '332', 'HTI', 'Haiti'),
	('97', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '334', 'HMD', 'Heard and Mcdonald Islands'),
	('98', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '336', 'VAT', 'Holy SeeÃ‚Â (Vatican City State)'),
	('99', 0, '2018-04-16 18:27:16.000000', NULL, '2018-04-16 18:27:16.000000', 'admin', '000000', '1', '340', 'HND', 'Honduras');
/*!40000 ALTER TABLE `ref_country_iso` ENABLE KEYS */;

-- Dumping structure for table yug_msp.ref_currency
CREATE TABLE IF NOT EXISTS `ref_currency` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin NOT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `REF_CURRENCY_UNIQUEKEY` (`KEY`,`CONFIG_LANGUAGE_CODE_KEY`),
  KEY `INDX_REF_CURRENCY_1` (`KEY`),
  KEY `INDX_REF_CURRENCY_2` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.ref_currency: ~132 rows (approximately)
/*!40000 ALTER TABLE `ref_currency` DISABLE KEYS */;
INSERT INTO `ref_currency` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `CONFIG_LANGUAGE_CODE_KEY`, `KEY`, `VALUE`, `DESCRIPTION`) VALUES
	('1', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '0', '00', 'UNDEFINED '),
	('10', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '60', 'BMD', 'BERMUDA DOLLAR '),
	('100', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '784', 'AED', 'U.A.E. DIRHAM '),
	('101', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '788', 'TND', 'TUNISIAN DINAR '),
	('102', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '792', 'TRL', 'TURKISH LIRA '),
	('103', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '800', 'UGX', 'UGANDA SHILLING '),
	('104', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '818', 'EGP', 'EGYPTIAN POUND '),
	('105', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '826', 'GBP', 'STERLING '),
	('106', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '834', 'TZS', 'TANZANIAN SHILLING '),
	('107', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '840', 'USD', 'UNITED STATES DOLLAR '),
	('108', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '858', 'UYU', 'URUGUAY PESO '),
	('109', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '860', 'UZS', 'UZBEKISTAN SUM '),
	('11', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '72', 'BWP', 'BOTSWANA PULA '),
	('110', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '862', 'VEB', 'VENEZUELAN BOLIVAR '),
	('111', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '894', 'ZMK', 'ZAMBIAN KWACHA '),
	('112', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '901', 'TWD', 'NEW TAIWAN DOLLAR '),
	('113', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '936', 'GHS', 'GHANA CEDI '),
	('114', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '941', 'RSD', 'SERBIAN DINAR '),
	('115', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '943', 'MZN', 'MOZAMBIQUE METICAL'),
	('116', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '946', 'RON', 'NEW ROMANIAN LEU '),
	('117', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '949', 'TRY', 'NEW TURKISH LIRA '),
	('118', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '950', 'XAF', 'CFA FRANC BEAC '),
	('119', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '951', 'XCD', 'E. CARIBBEAN DOLLAR '),
	('12', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '84', 'BZD', 'BELIZE DOLLAR '),
	('120', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '952', 'XOF', 'CFA FRANC BCEAO '),
	('121', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '959', 'XAU', 'GOLD '),
	('122', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '960', 'XDR', 'SPEC DRAWING RIGHTS '),
	('123', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '961', 'XAG', 'SILVER '),
	('124', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '967', 'ZMW', 'ZAMBIAN KWACHA'),
	('125', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '969', 'MGA', 'MADAGASGAR NEW FRANC '),
	('126', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '978', 'EUR', 'EURO '),
	('127', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '980', 'UAH', 'UKRAINE HRYVNIA '),
	('128', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '985', 'PLN', 'POLISH ZLOTY '),
	('129', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '986', 'BRL', 'BRAZILIAN REAL '),
	('13', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '100', 'BGL', 'BULGARIAN LEV '),
	('130', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '991', 'ZAL', 'S.A. FINANCIAL RAND '),
	('131', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '998', 'USS', 'USD SAFES '),
	('132', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '999', 'CNH', 'CHINESE YUAN RENMINBI'),
	('133', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '1000', 'SCH', 'AUSTRIAN SHILLING'),
	('14', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '104', 'MMK', 'MYANMA KYAT '),
	('15', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '124', 'CAD', 'CANADIAN DOLLAR '),
	('16', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '136', 'KYD', 'CAYMAN ISLES DOLLAR '),
	('17', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '144', 'LKR', 'SRI LANKA RUPEE '),
	('18', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '152', 'CLP', 'CHILEAN PESO '),
	('19', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '156', 'CNY', 'CHINESE RENMINBI '),
	('2', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '12', 'DZD', 'ALGERIAN DINAR '),
	('20', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '170', 'COP', 'COLOMBIAN PESO '),
	('21', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '188', 'CRC', 'COSTA RICAN COLON '),
	('22', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '190', 'SDF', 'EURO'),
	('23', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '191', 'HRK', 'CROATIA KUNA '),
	('24', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '196', 'CYP', 'CYPRUS POUND '),
	('25', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '203', 'CZK', 'CZECH KORUNA '),
	('26', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '208', 'DKK', 'DANISH KRONE '),
	('27', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '222', 'SVC', 'EL SALVADOR COLON '),
	('28', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '230', 'ETB', 'ETHIOPIAN BIRR '),
	('29', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '233', 'EEK', 'ESTONIA KROON '),
	('3', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '32', 'ARS', 'ARGENTINE PESO '),
	('30', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '242', 'FJD', 'FIJI DOLLAR '),
	('31', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '246', 'FIM', 'FINNISH MARKKA '),
	('32', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '250', 'FRF', 'FRENCH FRANC '),
	('33', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '262', 'DJF', 'DJIBOUTI FRANC '),
	('34', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '276', 'DEM', 'DEUTSCHE MARK '),
	('35', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '288', 'GHC', 'GHANA CEDI-OLD '),
	('36', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '292', 'GIP', 'GIBRALTAR POUND '),
	('37', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '300', 'GRD', 'GREEK DRACHMA '),
	('38', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '320', 'GTQ', 'GUATEMALA QUETZAL '),
	('39', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '328', 'GYD', 'GUYANA DOLLAR '),
	('4', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '36', 'AUD', 'AUSTRALIAN DOLLAR '),
	('40', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '340', 'HNL', 'HONDURAS LEMPIRA '),
	('41', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '344', 'HKD', 'HONG KONG DOLLAR '),
	('42', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '348', 'HUF', 'HUNGARIAN FORINT '),
	('43', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '352', 'ISK', 'ICELANDIC KRONA '),
	('44', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '356', 'INR', 'INDIAN RUPEE '),
	('45', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '360', 'IDR', 'INDONESIAN RUPIAH '),
	('46', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '364', 'IRR', 'IRANIAN RIAL '),
	('47', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '372', 'IEP', 'IRISH POUND '),
	('48', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '376', 'ILS', 'ISRAELI SHEQEL '),
	('49', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '380', 'ITL', 'ITALIAN LIRE '),
	('5', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '44', 'BSD', 'BAHAMAS DOLLAR '),
	('50', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '388', 'JMD', 'JAMAICAN DOLLAR '),
	('51', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '392', 'JPY', 'JAPANESE YEN '),
	('52', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '398', 'KZT', 'KAZAKHSTAN TENGE '),
	('53', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '400', 'JOD', 'JORDANIAN DINAR '),
	('54', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '404', 'KES', 'KENYAN SHILLING '),
	('55', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '410', 'KRW', 'KOREA WON '),
	('56', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '414', 'KWD', 'KUWAITI DINAR '),
	('57', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '426', 'LSL', 'LESOTHO LOTI '),
	('58', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '428', 'LVL', 'LATVIAN LATS '),
	('59', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '440', 'LTL', 'LITHUANIAN LITAS '),
	('6', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '48', 'BHD', 'BAHRAINI DINAR '),
	('60', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '450', 'MGF', 'MALAGASY FRANC '),
	('61', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '454', 'MWK', 'MALAWI KWACHA '),
	('62', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '458', 'MYR', 'MALAYSIAN RINGGIT '),
	('63', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '470', 'MTL', 'MALTESE LIRE '),
	('64', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '480', 'MUR', 'MAURITIUS RUPEE '),
	('65', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '484', 'MXN', 'MEXICAN PESO '),
	('66', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '504', 'MAD', 'MOROCCAN DIRHAM '),
	('67', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '508', 'MZM', 'MOZAMBIQUE METICAL-OLD '),
	('68', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '512', 'OMR', 'OMANI RIAL '),
	('69', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '516', 'NAD', 'NAMIBIA DOLLAR'),
	('7', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '50', 'BDT', 'BANGLADESH TAKA '),
	('70', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '528', 'NLG', 'DUTCH GUILDER '),
	('71', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '532', 'ANG', 'NETH ANTILLES FLORIN '),
	('72', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '533', 'AWG', 'ARUBA FLORIN '),
	('73', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '548', 'VUV', 'VANUATU VATU '),
	('74', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '554', 'NZD', 'NEW ZEALAND DOLLAR '),
	('75', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '566', 'NGN', 'NIGERIAN NAIRA '),
	('76', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '578', 'NOK', 'NORWEGIAN KRONE '),
	('77', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '586', 'PKR', 'PAKISTAN RUPEE '),
	('78', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '600', 'PYG', 'PARAGUAY GUARANI '),
	('79', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '604', 'PEN', 'PERU NUEVO SOL '),
	('8', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '52', 'BBD', 'BARBADOS DOLLAR '),
	('80', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '608', 'PHP', 'PHILIPPINE PESO '),
	('81', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '620', 'PTE', 'PORTUGUESE ESCUDO '),
	('82', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '634', 'QAR', 'QATAR RIAL '),
	('83', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '643', 'RUB', 'RUSSIAN ROUBLE '),
	('84', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '682', 'SAR', 'SAUDI ARABIAN RIYAL '),
	('85', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '690', 'SCR', 'SEYCHELLES RUPEE '),
	('86', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '694', 'SLL', 'SIERRA LEONE LEONE '),
	('87', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '702', 'SGD', 'SINGAPORE DOLLAR '),
	('88', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '703', 'SKK', 'SLOVAKIAN KORUNA '),
	('89', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '704', 'VND', 'VIETNAM DONG '),
	('9', 0, '2018-04-16 17:59:55.000000', NULL, '2018-04-16 17:59:55.000000', 'admin', '000000', '1', '56', 'BEF', 'BELGIAN FRANC '),
	('90', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '705', 'SIT', 'SLOVENIAN TOLAR '),
	('91', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '710', 'ZAR', 'SOUTH AFRICAN RAND '),
	('92', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '716', 'ZWD', 'ZIMBABWE DOLLAR '),
	('93', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '724', 'ESP', 'SPANISH PESETA '),
	('94', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '748', 'SZL', 'SWAZILAND LILANGENI '),
	('95', 0, '2018-04-16 17:59:56.000000', NULL, '2018-04-16 17:59:56.000000', 'admin', '000000', '1', '752', 'SEK', 'SWEDISH KRONA '),
	('96', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '756', 'CHF', 'SWISS FRANC '),
	('97', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '760', 'SYP', 'SYRIAN POUND '),
	('98', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '764', 'THB', 'THAILAND BAHTS '),
	('99', 0, '2018-04-16 17:59:57.000000', NULL, '2018-04-16 17:59:57.000000', 'admin', '000000', '1', '780', 'TTD', 'TRINIDAD DOLLAR ');
/*!40000 ALTER TABLE `ref_currency` ENABLE KEYS */;

-- Dumping structure for table yug_msp.ref_language_code
CREATE TABLE IF NOT EXISTS `ref_language_code` (
  `ID_PK` varchar(50) COLLATE utf8_bin NOT NULL,
  `VERSION` decimal(22,0) NOT NULL,
  `CREATED_TS` datetime(6) NOT NULL,
  `DELETED_TS` datetime(6) DEFAULT NULL,
  `UPDATED_TS` datetime(6) NOT NULL,
  `UPDATED_BY_USER` varchar(50) COLLATE utf8_bin NOT NULL,
  `UPDATED_BY_TXN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CONFIG_LANGUAGE_CODE_KEY` varchar(50) COLLATE utf8_bin NOT NULL,
  `KEY` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `VALUE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_PK`),
  UNIQUE KEY `REF_LANGUAGE_CODE_UNIQUEKEY` (`KEY`,`CONFIG_LANGUAGE_CODE_KEY`),
  KEY `INDX_REF_LANGUAGE_CODE_1` (`KEY`),
  KEY `INDX_REF_LANGUAGE_CODE_2` (`VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table yug_msp.ref_language_code: ~1 rows (approximately)
/*!40000 ALTER TABLE `ref_language_code` DISABLE KEYS */;
INSERT INTO `ref_language_code` (`ID_PK`, `VERSION`, `CREATED_TS`, `DELETED_TS`, `UPDATED_TS`, `UPDATED_BY_USER`, `UPDATED_BY_TXN_ID`, `CONFIG_LANGUAGE_CODE_KEY`, `KEY`, `VALUE`, `DESCRIPTION`) VALUES
	('1', 0, '2017-07-04 17:54:20.000000', NULL, '2017-07-04 17:54:20.000000', 'admin', '000000', '1', '1', 'ENGLISH', 'English Language');
/*!40000 ALTER TABLE `ref_language_code` ENABLE KEYS */;

-- Dumping structure for trigger yug_msp.D_AUTH_ROLES_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_AUTH_ROLES_REGISTRY` AFTER DELETE ON `auth_roles_registry` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_ROLES_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, ROLE_NAME, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.ROLE_NAME,  OLD.DESCRIPTION ); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_AUTH_USERROLE_ACCESSCONTROL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_AUTH_USERROLE_ACCESSCONTROL` AFTER DELETE ON `auth_userrole_accesscontrol` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USERROLE_ACCESSCONTROL ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, PROFILE_TYPE, AUTH_USER_ROLE_REGISTRY_IDPK, CONFIG_TXN_REGISTRY_IDPK, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.PROFILE_TYPE,  OLD.AUTH_USER_ROLE_REGISTRY_IDPK,  OLD.CONFIG_TXN_REGISTRY_IDPK,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_AUTH_USER_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_AUTH_USER_REGISTRY` AFTER DELETE ON `auth_user_registry` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USER_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, USER_NAME, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.USER_NAME,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_AUTH_USER_ROLE_ASSOC
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_AUTH_USER_ROLE_ASSOC` AFTER DELETE ON `auth_user_role_assoc` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USER_ROLE_ASSOC ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, AUTH_USER_REGISTRY_IDPK, AUTH_ROLES_REGISTRY_IDPK, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.AUTH_USER_REGISTRY_IDPK,  OLD.AUTH_ROLES_REGISTRY_IDPK,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_CONFIG_APP_PROPERTIES
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_CONFIG_APP_PROPERTIES` AFTER DELETE ON `config_app_properties` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_APP_PROPERTIES ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, `KEY`, VALUE, VALUE_DEFAULT, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.KEY,  OLD.VALUE,  OLD.VALUE_DEFAULT,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_CONFIG_ERRORCODE_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_CONFIG_ERRORCODE_REGISTRY` AFTER DELETE ON `config_errorcode_registry` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_ERRORCODE_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CONFIG_LANGUAGE_CODE_KEY, ERROR_CODE, ERROR_MESSAGE, DESCRIPTION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CONFIG_LANGUAGE_CODE_KEY,  OLD.ERROR_CODE,  OLD.ERROR_MESSAGE,  OLD.DESCRIPTION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_CONFIG_LANGUAGE_CODE
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_CONFIG_LANGUAGE_CODE` AFTER DELETE ON `config_language_code` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_LANGUAGE_CODE ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.KEY,  OLD.VALUE,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_CONFIG_TXN_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_CONFIG_TXN_REGISTRY` AFTER DELETE ON `config_txn_registry` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_TXN_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, TXNSERVICE_NAME, TXNSERVICE_CLASS, TXNSERVICE_CLASSMETHOD, DESCRIPTION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_TXN_REF_ID ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.TXNSERVICE_NAME,  OLD.TXNSERVICE_CLASS,  OLD.TXNSERVICE_CLASSMETHOD,  OLD.DESCRIPTION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_TXN_REF_ID); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_REF_COUNTRY_ISO
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_REF_COUNTRY_ISO` AFTER DELETE ON `ref_country_iso` FOR EACH ROW BEGIN INSERT INTO AL_REF_COUNTRY_ISO ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.CONFIG_LANGUAGE_CODE_KEY,  OLD.KEY,  OLD.VALUE,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_REF_CURRENCY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_REF_CURRENCY` AFTER DELETE ON `ref_currency` FOR EACH ROW BEGIN INSERT INTO AL_REF_CURRENCY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.CONFIG_LANGUAGE_CODE_KEY,  OLD.KEY,  OLD.VALUE,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.D_REF_LANGUAGE_CODE
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `D_REF_LANGUAGE_CODE` AFTER DELETE ON `ref_language_code` FOR EACH ROW BEGIN INSERT INTO AL_REF_LANGUAGE_CODE ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.CONFIG_LANGUAGE_CODE_KEY,  OLD.KEY,  OLD.VALUE,  OLD.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_AUTH_ROLES_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_AUTH_ROLES_REGISTRY` AFTER INSERT ON `auth_roles_registry` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_ROLES_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, ROLE_NAME, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.ROLE_NAME, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_AUTH_USERROLE_ACCESSCONTROL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_AUTH_USERROLE_ACCESSCONTROL` AFTER INSERT ON `auth_userrole_accesscontrol` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USERROLE_ACCESSCONTROL ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, PROFILE_TYPE, AUTH_USER_ROLE_REGISTRY_IDPK, CONFIG_TXN_REGISTRY_IDPK, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.PROFILE_TYPE, NEW.AUTH_USER_ROLE_REGISTRY_IDPK, NEW.CONFIG_TXN_REGISTRY_IDPK, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_AUTH_USER_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_AUTH_USER_REGISTRY` AFTER INSERT ON `auth_user_registry` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USER_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, USER_NAME, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.USER_NAME, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_AUTH_USER_ROLE_ASSOC
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_AUTH_USER_ROLE_ASSOC` AFTER INSERT ON `auth_user_role_assoc` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USER_ROLE_ASSOC ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, AUTH_USER_REGISTRY_IDPK, AUTH_ROLES_REGISTRY_IDPK, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.AUTH_USER_REGISTRY_IDPK, NEW.AUTH_ROLES_REGISTRY_IDPK, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_CONFIG_APP_PROPERTIES
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_CONFIG_APP_PROPERTIES` AFTER INSERT ON `config_app_properties` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_APP_PROPERTIES ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, `KEY`, VALUE, VALUE_DEFAULT, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.KEY, NEW.VALUE, NEW.VALUE_DEFAULT, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_CONFIG_ERRORCODE_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_CONFIG_ERRORCODE_REGISTRY` AFTER INSERT ON `config_errorcode_registry` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_ERRORCODE_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CONFIG_LANGUAGE_CODE_KEY, ERROR_CODE, ERROR_MESSAGE, DESCRIPTION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.ERROR_CODE, NEW.ERROR_MESSAGE, NEW.DESCRIPTION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_CONFIG_LANGUAGE_CODE
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_CONFIG_LANGUAGE_CODE` AFTER INSERT ON `config_language_code` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_LANGUAGE_CODE ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_CONFIG_TXN_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_CONFIG_TXN_REGISTRY` AFTER INSERT ON `config_txn_registry` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_TXN_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, TXNSERVICE_NAME, TXNSERVICE_CLASS, TXNSERVICE_CLASSMETHOD, DESCRIPTION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_TXN_REF_ID ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.TXNSERVICE_NAME, NEW.TXNSERVICE_CLASS, NEW.TXNSERVICE_CLASSMETHOD, NEW.DESCRIPTION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_TXN_REF_ID); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_REF_COUNTRY_ISO
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_REF_COUNTRY_ISO` AFTER INSERT ON `ref_country_iso` FOR EACH ROW BEGIN INSERT INTO AL_REF_COUNTRY_ISO ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_REF_CURRENCY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_REF_CURRENCY` AFTER INSERT ON `ref_currency` FOR EACH ROW BEGIN INSERT INTO AL_REF_CURRENCY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.I_REF_LANGUAGE_CODE
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `I_REF_LANGUAGE_CODE` AFTER INSERT ON `ref_language_code` FOR EACH ROW BEGIN INSERT INTO AL_REF_LANGUAGE_CODE ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_AUTH_ROLES_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_AUTH_ROLES_REGISTRY` AFTER UPDATE ON `auth_roles_registry` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_ROLES_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, ROLE_NAME, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.ROLE_NAME, NEW.DESCRIPTION ); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_AUTH_USERROLE_ACCESSCONTROL
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_AUTH_USERROLE_ACCESSCONTROL` AFTER UPDATE ON `auth_userrole_accesscontrol` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USERROLE_ACCESSCONTROL ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, PROFILE_TYPE, AUTH_USER_ROLE_REGISTRY_IDPK, CONFIG_TXN_REGISTRY_IDPK, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.PROFILE_TYPE, NEW.AUTH_USER_ROLE_REGISTRY_IDPK, NEW.CONFIG_TXN_REGISTRY_IDPK, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_AUTH_USER_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_AUTH_USER_REGISTRY` AFTER UPDATE ON `auth_user_registry` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USER_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, USER_NAME, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.USER_NAME, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_AUTH_USER_ROLE_ASSOC
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_AUTH_USER_ROLE_ASSOC` AFTER UPDATE ON `auth_user_role_assoc` FOR EACH ROW BEGIN INSERT INTO AL_AUTH_USER_ROLE_ASSOC ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, AUTH_USER_REGISTRY_IDPK, AUTH_ROLES_REGISTRY_IDPK, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.AUTH_USER_REGISTRY_IDPK, NEW.AUTH_ROLES_REGISTRY_IDPK, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_CONFIG_APP_PROPERTIES
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_CONFIG_APP_PROPERTIES` AFTER UPDATE ON `config_app_properties` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_APP_PROPERTIES ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, `KEY`, VALUE, VALUE_DEFAULT, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.KEY, NEW.VALUE, NEW.VALUE_DEFAULT, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_CONFIG_ERRORCODE_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_CONFIG_ERRORCODE_REGISTRY` AFTER UPDATE ON `config_errorcode_registry` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_ERRORCODE_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CONFIG_LANGUAGE_CODE_KEY, ERROR_CODE, ERROR_MESSAGE, DESCRIPTION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.ERROR_CODE, NEW.ERROR_MESSAGE, NEW.DESCRIPTION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_CONFIG_LANGUAGE_CODE
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_CONFIG_LANGUAGE_CODE` AFTER UPDATE ON `config_language_code` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_LANGUAGE_CODE ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_CONFIG_TXN_REGISTRY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_CONFIG_TXN_REGISTRY` AFTER UPDATE ON `config_txn_registry` FOR EACH ROW BEGIN INSERT INTO AL_CONFIG_TXN_REGISTRY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, TXNSERVICE_NAME, TXNSERVICE_CLASS, TXNSERVICE_CLASSMETHOD, DESCRIPTION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_TXN_REF_ID ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.TXNSERVICE_NAME, NEW.TXNSERVICE_CLASS, NEW.TXNSERVICE_CLASSMETHOD, NEW.DESCRIPTION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_TXN_REF_ID); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_REF_COUNTRY_ISO
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_REF_COUNTRY_ISO` AFTER UPDATE ON `ref_country_iso` FOR EACH ROW BEGIN INSERT INTO AL_REF_COUNTRY_ISO ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_REF_CURRENCY
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_REF_CURRENCY` AFTER UPDATE ON `ref_currency` FOR EACH ROW BEGIN INSERT INTO AL_REF_CURRENCY ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger yug_msp.U_REF_LANGUAGE_CODE
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `U_REF_LANGUAGE_CODE` AFTER UPDATE ON `ref_language_code` FOR EACH ROW BEGIN INSERT INTO AL_REF_LANGUAGE_CODE ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, CONFIG_LANGUAGE_CODE_KEY, `KEY`, VALUE, DESCRIPTION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.CONFIG_LANGUAGE_CODE_KEY, NEW.KEY, NEW.VALUE, NEW.DESCRIPTION); END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

CREATE SEQUENCE YUG_ERRORCODE_SEQ
  START WITH 100000
  MAXVALUE 1000000
  MINVALUE 1;


CREATE SEQUENCE YUG_REGISTRY_SEQ
  START WITH 100000
  MAXVALUE 1000000
  MINVALUE 1;
