USE DGS_DATA
Go


/****** Object:  View [dgs].[CARD_AC_DATA_DS]     ******/
DROP VIEW IF EXISTS [dgs].[CARD_AC_DATA_DS]
GO

CREATE VIEW
    dgs.CARD_AC_DATA_DS
    (
        DELIVERY_SQN,
        CARD_AC_REF_ID,
        CARD_AC_PD_CODE,
        CARD_AC_PD_DSC,
        CARD_AC_TP_CODE,
        CARD_AC_AGRM_REF_ID,
        CARD_PRIM_ID_NO_LAST_4_DGTS,
        CARD_TP_CODE,
        CARDHDR_IBAN,
        CARD_AC_CR_LMT_EC_AMT,
        CARD_AC_EC_BAL,
        CARD_AC_RSRV_AUTH_EC_AMT,
        CARD_AC_RSRV_AUTH_FEE_EC_AMT,
        CARD_AC_AVL_EC_BAL,
        CARD_AC_ISO_N3_CCY_CODE,
        CARD_AC_ISO_A3_CCY_CODE,
        CARD_AC_ST_CODE,
        CARD_AC_ST_DSC,
        CARD_AC_CRT_DT,
        CARD_AC_ST_SET_DT,
        CC_AC_CYC_NO,
        CC_AC_CYC_STRT_DT,
        CC_AC_CYC_OPN_EC_BAL,
        CC_AC_CYC_CR_TXN_EC_TAMT,
        CC_AC_REPYMT_DT,
        CC_AC_REPYMT_EC_AMT,
        CC_AC_REPYMT_MTH_CODE,
        CARD_AC_INT_RATE_EFF_Y_PCT,
        CARD_AC_ACT_DTS,
        CARD_AC_LAST_UPD_DT,
        CARD_AC_LAST_UPD_TM,
        CARD_AC_BAL_DB_CR_CODE,
        CARAT_AMT_DB_CR_CODE,
        CARAT_FEE_AMT_DB_CR_CODE,
        CC_AC_CYC_OPN_BAL_DB_CR_CODE,
        CARD_AC_AVL_BAL_DB_CR_CODE,
        CC_ASC_NM_LN_1,
        CC_ASC_NM_LN_2,
        ACT_DTS,
        PREV_ACT_DTS,
        LOAD_DTS,
        DIH__PUBLICATION_INSTANCE_DATE
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
            dbo.Fn_DeliveriesShown('CARD_AC_DATA_DS',
            (
                SELECT DISTINCT
                    DELIVERY_SQN
                FROM
                    dbo.CARD_AC_DATA_DS T (NOLOCK) FOR XML AUTO))
    )
SELECT
        DELIVERY_SQN,
        CARD_AC_REF_ID,
        CARD_AC_PD_CODE,
        CARD_AC_PD_DSC,
        CARD_AC_TP_CODE,
        CARD_AC_AGRM_REF_ID,
        CARD_PRIM_ID_NO_LAST_4_DGTS,
        CARD_TP_CODE,
        CARDHDR_IBAN,
        CARD_AC_CR_LMT_EC_AMT,
        CARD_AC_EC_BAL,
        CARD_AC_RSRV_AUTH_EC_AMT,
        CARD_AC_RSRV_AUTH_FEE_EC_AMT,
        CARD_AC_AVL_EC_BAL,
        CARD_AC_ISO_N3_CCY_CODE,
        CARD_AC_ISO_A3_CCY_CODE,
        CARD_AC_ST_CODE,
        CARD_AC_ST_DSC,
        CARD_AC_CRT_DT,
        CARD_AC_ST_SET_DT,
        CC_AC_CYC_NO,
        CC_AC_CYC_STRT_DT,
        CC_AC_CYC_OPN_EC_BAL,
        CC_AC_CYC_CR_TXN_EC_TAMT,
        CC_AC_REPYMT_DT,
        CC_AC_REPYMT_EC_AMT,
        CC_AC_REPYMT_MTH_CODE,
        CARD_AC_INT_RATE_EFF_Y_PCT,
        CARD_AC_ACT_DTS,
        CARD_AC_LAST_UPD_DT,
        CARD_AC_LAST_UPD_TM,
        CARD_AC_BAL_DB_CR_CODE,
        CARAT_AMT_DB_CR_CODE,
        CARAT_FEE_AMT_DB_CR_CODE,
        CC_AC_CYC_OPN_BAL_DB_CR_CODE,
        CARD_AC_AVL_BAL_DB_CR_CODE,
        CC_ASC_NM_LN_1,
        CC_ASC_NM_LN_2,
        ACT_DTS,
        PREV_ACT_DTS,
        LOAD_DTS,
        DIH__PUBLICATION_INSTANCE_DATE
FROM
    dbo.CARD_AC_DATA_DS (NOLOCK)
INNER JOIN
    Valid_SQN
ON
    F_DELIVERY_SQN=DELIVERY_SQN ;
