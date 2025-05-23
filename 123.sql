USE [base1_ISP_21_4_2]
GO
/****** Object:  Table [dbo].[DatabaseLogs]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatabaseLogs](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[TableName] [varchar](255) NOT NULL,
	[ColumnName] [varchar](255) NULL,
	[RecordID] [int] NOT NULL,
	[OperationType] [varchar](10) NOT NULL,
	[OldValue] [text] NULL,
	[NewValue] [text] NULL,
	[UserID] [int] NULL,
	[AdditionalInfo] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[DepartmentID] [int] NOT NULL,
	[DepartmentName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Departme__B2079BCD0246EEB8] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obshaga]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obshaga](
	[DormitoryID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[RoomNumber] [int] NULL,
	[CheckInDate] [date] NULL,
	[CheckOutDate] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__Dormitor__14188ACE90138176] PRIMARY KEY CLUSTERED 
(
	[DormitoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[RoomID] [int] NOT NULL,
	[RoomName] [nvarchar](255) NOT NULL,
	[Vmestim] [int] NULL,
 CONSTRAINT [PK__Rooms__3286391984EE03B7] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialScholarships]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialScholarships](
	[ScholarshipID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[DocumentReason] [nvarchar](255) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__SocialSc__853EC21CB23ABED2] PRIMARY KEY CLUSTERED 
(
	[ScholarshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SPPP_Meetings]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPPP_Meetings](
	[MeetingID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Date] [date] NULL,
	[OsnVizov] [nvarchar](max) NULL,
	[Sotrudniki] [nvarchar](max) NULL,
	[Predstaviteli] [nvarchar](max) NULL,
	[ReasonForCall] [nvarchar](max) NULL,
	[Reshenie] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__SPPP_Mee__E9F9E9AC04D6827B] PRIMARY KEY CLUSTERED 
(
	[MeetingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses_Invalid]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses_Invalid](
	[DisabilityStatusID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[OrderNumber] [nvarchar](255) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[DisabilityType] [nvarchar](255) NULL,
	[Note] [nvarchar](max) NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__Statuses__FB1B44795764E06B] PRIMARY KEY CLUSTERED 
(
	[DisabilityStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses_OVZ]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses_OVZ](
	[OVZStatusID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Prikaz] [nvarchar](255) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__Statuses__5EDF1EA51F9C7F1E] PRIMARY KEY CLUSTERED 
(
	[OVZStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses_RiskGroup]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses_RiskGroup](
	[RiskGroupID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[RiskGroupType] [nvarchar](255) NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[OsnPost] [nvarchar](max) NULL,
	[OsnSnat] [nvarchar](max) NULL,
	[PrichinaPost] [nvarchar](max) NULL,
	[PrichinaSnat] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__Statuses__0DE55E60DF73F207] PRIMARY KEY CLUSTERED 
(
	[RiskGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses_Sirots]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses_Sirots](
	[OrphanStatusID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[OrderNumber] [nvarchar](255) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__Statuses__D49E70FA00315AEA] PRIMARY KEY CLUSTERED 
(
	[OrphanStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statuses_SVO]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses_SVO](
	[SVOStatusID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[DocumentOsnov] [nvarchar](255) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__Statuses__28F4887A1B00F713] PRIMARY KEY CLUSTERED 
(
	[SVOStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[MiddleName] [nvarchar](255) NULL,
	[BirthDate] [date] NOT NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[ContactNumber] [nvarchar](20) NULL,
	[Obrazovanie] [nvarchar](50) NOT NULL,
	[Otdelenie] [int] NOT NULL,
	[Groups] [nvarchar](50) NOT NULL,
	[Finance] [nvarchar](50) NOT NULL,
	[YearPostup] [int] NOT NULL,
	[YearOkonch] [int] NULL,
	[InfoOtchiz] [nvarchar](max) NULL,
	[DateOtchiz] [date] NULL,
	[Note] [nvarchar](max) NULL,
	[ParentsInfo] [nvarchar](max) NULL,
	[Vziskanie] [nvarchar](max) NULL,
	[Files] [nvarchar](max) NULL,
 CONSTRAINT [PK__Students__32C52A79D8350256] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 24.04.2025 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UsersID] [int] NOT NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UsersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Obshaga]  WITH CHECK ADD  CONSTRAINT [FK__Dormitory__Stude__4BAC3F29] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Obshaga] CHECK CONSTRAINT [FK__Dormitory__Stude__4BAC3F29]
GO
ALTER TABLE [dbo].[Obshaga]  WITH CHECK ADD  CONSTRAINT [FK_Obshaga_Rooms] FOREIGN KEY([DormitoryID])
REFERENCES [dbo].[Rooms] ([RoomID])
GO
ALTER TABLE [dbo].[Obshaga] CHECK CONSTRAINT [FK_Obshaga_Rooms]
GO
ALTER TABLE [dbo].[SocialScholarships]  WITH CHECK ADD  CONSTRAINT [FK__SocialSch__Stude__571DF1D5] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[SocialScholarships] CHECK CONSTRAINT [FK__SocialSch__Stude__571DF1D5]
GO
ALTER TABLE [dbo].[SPPP_Meetings]  WITH CHECK ADD  CONSTRAINT [FK__SPPP_Meet__Stude__5165187F] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[SPPP_Meetings] CHECK CONSTRAINT [FK__SPPP_Meet__Stude__5165187F]
GO
ALTER TABLE [dbo].[Statuses_Invalid]  WITH CHECK ADD  CONSTRAINT [FK__Statuses___Stude__44FF419A] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Statuses_Invalid] CHECK CONSTRAINT [FK__Statuses___Stude__44FF419A]
GO
ALTER TABLE [dbo].[Statuses_OVZ]  WITH CHECK ADD  CONSTRAINT [FK__Statuses___Stude__48CFD27E] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Statuses_OVZ] CHECK CONSTRAINT [FK__Statuses___Stude__48CFD27E]
GO
ALTER TABLE [dbo].[Statuses_RiskGroup]  WITH CHECK ADD  CONSTRAINT [FK__Statuses___Stude__4E88ABD4] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Statuses_RiskGroup] CHECK CONSTRAINT [FK__Statuses___Stude__4E88ABD4]
GO
ALTER TABLE [dbo].[Statuses_Sirots]  WITH CHECK ADD  CONSTRAINT [FK__Statuses___Stude__4222D4EF] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Statuses_Sirots] CHECK CONSTRAINT [FK__Statuses___Stude__4222D4EF]
GO
ALTER TABLE [dbo].[Statuses_SVO]  WITH CHECK ADD  CONSTRAINT [FK__Statuses___Stude__5441852A] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
GO
ALTER TABLE [dbo].[Statuses_SVO] CHECK CONSTRAINT [FK__Statuses___Stude__5441852A]
GO
ALTER TABLE [dbo].[DatabaseLogs]  WITH CHECK ADD CHECK  (([OperationType]='DELETE' OR [OperationType]='UPDATE' OR [OperationType]='INSERT'))
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [CK__Students__Gender__3F466844] CHECK  (([Gender]='Other' OR [Gender]='Female' OR [Gender]='Male'))
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [CK__Students__Gender__3F466844]
GO
