USE [PRODUCTOS]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 12/02/2021 10:24:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[prod_id] [int] IDENTITY(1,1) NOT NULL,
	[prod_name] [nvarchar](255) NULL,
	[prod_condition] [int] NULL,
	[prod_status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_CONDITION]    Script Date: 12/02/2021 10:24:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_CONDITION](
	[cond_id] [int] NOT NULL,
	[cond_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cond_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_STATUS]    Script Date: 12/02/2021 10:24:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_STATUS](
	[cond_id] [int] NOT NULL,
	[cond_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cond_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] ON 

INSERT [dbo].[PRODUCT] ([prod_id], [prod_name], [prod_condition], [prod_status]) VALUES (1, N'A', 0, 0)
INSERT [dbo].[PRODUCT] ([prod_id], [prod_name], [prod_condition], [prod_status]) VALUES (2, N'B', 0, 1)
INSERT [dbo].[PRODUCT] ([prod_id], [prod_name], [prod_condition], [prod_status]) VALUES (3, N'C', 1, 1)
INSERT [dbo].[PRODUCT] ([prod_id], [prod_name], [prod_condition], [prod_status]) VALUES (4, N'D', 0, 0)
INSERT [dbo].[PRODUCT] ([prod_id], [prod_name], [prod_condition], [prod_status]) VALUES (5, N'E', 0, 0)
INSERT [dbo].[PRODUCT] ([prod_id], [prod_name], [prod_condition], [prod_status]) VALUES (6, N'Product A', 0, 1)
INSERT [dbo].[PRODUCT] ([prod_id], [prod_name], [prod_condition], [prod_status]) VALUES (7, N'Producto Z', 0, 1)
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
GO
INSERT [dbo].[PRODUCT_CONDITION] ([cond_id], [cond_name]) VALUES (0, N'Optimo')
INSERT [dbo].[PRODUCT_CONDITION] ([cond_id], [cond_name]) VALUES (1, N'Defectuso')
GO
INSERT [dbo].[PRODUCT_STATUS] ([cond_id], [cond_name]) VALUES (0, N'En Stock')
INSERT [dbo].[PRODUCT_STATUS] ([cond_id], [cond_name]) VALUES (1, N'Vendido')
GO
