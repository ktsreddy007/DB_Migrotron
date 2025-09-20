CREATE TABLE [dbo].[BranchMaster](
	[BRCH] [float] NOT NULL,
	[NAME] [nvarchar](255) NOT NULL,
	[HEAD] [nvarchar](40) NULL,
	[HEAD_CODE] [float] NULL,
	[HRD_CORD] [bigint] NULL,
	[STATE] [nvarchar](55) NULL,
	[REGNCD] [float] NULL,
	[INDEX] [nvarchar](7) NULL,
	[RES] [nvarchar](2) NULL,
	[REGCD] [float] NULL,
	[REGNNAME] [nvarchar](30) NULL,
	[REPBR] [nvarchar](5) NULL,
	[ADD1] [nvarchar](100) NULL,
	[ADD2] [nvarchar](100) NULL,
	[ADD3] [nvarchar](100) NULL,
	[ADD4] [nvarchar](100) NULL,
	[PIN] [float] NULL,
	[STATECODE] [float] NULL,
	[ESI] [nvarchar](2) NULL,
	[CLASS] [nvarchar](2) NULL,
	[STD] [nvarchar](10) NULL,
	[PHONE] [nvarchar](30) NULL,
	[RIM] [nvarchar](20) NULL,
	[RESPHONE] [float] NULL,
	[DTCOMM] [smalldatetime] NULL,
	[ESICODE] [nvarchar](15) NULL,
	[Status] [varchar](20) NULL,
	[Zone] [nvarchar](15) NULL,
	[Brname] [nvarchar](60) NULL,
	[Area] [nvarchar](100) NULL,
	[Cluster] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[SHORTCODE] [nvarchar](10) NULL,
	[Biometric] [varchar](1) NULL,
	[BioStDt] [date] NULL,
	[AddedByUserId] [bigint] NULL,
	[AddedOn] [datetime] NULL,
	[ModifiedByUserId] [bigint] NULL,
	[ModifiedOn] [datetime] NULL,
	[District] [nvarchar](100) NULL,
 CONSTRAINT [PK_BRMAST] PRIMARY KEY CLUSTERED 
(
	[BRCH] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BranchMaster] ADD  DEFAULT (getdate()) FOR [AddedOn]
GO

ALTER TABLE [dbo].[BranchMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO


