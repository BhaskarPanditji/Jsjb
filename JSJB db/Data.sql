USE [WebSpaceIND_JSJB]
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 
GO
INSERT [dbo].[tblCategory] ([CategoryID], [SerialNumber], [Category], [CategoryIcon], [CategoryImage], [CategoryStatusID]) VALUES (2, 1, N'Printing', N'', N'', 0)
GO
INSERT [dbo].[tblCategory] ([CategoryID], [SerialNumber], [Category], [CategoryIcon], [CategoryImage], [CategoryStatusID]) VALUES (3, 2, N'Gift Gallary', N'', N'', 0)
GO
INSERT [dbo].[tblCategory] ([CategoryID], [SerialNumber], [Category], [CategoryIcon], [CategoryImage], [CategoryStatusID]) VALUES (4, 3, N'Interior Designing', N'', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSubCategory] ON 
GO
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SerialNumber], [CategoryID], [SubCategory], [SubCategoryIcon], [SubCategoryImage], [SubCategoryStatusID]) VALUES (2, 1, 3, N'Mug Printing', N'', N'', 0)
GO
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SerialNumber], [CategoryID], [SubCategory], [SubCategoryIcon], [SubCategoryImage], [SubCategoryStatusID]) VALUES (3, 2, 3, N'T-Sirt Printing', N'', N'', 0)
GO
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SerialNumber], [CategoryID], [SubCategory], [SubCategoryIcon], [SubCategoryImage], [SubCategoryStatusID]) VALUES (4, 3, 3, N'Diary Printing', N'', N'', 0)
GO
INSERT [dbo].[tblSubCategory] ([SubCategoryID], [SerialNumber], [CategoryID], [SubCategory], [SubCategoryIcon], [SubCategoryImage], [SubCategoryStatusID]) VALUES (5, 4, 3, N'Prize Shield', N'', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[tblSubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUnit] ON 
GO
INSERT [dbo].[tblUnit] ([UnitID], [Unit]) VALUES (1, N'S/F')
GO
INSERT [dbo].[tblUnit] ([UnitID], [Unit]) VALUES (2, N'Item')
GO
SET IDENTITY_INSERT [dbo].[tblUnit] OFF
GO
SET IDENTITY_INSERT [dbo].[tblProducts] ON 
GO
INSERT [dbo].[tblProducts] ([ProductID], [CategoryID], [SubCategoryID], [ProductName], [UnitID], [IsGSTApplicable], [GSTPercent], [Rate], [ProductImage], [ProductStatusID]) VALUES (1, 3, 2, N'Test', 2, 0, CAST(0.00 AS Decimal(5, 2)), CAST(150.00 AS Decimal(18, 2)), N'3d9920Screenshot 2025-11-24 123112.png', 0)
GO
INSERT [dbo].[tblProducts] ([ProductID], [CategoryID], [SubCategoryID], [ProductName], [UnitID], [IsGSTApplicable], [GSTPercent], [Rate], [ProductImage], [ProductStatusID]) VALUES (5, 3, 2, N'Sa', 2, 0, CAST(0.00 AS Decimal(5, 2)), CAST(100.00 AS Decimal(18, 2)), N'3b5e5a133911883073061851.jpg', 0)
GO
INSERT [dbo].[tblProducts] ([ProductID], [CategoryID], [SubCategoryID], [ProductName], [UnitID], [IsGSTApplicable], [GSTPercent], [Rate], [ProductImage], [ProductStatusID]) VALUES (6, 3, 3, N'Demo01', 2, 0, CAST(0.00 AS Decimal(5, 2)), CAST(50.00 AS Decimal(18, 2)), N'1ef0b8Screenshot 2025-11-27 213230.png', 0)
GO
SET IDENTITY_INSERT [dbo].[tblProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[tblService] ON 
GO
INSERT [dbo].[tblService] ([ServiceID], [Service], [Icon], [Image], [StatusID]) VALUES (1, N'Printing Press', N'cb87d3Screenshot 2025-07-16 040008.png', N'449434Screenshot 2025-08-02 111307.png', 0)
GO
INSERT [dbo].[tblService] ([ServiceID], [Service], [Icon], [Image], [StatusID]) VALUES (2, N'Gift Gallery', N'', N'', 0)
GO
SET IDENTITY_INSERT [dbo].[tblService] OFF
GO
SET IDENTITY_INSERT [dbo].[tblState] ON 
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (18, N'Jammu & Kashmir', N'01')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (19, N'Himachal Pradesh', N'02')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (20, N'Punjab', N'03')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (21, N'Chandigarh', N'04')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (22, N'Uttarakhand', N'05')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (23, N'Haryana', N'06')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (24, N'Delhi', N'07')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (25, N'Rajasthan', N'08')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (26, N'Uttar Pradesh', N'09')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (27, N'Bihar', N'10')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (28, N'Sikkim', N'11')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (29, N'Arunachal Pradesh', N'12')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (30, N'Nagaland', N'13')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (31, N'Manipur', N'14')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (32, N'Mizoram', N'15')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (33, N'Tripura', N'16')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (34, N'Meghalaya', N'17')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (35, N'Assam', N'18')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (36, N'West Bengal', N'19')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (37, N'Jharkhand', N'20')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (38, N'Odisha', N'21')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (39, N'Chhattisgarh', N'22')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (40, N'Madhya Pradesh', N'23')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (41, N'Gujarat', N'24')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (42, N'Daman & Diu', N'25')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (43, N'Dadra & Nagar Haveli', N'26')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (44, N'Maharashtra', N'27')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (45, N'Andhra Pradesh (Old)', N'28')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (46, N'Karnataka', N'29')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (47, N'Goa', N'30')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (48, N'Lakshadweep', N'31')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (49, N'Kerala', N'32')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (50, N'Tamil Nadu', N'33')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (51, N'Puducherry', N'34')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (52, N'Andaman & Nicobar Islands', N'35')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (53, N'Telangana', N'36')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (54, N'Andhra Pradesh (Newly Added)', N'37')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (55, N'Ladakh (Newly Added)', N'38')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (56, N'Others Territory', N'97')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (57, N'Center Jurisdiction', N'99')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (69, N'Test055', N'101')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (70, N'Test4188', N'4188')
GO
INSERT [dbo].[tblState] ([StateID], [State], [StateCode]) VALUES (71, N'Test0225', N'8652')
GO
SET IDENTITY_INSERT [dbo].[tblState] OFF
GO
SET IDENTITY_INSERT [dbo].[tblSupplier] ON 
GO
INSERT [dbo].[tblSupplier] ([SupplierID], [ServiceID], [FirmName], [ContactPerson], [ContactNo], [Address], [City], [StateID], [LandMark], [Pincode], [EmailID], [Password], [StatusID]) VALUES (1, 2, N'Webspace Info Solution', N'VipinSingh Luhach', N'8000105502', N'VPO Nandha.........', N'Bhiwani', 23, N'Near PNB Bank', N'127021', N'vipin.luhach@gmail.com', N'4188', 0)
GO
SET IDENTITY_INSERT [dbo].[tblSupplier] OFF
GO
SET IDENTITY_INSERT [dbo].[tblLogin] ON 
GO
INSERT [dbo].[tblLogin] ([id], [UserName], [Password], [EmailID]) VALUES (1, N'admin', N'admin', N'webspace.ind@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[tblLogin] OFF
GO
