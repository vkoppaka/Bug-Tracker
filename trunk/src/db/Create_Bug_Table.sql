SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Bug](
	[Bug_Id] [int] IDENTITY(1,1) NOT NULL,
	[Bug_Short_Description] [varchar](50) NULL,
	[Bug_Description] [text] NOT NULL,
	[Bug_Spotted_On] [datetime] NOT NULL,
	[Bug_Spotted_By] [int] NOT NULL,
	[Bug_Assigned_To] [int] NOT NULL,
	[Bug_Status_Id] [int] NOT NULL,
	[Bug_Status_Time] [datetime] NULL,
	[Bug_Attachment] [image] NULL,
	[Bug_Project_Id] [int] NOT NULL,
 CONSTRAINT [PK_Bug] PRIMARY KEY CLUSTERED 
(
	[Bug_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Bug]  WITH CHECK ADD  CONSTRAINT [FK_Bug_BugStatus] FOREIGN KEY([Bug_Status_Id])
REFERENCES [dbo].[BugStatus] ([Bug_Status_Id])
GO

ALTER TABLE [dbo].[Bug] CHECK CONSTRAINT [FK_Bug_BugStatus]
GO

ALTER TABLE [dbo].[Bug]  WITH CHECK ADD  CONSTRAINT [FK_Bug_Project] FOREIGN KEY([Bug_Project_Id])
REFERENCES [dbo].[Project] ([Project_Id])
GO

ALTER TABLE [dbo].[Bug] CHECK CONSTRAINT [FK_Bug_Project]
GO

ALTER TABLE [dbo].[Bug]  WITH CHECK ADD  CONSTRAINT [FK_Bug_User] FOREIGN KEY([Bug_Spotted_By])
REFERENCES [dbo].[User] ([User_Id])
GO

ALTER TABLE [dbo].[Bug] CHECK CONSTRAINT [FK_Bug_User]
GO

ALTER TABLE [dbo].[Bug]  WITH CHECK ADD  CONSTRAINT [FK_Bug_User1] FOREIGN KEY([Bug_Assigned_To])
REFERENCES [dbo].[User] ([User_Id])
GO

ALTER TABLE [dbo].[Bug] CHECK CONSTRAINT [FK_Bug_User1]
GO


