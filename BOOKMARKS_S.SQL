﻿
USE DGS_DATA
drop TABLE dbo.BOOKMARKS_S
CREATE TABLE
    dbo.BOOKMARKS_S
    (
        BOOKMARK_ID DECIMAL(20,0),
        CONTROL_TIMESTAMP DATETIME,
        BOOKMARK_TYPE NVARCHAR(30) COLLATE Latin1_General_100_BIN,
        BATCH_CODE FLOAT(53),
        PROCESSING_DATE DATETIME,
        LINKING_DATE DATETIME,
        REPORTING_ENTITY_ID DECIMAL(4,0),
        FISCAL_YEAR DECIMAL(4,0),
        ACCOUNTING_PERIOD DECIMAL(3,0),
        CURRENT_FLAG NVARCHAR(1) COLLATE Latin1_General_100_BIN,
        SIGN_OFF_STATUS NVARCHAR(64) COLLATE Latin1_General_100_BIN,
        SIGN_OFF_STATUS_DATE DATETIME,
        LOAD_DTS DATETIME2,
        DELIVERY_SQN DECIMAL(22,0),
        ACT_DTS DATETIME2
    );
