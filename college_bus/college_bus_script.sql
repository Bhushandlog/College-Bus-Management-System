USE [idealtec_r3_college_bus]
GO
/****** Object:  Table [dbo].[add_bus]    Script Date: 03/03/2023 13:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[add_bus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bus_no] [nvarchar](max) NULL,
	[bus_name] [nvarchar](max) NULL,
	[route] [nvarchar](max) NULL,
	[driver_name] [nvarchar](max) NULL,
	[driver_contact] [nvarchar](max) NULL,
	[password] [float] NULL,
	[bus_timetable_image] [nvarchar](max) NULL,
 CONSTRAINT [PK_add_bus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[complaints]    Script Date: 03/03/2023 13:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[complaints](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[msg] [nvarchar](max) NULL,
 CONSTRAINT [PK_complaints] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[location]    Script Date: 03/03/2023 13:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[location](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[longi] [nvarchar](max) NULL,
	[lati] [nvarchar](max) NULL,
 CONSTRAINT [PK_location] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[one_time_fee]    Script Date: 03/03/2023 13:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[one_time_fee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stop_name] [nvarchar](max) NULL,
	[fee] [nvarchar](max) NULL,
 CONSTRAINT [PK_one_time_fee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[present_absent]    Script Date: 03/03/2023 13:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[present_absent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[stu_name] [nvarchar](max) NULL,
	[stu_mobile] [nvarchar](max) NULL,
	[p_a] [nvarchar](max) NULL,
	[date] [nvarchar](max) NULL,
	[stop_name] [nvarchar](max) NULL,
	[bus_no] [nvarchar](max) NULL,
 CONSTRAINT [PK_present_absent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student]    Script Date: 03/03/2023 13:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[mobile] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
	[bus_no] [nvarchar](max) NULL,
	[stop] [nvarchar](max) NULL,
	[fees_paid] [float] NULL,
	[total_fees] [float] NULL,
	[pending_fees] [float] NULL,
	[college] [nvarchar](max) NULL,
	[year] [nvarchar](max) NULL,
	[dept] [nvarchar](max) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
