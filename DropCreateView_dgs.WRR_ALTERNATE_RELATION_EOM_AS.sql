USE DGS_DATA;
DROP VIEW IF EXISTS [dgs].[WRR_ALTERNATE_RELATION_EOM_AS];

CREATE VIEW
    dgs.WRR_ALTERNATE_RELATION_EOM_AS
    (
        DELIVERY_SQN,
        ACT_DTS,
        PREV_ACT_DTS,
        LOAD_DTS,
        NON_FINANCIAL_CLOSE_DATE,
        ALT_SOURCE_SYS_CODE,
        ALTERNATE_RELATION_ID,
        CONTROL_DELIVERY_CODE,
        RELATION_ID,
        SEQUENCE_ID,
        SOURCE_CODE,
        STI_LOAD_DTS,
	BOOKMARK_ID
    ) AS
WITH
    Valid_SQN
    (
        F_DELIVERY_SQN
    ) AS
    (
        SELECT
            DELIVERY_SQN
        FROM
            dbo.Fn_DeliveriesShown('WRR_ALTERNATE_RELATION_EOM_AS',
            (
                SELECT DISTINCT
                    DELIVERY_SQN
                FROM
                    dbo.WRR_ALTERNATE_RELATION_EOM_AS T (NOLOCK) FOR XML AUTO))
    )
SELECT
    [DELIVERY_SQN            ] ,
    [ACT_DTS                 ] ,
    [PREV_ACT_DTS            ] ,
    [LOAD_DTS                ] ,
    [NON_FINANCIAL_CLOSE_DATE] ,
    [ALT_SOURCE_SYS_CODE     ] ,
    [ALTERNATE_RELATION_ID   ] ,
    [CONTROL_DELIVERY_CODE   ] ,
    [RELATION_ID             ] ,
    [SEQUENCE_ID             ] ,
    [SOURCE_CODE             ] ,
    [STI_LOAD_DTS            ] ,
    [BOOKMARK_ID]
FROM
    [dbo].[WRR_ALTERNATE_RELATION_EOM_AS] (NOLOCK)
INNER JOIN
    Valid_SQN
ON
    F_DELIVERY_SQN=DELIVERY_SQN ;