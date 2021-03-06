USE DGS_DATA
CREATE TABLE dbo.BOOKMARKS_S
(
    BOOKMARK_ID          decimal(20),
    CONTROL_TIMESTAMP    datetime,
    BOOKMARK_TYPE        nvarchar(30),
    BATCH_CODE           float,
    PROCESSING_DATE      datetime,
    LINKING_DATE         datetime,
    REPORTING_ENTITY_ID  decimal(4),
    FISCAL_YEAR          decimal(4),
    ACCOUNTING_PERIOD    decimal(3),
    CURRENT_FLAG         nvarchar(1),
    SIGN_OFF_STATUS      nvarchar(64),
    SIGN_OFF_STATUS_DATE datetime,
    LOAD_DTS             datetime2,
    DELIVERY_SQN         decimal(22)
);
