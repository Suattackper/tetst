USE [ECOMMERCE]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 16/12/2023 10:45:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountCode] [int] IDENTITY(1,1) NOT NULL,
	[Password] [varchar](255) NULL,
	[Email] [varchar](30) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Avatar] [nvarchar](500) NULL,
	[RequestCode] [varchar](10) NULL,
	[CreateAt] [datetime] NULL,
 CONSTRAINT [PK__Account__38D0C56B5FC539D4] PRIMARY KEY CLUSTERED 
(
	[AccountCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountAddress]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountAddress](
	[AccountAddressCode] [int] IDENTITY(1,1) NOT NULL,
	[AccountCode] [int] NULL,
	[FullName] [nvarchar](50) NULL,
	[PhoneNumber] [varchar](10) NULL,
	[PostalCode] [varchar](20) NULL,
	[Country] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountAddressCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[BrandCode] [int] IDENTITY(1,1) NOT NULL,
	[BrandName] [nvarchar](100) NULL,
	[Origin] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryCode] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](100) NULL,
	[Img] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[CommentCode] [int] IDENTITY(1,1) NOT NULL,
	[AccountCode] [int] NULL,
	[ProductCode] [varchar](15) NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CommentTime] [smalldatetime] NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK__Comment__896D6989A1FC8D48] PRIMARY KEY CLUSTERED 
(
	[CommentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactCode] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](45) NULL,
	[Email] [varchar](30) NULL,
	[Phonenumber] [varchar](10) NULL,
	[Message] [varchar](1000) NULL,
	[AccountCode] [int] NULL,
 CONSTRAINT [PK__Contact__8D7BE9DD821124CB] PRIMARY KEY CLUSTERED 
(
	[ContactCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[DeliveryCode] [varchar](10) NOT NULL,
	[DeliveryName] [nvarchar](50) NULL,
	[PriceTotal] [money] NULL,
	[DeliveryFee] [money] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderCode] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [varchar](15) NOT NULL,
	[Price] [money] NULL,
	[Quantity] [int] NULL,
	[Total] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC,
	[OrderCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderCode] [int] IDENTITY(1,1) NOT NULL,
	[PaymentCode] [int] NULL,
	[AccountCode] [int] NULL,
	[PromotionCode] [char](10) NULL,
	[DeliveryCode] [varchar](10) NULL,
	[OrderDate] [date] NULL,
	[Delivered] [bit] NULL,
	[DeliveryDate] [date] NULL,
	[OrderTotal] [money] NULL,
	[OrderNote] [nvarchar](100) NULL,
	[AccountAddressCode] [int] NULL,
 CONSTRAINT [PK__Orders__999B522807F6D1A9] PRIMARY KEY CLUSTERED 
(
	[OrderCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentCode] [int] IDENTITY(1,1) NOT NULL,
	[PaymentType] [varchar](20) NULL,
	[AccountNumer] [varchar](20) NULL,
	[ExpiryDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductCode] [varchar](15) NOT NULL,
	[ProductName] [nvarchar](500) NULL,
	[BrandCode] [int] NULL,
	[CategoryCode] [int] NULL,
	[ImageProduct] [nvarchar](500) NULL,
	[Price] [decimal](18, 2) NULL,
	[PromotionCode] [char](10) NULL,
	[Quantity] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[ViewCount] [int] NULL,
	[Rate] [float] NULL,
 CONSTRAINT [PK__Product__2F4E024ED54E5B19] PRIMARY KEY CLUSTERED 
(
	[ProductCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImg]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImg](
	[ProductImgCode] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](500) NULL,
	[ProductCode] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductImgCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 16/12/2023 10:45:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionCode] [char](10) NOT NULL,
	[PromotionPercentage] [int] NULL,
	[EndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PromotionCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountCode], [Password], [Email], [PhoneNumber], [FirstName], [LastName], [Avatar], [RequestCode], [CreateAt]) VALUES (1, N'123', N'123@gmail.com', N'0365858544', N'Tan', N'Nguyen', N'/Content/images/cards/notebooks/note_2.jpg', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (1, N'Levoit
', N'Hoa Kỳ')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (2, N'Xiaomi
', N'Đài Loan')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (3, N'Sharp
', N'Đài Loan')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (4, N'Sony
', N'Mỹ')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (5, N'Asus
', N'Hoa kỳ')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (6, N'Logitech
', N'Hoa kỳ')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (7, N'Dreame 
', N'Trung Quốc')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (8, N'EDRA
', N'Đài Loan')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (9, N'Epione
', N'Hàn Quốc')
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (10, N'Energizer
', NULL)
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (11, N'Keychron
', NULL)
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (12, N'Akko
', NULL)
INSERT [dbo].[Brand] ([BrandCode], [BrandName], [Origin]) VALUES (13, N'Meta
', NULL)
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [Img]) VALUES (1, N'Smarthome', NULL)
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [Img]) VALUES (2, N'Accessory', NULL)
INSERT [dbo].[Category] ([CategoryCode], [CategoryName], [Img]) VALUES (3, N'GamingGear', NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (1, 1, N'SP1', N'zzz', CAST(N'2023-12-04T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (2, 1, N'SP1', N'yyy', CAST(N'2023-12-05T00:00:00' AS SmallDateTime), 3)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (3, 1, N'SP2', N'dfv', CAST(N'2023-01-01T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (4, 1, N'SP10', N'aaa', CAST(N'2023-12-14T15:14:00' AS SmallDateTime), 3)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (5, 1, N'SP10', N'bbbb', CAST(N'2023-12-14T15:16:00' AS SmallDateTime), 5)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (6, 1, N'SP10', N'ccc', CAST(N'2023-12-14T15:26:00' AS SmallDateTime), 5)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (7, 1, N'SP10', N'dđ', CAST(N'2023-12-14T15:38:00' AS SmallDateTime), 5)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (8, 1, N'SP10', N'eee', CAST(N'2023-12-14T15:39:00' AS SmallDateTime), 5)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (9, 1, N'SP11', N'333', CAST(N'2023-12-15T14:03:00' AS SmallDateTime), 3)
INSERT [dbo].[Comment] ([CommentCode], [AccountCode], [ProductCode], [CommentContent], [CommentTime], [Rate]) VALUES (10, 1, N'SP2', N'h', CAST(N'2023-12-15T14:13:00' AS SmallDateTime), 2)
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactCode], [FullName], [Email], [Phonenumber], [Message], [AccountCode]) VALUES (1, N'a', N'khidot705@gmail.com', NULL, N'a', 1)
INSERT [dbo].[Contact] ([ContactCode], [FullName], [Email], [Phonenumber], [Message], [AccountCode]) VALUES (2, N'a', N'6251071087@st.utc2.edu.vn', NULL, N'â', 1)
INSERT [dbo].[Contact] ([ContactCode], [FullName], [Email], [Phonenumber], [Message], [AccountCode]) VALUES (3, N'a', N'6251071087@st.utc2.edu.vn', NULL, N'a', 1)
INSERT [dbo].[Contact] ([ContactCode], [FullName], [Email], [Phonenumber], [Message], [AccountCode]) VALUES (4, N'a', N'khidot705@gmail.com', NULL, N'â', 1)
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP1', N'Bàn phím cơ Akko Black & Gold 
', 12, 2, N'/Content/images/product/Category-02/Bàn phím cơ Akko Black & Gold-01.jpg', CAST(2000000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 2)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP10', N'Ghế công thái học Epione ErgoChair 2.0
', 9, 1, N'/Content/images/product/Category-01/Ghế công thái học Epione ErgoChair 2.0.jpg', CAST(3000000.00 AS Decimal(18, 2)), N'45        ', 1000, N'rồi ', 0, 4.6)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP11', N'Ghế công thái học Epione ErgoChair 3.0
', 9, 1, N'/Content/images/product/Category-01/Ghế công thái học Epione ErgoChair 3.0.jpg', CAST(4000000.00 AS Decimal(18, 2)), N'45        ', 0, N'đi', 0, 3)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP12', N'Bàn phím cơ Keychron K10 Pro
', 11, 2, N'/Content/images/product/Category-02/Bàn phím cơ Keychron K10 Pro.jpg', CAST(1000000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP13', N'Bàn phím cơ Keychron K2 Pro  
', 11, 2, N'/Content/images/product/Category-02/Bàn phím cơ Keychron K2 Pro.jpg', CAST(750000.00 AS Decimal(18, 2)), N'25        ', 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP14', N'Bàn phím cơ Keychron K3 v2
', 11, 2, N'/Content/images/product/Category-02/Bàn phím cơ Keychron K3 v2.jpg', CAST(800000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP15', N'Kính thực tế ảo Meta Quest 2
', 13, 3, N'/Content/images/product/Category-03/Kính thực tế ảo Meta Quest 2.jpg', CAST(7000000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP16', N'Kính thực tế ảo Meta Quest 3
', 13, 3, N'/Content/images/product/Category-03/Kính thực tế ảo Meta Quest 3.jpg', CAST(8000000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP17', N'Máy lọc không khí Levoit Core 300 
', 1, 1, N'/Content/images/product/Category-01/Máy lọc không khí Levoit Core 300.jpg', CAST(2000000.00 AS Decimal(18, 2)), NULL, 1000, N'biết', 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP18', N'Máy lọc không khí chống dị ứng thú cưng Levoit Vital 100S
', 1, 1, N'/Content/images/product/Category-01/Cân thông minh Xiaomi Smart Scale 2 -01.jpg', CAST(5000000.00 AS Decimal(18, 2)), N'20        ', 1000, N'ngon', 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP19', N'Máy lọc không khí và bắt muỗi SHARP FP-GM50E-B
', 3, 1, N'/Content/images/product/Category-01/Máy lọc không khí Levoit Core 300 -02.jpg', CAST(7000000.00 AS Decimal(18, 2)), N'20        ', 1000, N'bổ', 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP2', N'Bàn phím cơ Akko Matcha Red Bean 
', 12, 2, N'/Content/images/product/Category-02/Bàn phím cơ Akko Matcha Red Bean.jpg', CAST(1000000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 3.5)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP20', N'Máy lọc không khí Xiaomi Air Purifier 4 Pro
', 2, 1, N'/Content/images/product/Category-01/Máy lọc không khí Levoit Core 300 -01.jpg', CAST(6000000.00 AS Decimal(18, 2)), N'25        ', 0, N'lắm', 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP21', N'Pin sạc dự phòng Energizer 15.000 UE200
', 10, 2, N'/Content/images/product/Category-02/Pin sạc dự phòng Energizer 15.000 UE200.jpg', CAST(700000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP22', N'Pin sạc dự phòng Energizer 20.000 QE20013
', 10, 2, N'/Content/images/product/Category-02/Pin sạc dự phòng Energizer 20.000 QE20013.jpg', CAST(800000.00 AS Decimal(18, 2)), N'25        ', 0, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP23', N'Pin sạc dự phòng Xiaomi Power Bank 10.000
', 2, 2, N'/Content/images/product/Category-02/Pin sạc dự phòng Xiaomi Power Bank 10.000.jpg', CAST(850000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP24', N'Kính thực tế ảo Sony Playstation VR2
', 4, 3, N'/Content/images/product/Category-03/Kính thực tế ảo Sony Playstation VR2-01.jpg', CAST(5000000.00 AS Decimal(18, 2)), N'25        ', 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP25', N'Robot hút bụi lau nhà Dreame Bot L20 Ultra
', 7, 1, N'/Content/images/product/Category-01/Robot hút bụi lau nhà Xiaomi Vacuum Mop X10-02.jpg', CAST(10000000.00 AS Decimal(18, 2)), N'25        ', 1000, N'rẻ', 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP26', N'Robot hút bụi lau nhà Xiaomi Vacuum Mop X10+
', 2, 1, N'/Content/images/product/Category-01/Robot hút bụi lau nhà Xiaomi Vacuum Mop X10-02.jpg', CAST(10700000.00 AS Decimal(18, 2)), N'45        ', 1000, N'mượt', 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP27', N'Cân thông minh Xiaomi Smart Scale 2 
', 2, 1, N'/Content/images/product/Category-01/Cân thông minh Xiaomi Smart Scale 2 -01.jpg', CAST(6000000.00 AS Decimal(18, 2)), NULL, 1000, N'ngon', 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP28', N'Bút cảm ứng Xiaomi 
', 2, 2, N'/Content/images/product/Category-02/Bút cảm ứng Xiaomi.jpg', CAST(300000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP29', N'Tai nghe Gaming Inzone 
', 4, 3, N'/Content/images/product/Category-03/Tai nghe Gaming Inzone.jpg', CAST(350000.00 AS Decimal(18, 2)), N'25        ', 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP3', N'Bàn phím cơ Akko Ocean Star 
', 12, 2, N'/Content/images/product/Category-02/Bàn phím cơ Akko Ocean Star.jpg', CAST(1500000.00 AS Decimal(18, 2)), N'25        ', 0, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP30', N'Máy chơi game Sony PlayStation 5  Bundle Marvel''s Spiderman 
', 4, 3, N'/Content/images/product/Category-03/Máy chơi game Sony PlayStation 5  Bundle Marvel''s Spiderman.jpg', CAST(4000000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP31', N'Máy chơi game Sony PlayStation 5 
', 4, 3, N'/Content/images/product/Category-03/Máy chơi game Sony PlayStation 5.jpg', CAST(3500000.00 AS Decimal(18, 2)), N'25        ', 0, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP32', N'Webcam Logitech Brio Micro 500
', 6, 2, N'/Content/images/product/Category-02/Webcam Logitech Brio Micro 500.jpg', CAST(1500000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP33', N'Webcam Logitech C310 HD 720P
', 6, 2, N'/Content/images/product/Category-02/Webcam Logitech C310 HD 720P.png', CAST(2000000.00 AS Decimal(18, 2)), N'25        ', 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP34', N'Ghế công thái học Xiaomi Butterfly 
', 2, 1, N'/Content/images/product/Category-01/Ghế công thái học Xiaomi Butterfly.jpg', CAST(8000000.00 AS Decimal(18, 2)), N'25        ', 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP4', N'Máy chơi game ASUS ROG Ally Z1 
', 5, 3, N'/Content/images/product/Category-03/Máy chơi game ASUS ROG Ally Z1.jpg', CAST(3000000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP5', N'Tai nghe Gaming Asus Rog Strix Fusion 
', 5, 3, N'/Content/images/product/Category-03/Tai nghe Gaming Asus Rog Strix Fusion.jpg', CAST(400000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP6', N'Balo laptop Asus Rog BP1500G
', 5, 2, N'/Content/images/product/Category-02/Balo laptop Asus Rog BP1500G.jpg', CAST(500000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP7', N'Balo laptop Asus TUF Gaming VP4700 
', 5, 2, N'/Content/images/product/Category-02/Balo laptop Asus TUF Gaming VP4700.jpg', CAST(600000.00 AS Decimal(18, 2)), N'25        ', 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP8', N'Ghế E-Dra EEC214
', 8, 1, N'/Content/images/product/Category-01/Ghế E-Dra EEC214.jpg', CAST(7500000.00 AS Decimal(18, 2)), NULL, 1000, NULL, 0, 0)
INSERT [dbo].[Product] ([ProductCode], [ProductName], [BrandCode], [CategoryCode], [ImageProduct], [Price], [PromotionCode], [Quantity], [Description], [ViewCount], [Rate]) VALUES (N'SP9', N'Ghế công thái học E-DRA EEC213
', 8, 1, N'/Content/images/product/Category-01/Ghế công thái học E-DRA EEC213.jpg', CAST(5000000.00 AS Decimal(18, 2)), N'45        ', 1000, N'mua', 0, 0)
GO
SET IDENTITY_INSERT [dbo].[ProductImg] ON 

INSERT [dbo].[ProductImg] ([ProductImgCode], [Img], [ProductCode]) VALUES (1, N'/Content/images/cards/notebooks/note_6.jpg', N'SP1')
SET IDENTITY_INSERT [dbo].[ProductImg] OFF
GO
INSERT [dbo].[Promotion] ([PromotionCode], [PromotionPercentage], [EndDate]) VALUES (N'20        ', 20, CAST(N'2023-12-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Promotion] ([PromotionCode], [PromotionPercentage], [EndDate]) VALUES (N'25        ', 25, CAST(N'2024-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Promotion] ([PromotionCode], [PromotionPercentage], [EndDate]) VALUES (N'45        ', 45, CAST(N'2024-02-02T00:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF__Account__CreateA__37A5467C]  DEFAULT (getdate()) FOR [CreateAt]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF__Comment__Comment__5BE2A6F2]  DEFAULT (getdate()) FOR [CommentTime]
GO
ALTER TABLE [dbo].[Comment] ADD  CONSTRAINT [DF__Comment__Rate__5CD6CB2B]  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[Delivery] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__OrderDat__5165187F]  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF__Orders__Delivere__52593CB8]  DEFAULT ((0)) FOR [Delivered]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Quantit__4316F928]  DEFAULT ((1000)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__ViewCou__440B1D61]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__Rate__44FF419A]  DEFAULT ((0)) FOR [Rate]
GO
ALTER TABLE [dbo].[AccountAddress]  WITH CHECK ADD  CONSTRAINT [FK__AccountAd__Accou__3A81B327] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[Account] ([AccountCode])
GO
ALTER TABLE [dbo].[AccountAddress] CHECK CONSTRAINT [FK__AccountAd__Accou__3A81B327]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK__Comment__Account__5DCAEF64] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[Account] ([AccountCode])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK__Comment__Account__5DCAEF64]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK__Comment__Product__5EBF139D] FOREIGN KEY([ProductCode])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK__Comment__Product__5EBF139D]
GO
ALTER TABLE [dbo].[Contact]  WITH CHECK ADD  CONSTRAINT [FK__Contact__Account__619B8048] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[Account] ([AccountCode])
GO
ALTER TABLE [dbo].[Contact] CHECK CONSTRAINT [FK__Contact__Account__619B8048]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__59063A47] FOREIGN KEY([ProductCode])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Produ__59063A47]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__AccountA__5535A963] FOREIGN KEY([AccountAddressCode])
REFERENCES [dbo].[AccountAddress] ([AccountAddressCode])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__AccountA__5535A963]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__AccountC__5441852A] FOREIGN KEY([AccountCode])
REFERENCES [dbo].[Account] ([AccountCode])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__AccountC__5441852A]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__PaymentC__534D60F1] FOREIGN KEY([PaymentCode])
REFERENCES [dbo].[Payment] ([PaymentCode])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__PaymentC__534D60F1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Promotio__5629CD9C] FOREIGN KEY([PromotionCode])
REFERENCES [dbo].[Promotion] ([PromotionCode])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Promotio__5629CD9C]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_DeliveryCode] FOREIGN KEY([DeliveryCode])
REFERENCES [dbo].[Delivery] ([DeliveryCode])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_DeliveryCode]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Categor__45F365D3] FOREIGN KEY([CategoryCode])
REFERENCES [dbo].[Category] ([CategoryCode])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Categor__45F365D3]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Promoti__46E78A0C] FOREIGN KEY([PromotionCode])
REFERENCES [dbo].[Promotion] ([PromotionCode])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Promoti__46E78A0C]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Brand] FOREIGN KEY([BrandCode])
REFERENCES [dbo].[Brand] ([BrandCode])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Brand]
GO
ALTER TABLE [dbo].[ProductImg]  WITH CHECK ADD  CONSTRAINT [FK__ProductIm__Produ__6754599E] FOREIGN KEY([ProductCode])
REFERENCES [dbo].[Product] ([ProductCode])
GO
ALTER TABLE [dbo].[ProductImg] CHECK CONSTRAINT [FK__ProductIm__Produ__6754599E]
GO
