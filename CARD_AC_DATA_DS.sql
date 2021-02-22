USE [DGS_DATA]
GO

/****** Object:  Table [dbo].[CARD_AC_DATA_DS]    Script Date: 22-2-2021 11:33:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CARD_AC_DATA_DS](
	[DELIVERY_SQN] [decimal](15, 0) NOT NULL,
	[CARD_AC_REF_ID] [nvarchar](20) NULL,
	[CARD_AC_PD_CODE] [nvarchar](4) NULL,
	[CARD_AC_PD_DSC] [nvarchar](30) NULL,
	[CARD_AC_TP_CODE] [nvarchar](4) NULL,
	[CARD_AC_AGRM_REF_ID] [nvarchar](30) NULL,
	[CARD_PRIM_ID_NO_LAST_4_DGTS] [decimal](4, 0) NULL,
	[CARD_TP_CODE] [nvarchar](3) NULL,
	[CARDHDR_IBAN] [nvarchar](34) NULL,
	[CARD_AC_CR_LMT_EC_AMT] [decimal](18, 0) NULL,
	[CARD_AC_EC_BAL] [decimal](18, 0) NULL,
	[CARD_AC_RSRV_AUTH_EC_AMT] [decimal](18, 0) NULL,
	[CARD_AC_RSRV_AUTH_FEE_EC_AMT] [decimal](18, 0) NULL,
	[CARD_AC_AVL_EC_BAL] [decimal](18, 0) NULL,
	[CARD_AC_ISO_N3_CCY_CODE] [decimal](3, 0) NULL,
	[CARD_AC_ISO_A3_CCY_CODE] [nvarchar](3) NULL,
	[CARD_AC_ST_CODE] [nvarchar](4) NULL,
	[CARD_AC_ST_DSC] [nvarchar](30) NULL,
	[CARD_AC_CRT_DT] [date] NULL,
	[CARD_AC_ST_SET_DT] [date] NULL,
	[CC_AC_CYC_NO] [decimal](4, 0) NULL,
	[CC_AC_CYC_STRT_DT] [date] NULL,
	[CC_AC_CYC_OPN_EC_BAL] [decimal](18, 0) NULL,
	[CC_AC_CYC_CR_TXN_EC_TAMT] [decimal](18, 0) NULL,
	[CC_AC_REPYMT_DT] [date] NULL,
	[CC_AC_REPYMT_EC_AMT] [decimal](18, 0) NULL,
	[CC_AC_REPYMT_MTH_CODE] [nvarchar](4) NULL,
	[CARD_AC_INT_RATE_EFF_Y_PCT] [decimal](4, 2) NULL,
	[CARD_AC_ACT_DTS] [datetime2](7) NULL,
	[CARD_AC_LAST_UPD_DT] [date] NULL,
	[CARD_AC_LAST_UPD_TM] [time](7) NULL,
	[CARD_AC_BAL_DB_CR_CODE] [nvarchar](4) NULL,
	[CARAT_AMT_DB_CR_CODE] [nvarchar](4) NULL,
	[CARAT_FEE_AMT_DB_CR_CODE] [nvarchar](4) NULL,
	[CC_AC_CYC_OPN_BAL_DB_CR_CODE] [nvarchar](4) NULL,
	[CARD_AC_AVL_BAL_DB_CR_CODE] [nvarchar](4) NULL,
	[CC_ASC_NM_LN_1] [nvarchar](30) NULL,
	[CC_ASC_NM_LN_2] [nvarchar](30) NULL,
	[ACT_DTS] [datetime2](7) NOT NULL,
	[PREV_ACT_DTS] [datetime2](7) NULL,
	[LOAD_DTS] [datetime2](7) NOT NULL,
	[DIH__PUBLICATION_INSTANCE_DATE] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO


