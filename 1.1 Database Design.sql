USE [Test]
GO
/****** Object:  Table [dbo].[AddressLocation]    Script Date: 09/10/2023 21:50:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressLocation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_AddressLocation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AddressLocation] ON 
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (1, N'Building A', NULL)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (2, N'Carpark', 1)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (3, N'Level 2', 1)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (4, N'Room 201', 3)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (5, N'Building B', NULL)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (6, N'Level 1', 5)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (7, N'Pantry', 6)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (8, N'Room 101', 6)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (9, N'Lobby C', 8)
GO
INSERT [dbo].[AddressLocation] ([Id], [Name], [ParentId]) VALUES (10, N'Kios A', 9)
GO
SET IDENTITY_INSERT [dbo].[AddressLocation] OFF
GO
ALTER TABLE [dbo].[AddressLocation]  WITH CHECK ADD  CONSTRAINT [FK_AddressLocation_AddressLocation] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AddressLocation] ([Id])
GO
ALTER TABLE [dbo].[AddressLocation] CHECK CONSTRAINT [FK_AddressLocation_AddressLocation]
GO
