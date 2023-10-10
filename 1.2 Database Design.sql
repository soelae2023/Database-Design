USE [Test]
GO
/****** Object:  Table [dbo].[Fields]    Script Date: 09/10/2023 22:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fields](
	[FieldId] [int] IDENTITY(1,1) NOT NULL,
	[FieldType] [varchar](150) NOT NULL,
	[FieldLabel] [varchar](300) NOT NULL,
	[FieldPlaceHolder] [varchar](150) NULL,
	[FieldOptions] [varchar](150) NULL,
	[FieldValidationMessage] [varchar](150) NULL,
	[IsMandatory] [bit] NOT NULL,
 CONSTRAINT [PK_Fields] PRIMARY KEY CLUSTERED 
(
	[FieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Template]    Script Date: 09/10/2023 22:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Template](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [varchar](250) NOT NULL,
	[TemplateDescription] [varchar](250) NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Template] PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TemplateFields]    Script Date: 09/10/2023 22:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TemplateFields](
	[TemplateFieldId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NULL,
	[FieldId] [int] NULL,
 CONSTRAINT [PK_TemplateFields] PRIMARY KEY CLUSTERED 
(
	[TemplateFieldId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/10/2023 22:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Role] [varchar](150) NOT NULL,
	[Email] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VisitorFormData]    Script Date: 09/10/2023 22:11:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VisitorFormData](
	[VisitorDataId] [int] IDENTITY(1,1) NOT NULL,
	[FieldId] [int] NOT NULL,
	[UserInput] [varchar](500) NOT NULL,
 CONSTRAINT [PK_UserFormData_1] PRIMARY KEY CLUSTERED 
(
	[VisitorDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Fields] ON 
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (3, N'InputText', N'Name', N'Name', NULL, N'The name is required.', 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (4, N'InputText', N'Business Emai', N'Business Email', NULL, N'Business Email is required.', 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (5, N'InputText', N'Company Name', N'Company Name', NULL, N'Company is required.', 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (6, N'InputText', N'Designation', N'Designation', NULL, NULL, 0)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (7, N'InputText', N'Business Number', N'Mobile Number', NULL, N'Business Number is required.', 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (8, N'InputText', N'License Plate', N'License Plate', NULL, NULL, 0)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (9, N'InputText', N'NRIC/FIN Number(Last 4 characters)', N'Comment', NULL, N'NRIC/FIN Number is required', 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (10, N'RadioBox', N'Are you currently under a Quarantine Order, Stay-Home Notice?', N'', N'Yes/No', NULL, 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (11, N'RadioBox', N'Have you had close contact with a confirmed COVID-19 case in the past 14 days?', NULL, N'Yes/No', NULL, 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (12, N'RadioBox', N'Do you have any fever or flu-like symptoms?', NULL, N'Yes/No', NULL, 1)
GO
INSERT [dbo].[Fields] ([FieldId], [FieldType], [FieldLabel], [FieldPlaceHolder], [FieldOptions], [FieldValidationMessage], [IsMandatory]) VALUES (16, N'CheckBox', N'By completing this online form, I acknowledge and consent to the collection, use and disclosure of 
my personal data for security verification, access and safety purposes.', NULL, N'Check/UnCheck', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[Fields] OFF
GO
SET IDENTITY_INSERT [dbo].[Template] ON 
GO
INSERT [dbo].[Template] ([TemplateId], [TemplateName], [TemplateDescription], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Template A', N'Health Declaration form', 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Template] OFF
GO
SET IDENTITY_INSERT [dbo].[TemplateFields] ON 
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (1, 3, 3)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (2, 3, 4)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (3, 3, 5)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (4, 3, 6)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (5, 3, 7)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (6, 3, 8)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (7, 3, 9)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (8, 3, 10)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (9, 3, 11)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (10, 3, 12)
GO
INSERT [dbo].[TemplateFields] ([TemplateFieldId], [TemplateId], [FieldId]) VALUES (11, 3, 16)
GO
SET IDENTITY_INSERT [dbo].[TemplateFields] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [Name], [Role], [Email]) VALUES (1, N'SuSu', N'Admin', N'susu@gmail.com')
GO
INSERT [dbo].[Users] ([Id], [Name], [Role], [Email]) VALUES (2, N'AungAung', N'Admin', N'aung@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[VisitorFormData] ON 
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (1, 3, N'Mg Mg')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (2, 4, N'mgmg@abc.com')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (3, 5, N'ABC Company')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (4, 6, N'Manager')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (5, 7, N'09956127893')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (6, 8, N'-')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (8, 9, N'1234')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (9, 10, N'No')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (10, 11, N'No')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (12, 12, N'No')
GO
INSERT [dbo].[VisitorFormData] ([VisitorDataId], [FieldId], [UserInput]) VALUES (15, 16, N'Check')
GO
SET IDENTITY_INSERT [dbo].[VisitorFormData] OFF
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_Users] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_Users]
GO
ALTER TABLE [dbo].[Template]  WITH CHECK ADD  CONSTRAINT [FK_Template_Users1] FOREIGN KEY([ModifiedBy])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Template] CHECK CONSTRAINT [FK_Template_Users1]
GO
ALTER TABLE [dbo].[TemplateFields]  WITH CHECK ADD  CONSTRAINT [FK_TemplateFields_Fields] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Fields] ([FieldId])
GO
ALTER TABLE [dbo].[TemplateFields] CHECK CONSTRAINT [FK_TemplateFields_Fields]
GO
ALTER TABLE [dbo].[TemplateFields]  WITH CHECK ADD  CONSTRAINT [FK_TemplateFields_Template] FOREIGN KEY([TemplateId])
REFERENCES [dbo].[Template] ([TemplateId])
GO
ALTER TABLE [dbo].[TemplateFields] CHECK CONSTRAINT [FK_TemplateFields_Template]
GO
ALTER TABLE [dbo].[VisitorFormData]  WITH CHECK ADD  CONSTRAINT [FK_VisitorFormData_Fields] FOREIGN KEY([FieldId])
REFERENCES [dbo].[Fields] ([FieldId])
GO
ALTER TABLE [dbo].[VisitorFormData] CHECK CONSTRAINT [FK_VisitorFormData_Fields]
GO
