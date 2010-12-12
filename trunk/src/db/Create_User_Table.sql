SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[First_Name] [varchar](50) NOT NULL,
	[Last_Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Access_Level_Id] [int] NOT NULL,
	[Send_Bug_Email] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_AccessLevel] FOREIGN KEY([Access_Level_Id])
REFERENCES [dbo].[AccessLevel] ([Access_Level_Id])
GO

ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_AccessLevel]
GO

ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Send_Bug_Email]  DEFAULT ((1)) FOR [Send_Bug_Email]
GO


