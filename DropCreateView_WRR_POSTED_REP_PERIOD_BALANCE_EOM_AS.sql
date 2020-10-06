USE DGS_DATA;
DROP VIEW [dgs].[WRR_POSTED_REP_PERIOD_BALANCE_EOM_AS];

CREATE VIEW
    dgs.WRR_POSTED_REP_PERIOD_BALANCE_EOM_AS
    (
        DELIVERY_SQN,
        ACT_DTS,
        PREV_ACT_DTS,
        LOAD_DTS,
        NON_FINANCIAL_CLOSE_DATE,
        ACCOUNT_CODE_1001,
        ACCOUNT_CODE_5028,
        ACCOUNT_CODE,
        ACCOUNTING_PERIOD,
        AMOUNT_TYPE,
        BASE_CURRENCY_CODE,
        BASE_MTD_AMOUNT,
        BASE_YTD_AMOUNT,
        BOOK_CODE,
        BUSINESS_DATE,
        BUSINESS_UNIT_AFFILIATE_CODE,
        BUSINESS_UNIT_CODE,
        CLASS_CODE,
        DER_BU_AFFILIATE_CODE,
        DER_DRAWN_FACILITY_ID,
        DER_FACILITY_ID,
        DER_INSTRUMENT_ID,
        DER_OU_AFFILIATE_CODE,
        DER_RELATION_ID,
        DER_TRADE_REFERENCE_ID,
        DER_UNDERLYING_INSTRUMENT_ID,
        FA_BASE_CURRENCY_CODE,
        FA_BASE_YTD_AMOUNT,
        FISCAL_YEAR,
        FOREIGN_CURRENCY_CODE,
        FOREIGN_MTD_AMOUNT,
        FOREIGN_MTD_CR_AMOUNT,
        FOREIGN_MTD_DB_AMOUNT,
        FOREIGN_YTD_AMOUNT,
        FX_SWAP_LEG_TYPE_CODE,
        LEDGER_CODE,
        OPERATING_UNIT_AFFILIATE_CODE,
        OPERATING_UNIT_CODE,
        PRODUCT_CODE,
        PROJECT_ID,
        RELATION_ID,
        REPORTING_ENTITY,
        SEQUENCE_ID,
        SOURCE,
        TRADE_REFERENCE_ID,
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
            dbo.Fn_DeliveriesShown('WRR_POSTED_REP_PERIOD_BALANCE_EOM_AS',
            (
                SELECT DISTINCT
                    DELIVERY_SQN
                FROM
                    dbo.WRR_POSTED_REP_PERIOD_BALANCE_EOM_AS T (NOLOCK) FOR XML AUTO))
    )
SELECT
    [DELIVERY_SQN                 ] ,
    [ACT_DTS                      ] ,
    [PREV_ACT_DTS                 ] ,
    [LOAD_DTS                     ] ,
    [NON_FINANCIAL_CLOSE_DATE     ] ,
    [ACCOUNT_CODE_1001            ] ,
    [ACCOUNT_CODE_5028            ] ,
    [ACCOUNT_CODE                 ] ,
    [ACCOUNTING_PERIOD            ] ,
    [AMOUNT_TYPE                  ] ,
    [BASE_CURRENCY_CODE           ] ,
    [BASE_MTD_AMOUNT              ] ,
    [BASE_YTD_AMOUNT              ] ,
    [BOOK_CODE                    ] ,
    [BUSINESS_DATE                ] ,
    [BUSINESS_UNIT_AFFILIATE_CODE ] ,
    [BUSINESS_UNIT_CODE           ] ,
    [CLASS_CODE                   ] ,
    [DER_BU_AFFILIATE_CODE        ] ,
    [DER_DRAWN_FACILITY_ID        ] ,
    [DER_FACILITY_ID              ] ,
    [DER_INSTRUMENT_ID            ] ,
    [DER_OU_AFFILIATE_CODE        ] ,
    [DER_RELATION_ID              ] ,
    [DER_TRADE_REFERENCE_ID       ] ,
    [DER_UNDERLYING_INSTRUMENT_ID ] ,
    [FA_BASE_CURRENCY_CODE        ] ,
    [FA_BASE_YTD_AMOUNT           ] ,
    [FISCAL_YEAR                  ] ,
    [FOREIGN_CURRENCY_CODE        ] ,
    [FOREIGN_MTD_AMOUNT           ] ,
    [FOREIGN_MTD_CR_AMOUNT        ] ,
    [FOREIGN_MTD_DB_AMOUNT        ] ,
    [FOREIGN_YTD_AMOUNT           ] ,
    [FX_SWAP_LEG_TYPE_CODE        ] ,
    [LEDGER_CODE                  ] ,
    [OPERATING_UNIT_AFFILIATE_CODE] ,
    [OPERATING_UNIT_CODE          ] ,
    [PRODUCT_CODE                 ] ,
    [PROJECT_ID                   ] ,
    [RELATION_ID                  ] ,
    [REPORTING_ENTITY             ] ,
    [SEQUENCE_ID                  ] ,
    [SOURCE                       ] ,
    [TRADE_REFERENCE_ID           ] ,
    [STI_LOAD_DTS                 ] ,
	[BOOKMARK_ID]
FROM
    [dbo].[WRR_POSTED_REP_PERIOD_BALANCE_EOM_AS] (NOLOCK)
INNER JOIN
    Valid_SQN
ON
    F_DELIVERY_SQN=DELIVERY_SQN ;