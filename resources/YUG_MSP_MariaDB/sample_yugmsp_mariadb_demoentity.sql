/* data table ddl*/
CREATE TABLE YUG_MSP.FACILITYDEMO(
`ID_PK` VARCHAR(50) NOT NULL,
`VERSION` DECIMAL(22,0) NOT NULL,
`CREATED_TS` DATETIME(6) NOT NULL,
`DELETED_TS` DATETIME(6) NULL DEFAULT NULL,
`UPDATED_TS` DATETIME(6) NOT NULL,
`UPDATED_BY_USER` VARCHAR(50) NOT NULL ,
`UPDATED_BY_TXN_ID` VARCHAR(100) NULL DEFAULT NULL ,
`FACILITY_NAME` VARCHAR(100) NOT NULL ,
`LOCATION` VARCHAR(150) NULL DEFAULT NULL ,
PRIMARY KEY (`ID_PK`)
)
ENGINE=InnoDB
;

/* Audit log table ddl for base data table. This table stores the audit log history*/
CREATE TABLE YUG_MSP.AL_FACILITYDEMO(
`AUDITLOG_ID_PK` varchar(50) NOT NULL,
`AUDITLOG_CREATED_TS` datetime(6) NOT NULL,
`AUDITLOG_ACTION_CODE` varchar(1) NOT NULL,
`ID_PK` VARCHAR(50) NOT NULL,
`VERSION` DECIMAL(22,0) NOT NULL,
`CREATED_TS` DATETIME(6) NOT NULL,
`DELETED_TS` DATETIME(6) NULL DEFAULT NULL,
`UPDATED_TS` DATETIME(6) NOT NULL,
`UPDATED_BY_USER` VARCHAR(50) NOT NULL ,
`UPDATED_BY_TXN_ID` VARCHAR(100) NULL DEFAULT NULL ,
`FACILITY_NAME` VARCHAR(100) NOT NULL ,
`LOCATION` VARCHAR(150) NULL DEFAULT NULL ,
PRIMARY KEY (`AUDITLOG_ID_PK`)
)
ENGINE=InnoDB
;

/* Audit log triggers which will make entries in the AL_FACILITYDEMO table whenever FACILITYDEMO table is updated*/
DELIMITER //
CREATE TRIGGER `D_FACILITYDEMO` AFTER DELETE ON `FACILITYDEMO` FOR EACH ROW BEGIN INSERT INTO AL_FACILITYDEMO ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, FACILITY_NAME, LOCATION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'D',  OLD.ID_PK,  OLD.VERSION,  OLD.CREATED_TS,  OLD.DELETED_TS,  OLD.UPDATED_TS,  OLD.UPDATED_BY_USER,  OLD.UPDATED_BY_TXN_ID,  OLD.FACILITY_NAME,  OLD.LOCATION); END//
CREATE TRIGGER `I_FACILITYDEMO` AFTER INSERT ON `FACILITYDEMO` FOR EACH ROW BEGIN INSERT INTO AL_FACILITYDEMO ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, FACILITY_NAME, LOCATION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'I', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.FACILITY_NAME, NEW.LOCATION); END//
CREATE TRIGGER `U_FACILITYDEMO` AFTER UPDATE ON `FACILITYDEMO` FOR EACH ROW BEGIN INSERT INTO AL_FACILITYDEMO ( AUDITLOG_ID_PK, AUDITLOG_CREATED_TS, AUDITLOG_ACTION_CODE ,ID_PK, VERSION, CREATED_TS, DELETED_TS, UPDATED_TS, UPDATED_BY_USER, UPDATED_BY_TXN_ID, FACILITY_NAME, LOCATION ) VALUES( uuid(), CURRENT_TIMESTAMP(6) , 'U', NEW.ID_PK, NEW.VERSION, NEW.CREATED_TS, NEW.DELETED_TS, NEW.UPDATED_TS, NEW.UPDATED_BY_USER, NEW.UPDATED_BY_TXN_ID, NEW.FACILITY_NAME, NEW.LOCATION); END//

/*Rollback scripts
DROP TRIGGER `D_FACILITYDEMO`;
DROP TRIGGER `I_FACILITYDEMO`;
DROP TRIGGER `U_FACILITYDEMO`;
DROP table FACILITYDEMO;
drop table AL_FACILITYDEMO;
*/
