/****** Object:  Table [dbo].[lEmpSession]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lEmpSession](
	[empSessionid] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[loginDateTime] [datetime] NOT NULL,
	[logoutDateTime] [datetime] NULL,
	[employeeIP] [varchar](20) NOT NULL,
	[browserDetail] [varchar](50) NULL,
	[sessionId] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[empSessionid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mCategory]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mCategory](
	[categoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryType] [varchar](100) NULL,
	[createdBy] [int] NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_mCategory] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mEmployeeDetails]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mEmployeeDetails](
	[employeeId] [int] IDENTITY(1,1) NOT NULL,
	[employeeSapId] [int] NOT NULL,
	[employeeName] [varchar](250) NOT NULL,
	[employeeContactNo] [varchar](15) NOT NULL,
	[employeeEmailId] [varchar](100) NOT NULL,
	[employeeAddress] [varchar](500) NOT NULL,
	[createdDate] [datetime] NOT NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[isNotificationRequired] [bit] NOT NULL,
	[isServiceRequired] [bit] NOT NULL,
	[isActive] [bit] NOT NULL,
	[locationId] [int] NULL,
	[createdBy] [int] NULL,
	[gender] [char](1) NULL,
 CONSTRAINT [PK_mEmployeeDetails] PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mLocation]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mLocation](
	[locationId] [int] IDENTITY(1,1) NOT NULL,
	[locationName] [varchar](100) NULL,
	[createdBy] [int] NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_mLocation] PRIMARY KEY CLUSTERED 
(
	[locationId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mNeedyUser]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mNeedyUser](
	[needyUserId] [int] IDENTITY(1,1) NOT NULL,
	[needyUserType] [varchar](100) NULL,
	[createdBy] [int] NULL,
	[craetedDate] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_mNeedyUser] PRIMARY KEY CLUSTERED 
(
	[needyUserId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mResponseType]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mResponseType](
	[responseTypeId] [int] IDENTITY(1,1) NOT NULL,
	[responseType] [varchar](10) NULL,
	[createdBy] [int] NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_mResponseType] PRIMARY KEY CLUSTERED 
(
	[responseTypeId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mSubCategory]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mSubCategory](
	[subCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NULL,
	[subCategoryName] [varchar](100) NULL,
	[createdBy] [int] NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_mSubCategory] PRIMARY KEY CLUSTERED 
(
	[subCategoryId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mSubCategoryChild]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mSubCategoryChild](
	[subCategoryChildID] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NULL,
	[subCategoryId] [int] NULL,
	[subCategoryChildName] [varchar](100) NULL,
	[createdBy] [int] NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_mSubCategoryChild] PRIMARY KEY CLUSTERED 
(
	[subCategoryChildID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tEmployeeRequest]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tEmployeeRequest](
	[requestId] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[subCategoryId] [int] NOT NULL,
	[subCategoryChildId] [int] NULL,
	[subCategoryChildOther] [varchar](100) NULL,
	[employeeId] [int] NOT NULL,
	[createdBy] [int] NULL,
	[createdDate] [datetime] NULL,
	[modifiedBy] [int] NULL,
	[modifiedDate] [datetime] NULL,
	[isActive] [bit] NULL,
	[locationId] [int] NOT NULL,
	[needyUserId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tEmployeeRequestBroadcast]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tEmployeeRequestBroadcast](
	[broadcastId] [int] IDENTITY(1,1) NOT NULL,
	[requestId] [int] NULL,
	[requestedToEmployeeId] [int] NULL,
	[isRequestSeen] [bit] NULL,
	[isResponded] [bit] NULL,
	[requestedBy] [int] NULL,
	[requestedDate] [datetime] NULL,
	[respondedBy] [int] NULL,
	[respondedDate] [datetime] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_tEmployeeRequestBroadcast] PRIMARY KEY CLUSTERED 
(
	[broadcastId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tRequestResponse]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tRequestResponse](
	[reqResponseId] [int] IDENTITY(1,1) NOT NULL,
	[responseTypeId] [int] NULL,
	[requestId] [int] NULL,
	[query] [varchar](500) NULL,
	[reply] [varchar](500) NULL,
	[responseBy] [int] NULL,
	[responseDate] [datetime] NULL,
	[repliedBy] [int] NULL,
	[repliedDate] [datetime] NULL,
	[isActive] [bit] NULL,
	[requestStatus] [int] NULL,
 CONSTRAINT [PK_tRequestResponse] PRIMARY KEY CLUSTERED 
(
	[reqResponseId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tUserOtp]    Script Date: 7/1/2021 6:27:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tUserOtp](
	[otpId] [int] IDENTITY(1,1) NOT NULL,
	[otpNumber] [varchar](20) NOT NULL,
	[otpFor] [varchar](20) NOT NULL,
	[isUsed] [bit] NOT NULL,
	[expiryDate] [datetime] NOT NULL,
	[createdBy] [int] NULL,
	[createdDate] [datetime] NULL,
	[isActive] [bit] NOT NULL,
	[usedBy] [int] NULL,
	[usedDate] [datetime] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[mCategory] ON 
GO
INSERT [dbo].[mCategory] ([categoryId], [categoryType], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (1, N'Health', NULL, CAST(N'2021-06-15T11:04:00.483' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mCategory] ([categoryId], [categoryType], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (2, N'Support', NULL, CAST(N'2021-06-15T11:05:09.047' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mCategory] ([categoryId], [categoryType], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (3, N'Other', NULL, CAST(N'2021-06-15T11:05:18.013' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[mCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[mEmployeeDetails] ON 
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (1, 51939483, N'Riya Rai', N'8090264585', N'riyarai0510@gmail.com', N'Aliganj Lucknow', CAST(N'2021-06-16T09:17:37.630' AS DateTime), NULL, NULL, 1, 1, 1, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (3, 51933221, N'Jayanti Jaiswal', N'8840791861', N'Jayanti.jaiswal@hcl.com', N'Varanasi', CAST(N'2021-06-16T09:19:09.430' AS DateTime), NULL, NULL, 1, 1, 1, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (4, 51932551, N'Pankhuri Bhatnagar', N'7007093297', N'pankhu.official4@gmail.com', N'Aashiana Lucknow', CAST(N'2021-06-16T09:22:42.440' AS DateTime), NULL, NULL, 1, 1, 1, 3, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (5, 51948218, N'Mohd Shumail ', N'9235790318', N'mohd.shumail@hcl.com', N'Lucknow', CAST(N'2021-06-16T10:55:22.847' AS DateTime), NULL, NULL, 1, 1, 1, 4, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (6, 51931246, N'Sneha Hasija', N'7007325747', N'hasijasneha1995@gmail.com', N'Address:OKMMT OTIJE', CAST(N'2021-06-23T12:43:32.897' AS DateTime), NULL, NULL, 1, 1, 1, 5, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (7, 51925925, N'Rohit Mishra', N'9265008687', N'rohittmv@gmail.com', N'Address:XLYPY TBSAH', CAST(N'2021-06-23T12:43:32.917' AS DateTime), NULL, NULL, 1, 1, 1, 6, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (8, 57800459, N'UXSIA YUIQG', N'3473454909', N'UXSIA@hcl.com', N'Address:UXSIA YUIQG', CAST(N'2021-06-23T12:43:32.923' AS DateTime), NULL, NULL, 1, 1, 1, 7, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (9, 79698688, N'CLEDH VQYKR', N'8807185628', N'CLEDH@hcl.com', N'Address:CLEDH VQYKR', CAST(N'2021-06-23T12:43:32.930' AS DateTime), NULL, NULL, 1, 1, 1, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (10, 34567481, N'OKYHY JOREB', N'2097115223', N'OKYHY@hcl.com', N'Address:OKYHY JOREB', CAST(N'2021-06-23T12:43:32.933' AS DateTime), NULL, NULL, 1, 1, 1, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (11, 69283094, N'OSMSI MBVXX', N'2101892259', N'OSMSI@hcl.com', N'Address:OSMSI MBVXX', CAST(N'2021-06-23T12:43:32.940' AS DateTime), NULL, NULL, 1, 1, 1, 3, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (12, 22494573, N'KDYIL EWBEW', N'1207214097', N'KDYIL@hcl.com', N'Address:KDYIL EWBEW', CAST(N'2021-06-23T12:43:32.950' AS DateTime), NULL, NULL, 1, 1, 1, 4, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (13, 73950647, N'KVBDL GYNAU', N'9510155930', N'KVBDL@hcl.com', N'Address:KVBDL GYNAU', CAST(N'2021-06-23T12:43:32.953' AS DateTime), NULL, NULL, 1, 1, 1, 5, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (14, 89004315, N'IAUHD UFVOI', N'7729172499', N'IAUHD@hcl.com', N'Address:IAUHD UFVOI', CAST(N'2021-06-23T12:43:32.960' AS DateTime), NULL, NULL, 1, 1, 1, 6, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (15, 25496292, N'COIYE NTJIW', N'6440398319', N'COIYE@hcl.com', N'Address:COIYE NTJIW', CAST(N'2021-06-23T12:43:32.967' AS DateTime), NULL, NULL, 1, 1, 1, 7, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (16, 25391206, N'OVDWD YTXTQ', N'9703328130', N'OVDWD@hcl.com', N'Address:OVDWD YTXTQ', CAST(N'2021-06-23T12:43:32.970' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (17, 38898807, N'AXPSQ VCERG', N'2007524071', N'AXPSQ@hcl.com', N'Address:AXPSQ VCERG', CAST(N'2021-06-23T12:43:32.977' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (18, 72870192, N'GMNUB MWMNH', N'4608115443', N'GMNUB@hcl.com', N'Address:GMNUB MWMNH', CAST(N'2021-06-23T12:43:32.983' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (19, 55577070, N'ABMBE JQACV', N'1443741713', N'ABMBE@hcl.com', N'Address:ABMBE JQACV', CAST(N'2021-06-23T12:43:32.990' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (20, 82048242, N'EJOXC UUJXX', N'9758853240', N'EJOXC@hcl.com', N'Address:EJOXC UUJXX', CAST(N'2021-06-23T12:43:32.993' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (21, 31096888, N'PXDTC WYVJF', N'8976552313', N'PXDTC@hcl.com', N'Address:PXDTC WYVJF', CAST(N'2021-06-23T12:43:33.000' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (22, 26658627, N'GGRAA EHGIL', N'7784069834', N'GGRAA@hcl.com', N'Address:GGRAA EHGIL', CAST(N'2021-06-23T12:43:33.003' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (23, 12092527, N'EIVQH AEYTY', N'6042517621', N'EIVQH@hcl.com', N'Address:EIVQH AEYTY', CAST(N'2021-06-23T12:43:33.010' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (24, 63102003, N'SXRQE SVRNI', N'8039371467', N'SXRQE@hcl.com', N'Address:SXRQE SVRNI', CAST(N'2021-06-23T12:43:33.017' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (25, 16482066, N'KGGJU EWGLA', N'3287788904', N'KGGJU@hcl.com', N'Address:KGGJU EWGLA', CAST(N'2021-06-23T12:43:33.020' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (26, 24981518, N'GFPNL JMSMK', N'9989364032', N'GFPNL@hcl.com', N'Address:GFPNL JMSMK', CAST(N'2021-06-23T12:43:33.027' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (27, 22246708, N'SQBTJ VBXFF', N'3803141149', N'SQBTJ@hcl.com', N'Address:SQBTJ VBXFF', CAST(N'2021-06-23T12:43:33.030' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (28, 92573798, N'GPHJJ EMOND', N'3833393270', N'GPHJJ@hcl.com', N'Address:GPHJJ EMOND', CAST(N'2021-06-23T12:43:33.040' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (29, 15783019, N'WKDUV ATPXE', N'2134529329', N'WKDUV@hcl.com', N'Address:WKDUV ATPXE', CAST(N'2021-06-23T12:43:33.043' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (30, 67466496, N'VMRNC LHROO', N'3397965890', N'VMRNC@hcl.com', N'Address:VMRNC LHROO', CAST(N'2021-06-23T12:43:33.050' AS DateTime), NULL, NULL, 1, 1, 0, 1, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (31, 55130307, N'FUJYR UWOMY', N'4240749253', N'FUJYR@hcl.com', N'Address:FUJYR UWOMY', CAST(N'2021-06-23T12:52:45.643' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (32, 85641249, N'REVIC HKRGY', N'6153164412', N'REVIC@hcl.com', N'Address:REVIC HKRGY', CAST(N'2021-06-23T12:52:45.650' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (33, 78040908, N'TMSAN JMLIK', N'7868741881', N'TMSAN@hcl.com', N'Address:TMSAN JMLIK', CAST(N'2021-06-23T12:52:45.657' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (34, 65043294, N'ABVKL BQQPB', N'1553064100', N'ABVKL@hcl.com', N'Address:ABVKL BQQPB', CAST(N'2021-06-23T12:52:45.663' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (35, 67287599, N'BNPNX BQFDJ', N'7022273268', N'BNPNX@hcl.com', N'Address:BNPNX BQFDJ', CAST(N'2021-06-23T12:52:45.670' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (36, 12652585, N'JTPEH THUUP', N'7578235126', N'JTPEH@hcl.com', N'Address:JTPEH THUUP', CAST(N'2021-06-23T12:52:45.677' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (37, 49804735, N'NDVJC MBPAT', N'8644952777', N'NDVJC@hcl.com', N'Address:NDVJC MBPAT', CAST(N'2021-06-23T12:52:45.697' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (38, 76716031, N'AIDCG GEVTM', N'6361893353', N'AIDCG@hcl.com', N'Address:AIDCG GEVTM', CAST(N'2021-06-23T12:52:45.703' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (39, 86508446, N'UXAYA VQESS', N'9251414493', N'UXAYA@hcl.com', N'Address:UXAYA VQESS', CAST(N'2021-06-23T12:52:45.710' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (40, 36582337, N'HRRLH MCTVW', N'7164147305', N'HRRLH@hcl.com', N'Address:HRRLH MCTVW', CAST(N'2021-06-23T12:52:45.713' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (41, 13323387, N'CXPWO TQYRR', N'4337190348', N'CXPWO@hcl.com', N'Address:CXPWO TQYRR', CAST(N'2021-06-23T12:52:45.723' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (42, 32976477, N'VLULK VFYGL', N'3990947376', N'VLULK@hcl.com', N'Address:VLULK VFYGL', CAST(N'2021-06-23T12:52:45.727' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (43, 38163483, N'KXEQY SAKLX', N'1312810250', N'KXEQY@hcl.com', N'Address:KXEQY SAKLX', CAST(N'2021-06-23T12:52:45.733' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (44, 18629448, N'MEPHI BMAGK', N'9323739058', N'MEPHI@hcl.com', N'Address:MEPHI BMAGK', CAST(N'2021-06-23T12:52:45.740' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (45, 55267796, N'PXRBP CXPFB', N'1798552646', N'PXRBP@hcl.com', N'Address:PXRBP CXPFB', CAST(N'2021-06-23T12:52:45.747' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (46, 92740256, N'GEEWF TAGJU', N'6142931734', N'GEEWF@hcl.com', N'Address:GEEWF TAGJU', CAST(N'2021-06-23T12:52:45.750' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (47, 55848048, N'PTFRS JPIBM', N'8772914213', N'PTFRS@hcl.com', N'Address:PTFRS JPIBM', CAST(N'2021-06-23T12:52:45.760' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (48, 35360472, N'LTDNM LOECC', N'9122640277', N'LTDNM@hcl.com', N'Address:LTDNM LOECC', CAST(N'2021-06-23T12:52:45.763' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (49, 85097313, N'MWFDH QTTAL', N'3995061218', N'MWFDH@hcl.com', N'Address:MWFDH QTTAL', CAST(N'2021-06-23T12:52:45.810' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (50, 94151326, N'CNYOS ALUOA', N'4359755153', N'CNYOS@hcl.com', N'Address:CNYOS ALUOA', CAST(N'2021-06-23T12:52:45.813' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (51, 47390661, N'FQFPR LKCJS', N'6638811635', N'FQFPR@hcl.com', N'Address:FQFPR LKCJS', CAST(N'2021-06-23T12:52:45.827' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (52, 10124348, N'GNSYK KBUVV', N'3868520431', N'GNSYK@hcl.com', N'Address:GNSYK KBUVV', CAST(N'2021-06-23T12:52:45.830' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (53, 42001434, N'KGQOO GJRWD', N'3755471638', N'KGQOO@hcl.com', N'Address:KGQOO GJRWD', CAST(N'2021-06-23T12:52:45.837' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (54, 33309707, N'TUILG WSWLQ', N'6344824060', N'TUILG@hcl.com', N'Address:TUILG WSWLQ', CAST(N'2021-06-23T12:52:45.840' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
INSERT [dbo].[mEmployeeDetails] ([employeeId], [employeeSapId], [employeeName], [employeeContactNo], [employeeEmailId], [employeeAddress], [createdDate], [modifiedBy], [modifiedDate], [isNotificationRequired], [isServiceRequired], [isActive], [locationId], [createdBy], [gender]) VALUES (55, 63956052, N'OGVBO BVUMY', N'7106863420', N'OGVBO@hcl.com', N'Address:OGVBO BVUMY', CAST(N'2021-06-23T12:52:45.847' AS DateTime), NULL, NULL, 1, 1, 0, 2, 1, NULL)
GO
SET IDENTITY_INSERT [dbo].[mEmployeeDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[mLocation] ON 
GO
INSERT [dbo].[mLocation] ([locationId], [locationName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (1, N'Lucknow', 1, CAST(N'2021-06-23T12:51:57.937' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mLocation] ([locationId], [locationName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (2, N'Noida', 1, CAST(N'2021-06-23T12:51:57.937' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mLocation] ([locationId], [locationName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (3, N'Bangalore', 1, CAST(N'2021-06-23T12:51:57.937' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mLocation] ([locationId], [locationName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (4, N'Chennai', 1, CAST(N'2021-06-23T12:51:57.937' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mLocation] ([locationId], [locationName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (5, N'Hyderabad', 1, CAST(N'2021-06-23T12:51:57.937' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mLocation] ([locationId], [locationName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (6, N'Gurgaon', 1, CAST(N'2021-06-23T12:51:57.937' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mLocation] ([locationId], [locationName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (7, N'Kolkata', 1, CAST(N'2021-06-23T12:51:57.937' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[mLocation] OFF
GO
SET IDENTITY_INSERT [dbo].[mNeedyUser] ON 
GO
INSERT [dbo].[mNeedyUser] ([needyUserId], [needyUserType], [createdBy], [craetedDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (1, N'Individual', NULL, CAST(N'2021-06-16T08:19:20.217' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mNeedyUser] ([needyUserId], [needyUserType], [createdBy], [craetedDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (2, N'On Behalf', NULL, CAST(N'2021-06-16T08:19:44.773' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[mNeedyUser] OFF
GO
SET IDENTITY_INSERT [dbo].[mResponseType] ON 
GO
INSERT [dbo].[mResponseType] ([responseTypeId], [responseType], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [IsActive]) VALUES (1, N'Yes', NULL, CAST(N'2021-06-15T11:07:51.427' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mResponseType] ([responseTypeId], [responseType], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [IsActive]) VALUES (2, N'No', NULL, CAST(N'2021-06-15T11:07:57.343' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mResponseType] ([responseTypeId], [responseType], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [IsActive]) VALUES (3, N'Query', NULL, CAST(N'2021-06-15T11:08:05.047' AS DateTime), NULL, NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[mResponseType] OFF
GO
SET IDENTITY_INSERT [dbo].[mSubCategory] ON 
GO
INSERT [dbo].[mSubCategory] ([subCategoryId], [categoryId], [subCategoryName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (1, 1, N'Plasma', NULL, CAST(N'2021-06-15T00:00:00.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategory] ([subCategoryId], [categoryId], [subCategoryName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (2, 1, N'Hospitality', NULL, CAST(N'2021-06-15T00:00:00.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategory] ([subCategoryId], [categoryId], [subCategoryName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (3, 1, N'Blood', NULL, CAST(N'2021-06-15T00:00:00.000' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategory] ([subCategoryId], [categoryId], [subCategoryName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (4, 1, N'Pharma', NULL, CAST(N'2021-06-22T05:11:07.013' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategory] ([subCategoryId], [categoryId], [subCategoryName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (5, 1, N'Other Essentials', NULL, CAST(N'2021-06-22T05:11:54.210' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[mSubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[mSubCategoryChild] ON 
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (1, 1, 3, N'O negative', NULL, CAST(N'2021-06-25T09:04:07.440' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (2, 1, 3, N'O positive', NULL, CAST(N'2021-06-25T09:04:42.313' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (3, 1, 3, N'A negative', NULL, CAST(N'2021-06-25T09:04:51.910' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (4, 1, 3, N'A positive', NULL, CAST(N'2021-06-25T09:04:58.097' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (5, 1, 3, N'B negative', NULL, CAST(N'2021-06-25T09:05:05.267' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (6, 1, 3, N'B positive', NULL, CAST(N'2021-06-25T09:05:10.650' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (7, 1, 3, N'AB negative', NULL, CAST(N'2021-06-25T09:05:16.230' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (8, 1, 3, N'AB positive', NULL, CAST(N'2021-06-25T09:05:21.897' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (9, 1, 4, N'O negative', NULL, CAST(N'2021-06-25T09:04:07.440' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (10, 1, 4, N'O positive', NULL, CAST(N'2021-06-25T09:04:42.313' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (11, 1, 4, N'A negative', NULL, CAST(N'2021-06-25T09:04:51.910' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (12, 1, 4, N'A positive', NULL, CAST(N'2021-06-25T09:04:58.097' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (13, 1, 4, N'B negative', NULL, CAST(N'2021-06-25T09:05:05.267' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (14, 1, 4, N'B positive', NULL, CAST(N'2021-06-25T09:05:10.650' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (15, 1, 4, N'AB negative', NULL, CAST(N'2021-06-25T09:05:16.230' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (16, 1, 4, N'AB positive', NULL, CAST(N'2021-06-25T09:05:21.897' AS DateTime), NULL, NULL, 1)
GO
INSERT [dbo].[mSubCategoryChild] ([subCategoryChildID], [categoryId], [subCategoryId], [subCategoryChildName], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive]) VALUES (17, 1, 2, N'oxygen cylinder', 1, CAST(N'2021-07-01T10:13:14.900' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[mSubCategoryChild] OFF
GO
SET IDENTITY_INSERT [dbo].[tEmployeeRequest] ON 
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (1, 1, 1, 1, N'kjnk', 1, NULL, CAST(N'2021-06-29T10:56:06.537' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (2, 1, 1, 1, N'kjnk', 1, NULL, CAST(N'2021-06-29T10:56:50.043' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (3, 1, 1, 1, N'jj', 1, NULL, CAST(N'2021-06-29T10:59:09.613' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (4, 1, 1, 1, N'jj', 1, NULL, CAST(N'2021-06-29T10:59:32.397' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (5, 1, 1, 1, N'string', 1, NULL, CAST(N'2021-06-29T11:01:02.013' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (6, 1, 1, 1, N'sbc', 1, NULL, CAST(N'2021-06-30T05:15:23.500' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (7, 1, 1, 1, N'', 1, NULL, CAST(N'2021-06-30T05:16:58.100' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (8, 1, 1, 1, NULL, 1, NULL, CAST(N'2021-06-30T05:18:07.393' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (9, 1, 1, 0, N'hshhshs', 1, NULL, CAST(N'2021-06-30T05:18:51.580' AS DateTime), NULL, NULL, 1, 1, 1)
GO
INSERT [dbo].[tEmployeeRequest] ([requestId], [categoryId], [subCategoryId], [subCategoryChildId], [subCategoryChildOther], [employeeId], [createdBy], [createdDate], [modifiedBy], [modifiedDate], [isActive], [locationId], [needyUserId]) VALUES (10, 1, 1, 1, NULL, 3, 3, CAST(N'2021-07-01T11:25:18.867' AS DateTime), NULL, NULL, 1, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[tEmployeeRequest] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mCategor__B32E73AA2A0A2D23]    Script Date: 7/1/2021 6:27:42 PM ******/
ALTER TABLE [dbo].[mCategory] ADD UNIQUE NONCLUSTERED 
(
	[categoryType] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mLocatio__930DB016E9E20F96]    Script Date: 7/1/2021 6:27:42 PM ******/
ALTER TABLE [dbo].[mLocation] ADD UNIQUE NONCLUSTERED 
(
	[locationName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mRespons__A6C8BC61C3303C93]    Script Date: 7/1/2021 6:27:42 PM ******/
ALTER TABLE [dbo].[mResponseType] ADD UNIQUE NONCLUSTERED 
(
	[responseType] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mRespons__A6C8BC61E2A9B703]    Script Date: 7/1/2021 6:27:42 PM ******/
ALTER TABLE [dbo].[mResponseType] ADD UNIQUE NONCLUSTERED 
(
	[responseType] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mSubCate__A2474834BD431751]    Script Date: 7/1/2021 6:27:42 PM ******/
ALTER TABLE [dbo].[mSubCategory] ADD UNIQUE NONCLUSTERED 
(
	[subCategoryName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__mSubCate__A2474834E6F109C0]    Script Date: 7/1/2021 6:27:42 PM ******/
ALTER TABLE [dbo].[mSubCategory] ADD UNIQUE NONCLUSTERED 
(
	[subCategoryName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[lEmpSession] ADD  DEFAULT (getdate()) FOR [loginDateTime]
GO
ALTER TABLE [dbo].[mCategory] ADD  CONSTRAINT [DF_mCategory_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[mCategory] ADD  CONSTRAINT [DF_mCategory_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[mEmployeeDetails] ADD  CONSTRAINT [DF_mEmployeeDetails_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[mEmployeeDetails] ADD  CONSTRAINT [DF_mEmployeeDetails_isNotificationRequired]  DEFAULT ((1)) FOR [isNotificationRequired]
GO
ALTER TABLE [dbo].[mEmployeeDetails] ADD  CONSTRAINT [DF_mEmployeeDetails_isServiceRequired]  DEFAULT ((1)) FOR [isServiceRequired]
GO
ALTER TABLE [dbo].[mEmployeeDetails] ADD  CONSTRAINT [DF_mEmployeeDetails_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[mLocation] ADD  CONSTRAINT [DF_mLocation_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[mLocation] ADD  CONSTRAINT [DF_mLocation_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[mNeedyUser] ADD  CONSTRAINT [DF_mNeedyUser_craetedDate]  DEFAULT (getdate()) FOR [craetedDate]
GO
ALTER TABLE [dbo].[mNeedyUser] ADD  CONSTRAINT [DF_mNeedyUser_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[mResponseType] ADD  CONSTRAINT [DF_mResponseType_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[mResponseType] ADD  CONSTRAINT [DF_mResponseType_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[mSubCategory] ADD  CONSTRAINT [DF_mSubCategory_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[mSubCategory] ADD  CONSTRAINT [DF_mSubCategory_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[mSubCategoryChild] ADD  CONSTRAINT [DF_mSubCategoryChild_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[mSubCategoryChild] ADD  CONSTRAINT [DF_mSubCategoryChild_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tEmployeeRequest] ADD  CONSTRAINT [DF_tEmployeeRequest_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[tEmployeeRequest] ADD  CONSTRAINT [DF_tEmployeeRequest_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tEmployeeRequestBroadcast] ADD  CONSTRAINT [DF_tEmployeeRequestBroadcast_isRequestSeen]  DEFAULT ((1)) FOR [isRequestSeen]
GO
ALTER TABLE [dbo].[tEmployeeRequestBroadcast] ADD  CONSTRAINT [DF_tEmployeeRequestBroadcast_isResponded]  DEFAULT ((1)) FOR [isResponded]
GO
ALTER TABLE [dbo].[tEmployeeRequestBroadcast] ADD  CONSTRAINT [DF_tEmployeeRequestBroadcast_requestedDate]  DEFAULT (getdate()) FOR [requestedDate]
GO
ALTER TABLE [dbo].[tEmployeeRequestBroadcast] ADD  CONSTRAINT [DF_tEmployeeRequestBroadcast_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tRequestResponse] ADD  CONSTRAINT [DF_tRequestResponse_responseDate]  DEFAULT (getdate()) FOR [responseDate]
GO
ALTER TABLE [dbo].[tRequestResponse] ADD  CONSTRAINT [DF_tRequestResponse_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[tRequestResponse] ADD  DEFAULT ((0)) FOR [requestStatus]
GO
ALTER TABLE [dbo].[tUserOtp] ADD  DEFAULT ((0)) FOR [isUsed]
GO
ALTER TABLE [dbo].[tUserOtp] ADD  DEFAULT ((1)) FOR [isActive]
GO
