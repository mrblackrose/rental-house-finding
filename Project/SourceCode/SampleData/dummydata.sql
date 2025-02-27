DELETE FROM [RentalHouseFinding].[dbo].[Users]
GO

DELETE FROM [RentalHouseFinding].[dbo].[Roles]
GO

INSERT INTO [RentalHouseFinding].[dbo].[Roles]
           ([Name]
           ,[Description]
           ,[IsDeleted])
     VALUES
           ('Admin','Description',0),('Moderator','Description',0),('User','Description',0)
GO

DELETE FROM [RentalHouseFinding].[dbo].[AdvanceSearchScores]

GO

INSERT INTO [RentalHouseFinding].[dbo].[AdvanceSearchScores] VALUES 
			(N'Không quan tâm',0),(N'Nhu cầu thấp',5),(N'Có nhu cầu',10),(N'Nhu cầu cao',15)

GO

DELETE FROM [RentalHouseFinding].[dbo].[PostStatuses]

GO

INSERT INTO [RentalHouseFinding].[dbo].[PostStatuses] VALUES 
			(N'Đã kích hoạt','Description',0),('Pending','Description',0),('Violated','Description',0)

GO

DELETE FROM [RentalHouseFinding].[dbo].Categories

GO

INSERT INTO [RentalHouseFinding].[dbo].Categories VALUES 
			(N'Phòng trọ','Description',0),(N'Nhà ở riêng','Description',0),(N'Văn phòng','Description',0),(N'Nhượng phòng','Description',0),(N'Ở ghép','Description',0)

GO


DELETE FROM [RentalHouseFinding].[dbo].Districts

GO


DELETE FROM [RentalHouseFinding].[dbo].Provinces

GO

INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'An Giang', 10.5215836, 105.12589550000007, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bà Rịa Vũng Tàu', 10.5417397, 107.24299759999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bạc Liêu', 9.260353199999999, 105.75215370000001, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bắc Kạn', 21.6004401, 105.83152410000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bắc Giang', 21.3014947, 106.62913040000001, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bắc Ninh', 21.183901, 106.05600000000004, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bến Tre', 10.1081553, 106.44058719999998, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bình Dương', 11.1423834, 106.62913040000001, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bình Định', 14.1665324, 108.90268300000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bình Phước', 11.7511894, 106.72346390000007, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Bình Thuận', 10.9804603, 108.26147749999996, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Cà Mau', 9.1833333, 105.14999999999998, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Cao Bằng', 22.66374, 106.26750190000007, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Cần Thơ', 10.03183, 105.78379799999993, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Đà Nẵng', 16.051571, 108.21489700000006, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Đắk Lắk', 12.6661944, 108.03824750000001, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Đăk Nông', 12.0036455, 107.68764809999993, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Điện Biên', 21.4094269, 103.03558520000001, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Đồng Nai', 10.9574128, 106.84268710000003, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Đồng Tháp', 10.4549723, 105.63403519999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Gia Lai', 13.7737008, 108.23775190000003, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hà Giang', 22.8025588, 104.97844940000004, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hà Nam', 34.765527, 113.75365799999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hà Nội', 21.0333333, 105.85000000000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hà Tĩnh', 18.340521, 105.90740200000005, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hải Dương', 20.9373413, 106.31455419999998, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hải Phòng', 20.861361, 106.679802, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hậu Giang', 9.757897999999999, 105.6412527, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hòa Bình', 20.8306409, 105.33989429999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hồ Chí Minh', 10.8230989, 106.6296638, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Hưng Yên', 20.8525711, 106.01699710000003, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Khánh Hòa', 12.2387911, 109.19674880000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Kiên Giang', 9.8249587, 105.12589550000007, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Kon Tum', 14.3497403, 108.0004606, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Lai Châu', 22.3554825, 103.26634790000003, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Lâm Đồng', 11.9404192, 108.45831320000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Lạng Sơn', 21.853708, 106.76151900000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Lào Cai', 22.275944, 104.19309180000005, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Long An', 10.5330098, 106.40525409999998, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Nam Định', 20.42, 106.16833329999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Nghệ An', 19.1483712, 104.84546190000003, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Ninh Bình', 20.2506149, 105.97445360000006, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Ninh Thuận', 11.5825677, 108.99120659999994, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Phú Thọ', 21.2606683, 105.12589550000007, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Phú Yên', 13.1057062, 109.29504799999995, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Quảng Bình', 17.4659391, 106.59839579999993, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Quảng Nam', 15.598002, 107.85838680000006, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Quảng Ngãi', 15.12382, 108.81169899999998, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Quảng Ninh', 21.2432501, 107.19572029999995, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Quảng Trị', 16.8088928, 107.08937979999996, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Sóc Trăng', 9.602521, 105.97390489999998, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Sơn La', 21.3270341, 103.91412880000007, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Tây Ninh', 11.3675415, 106.11928020000005, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Thái Bình', 20.4463471, 106.33658279999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Thái Nguyên', 37.87059, 112.54887899999994, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Thanh Hóa', 19.809389, 105.776703, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Thừa Thiên Huế', 16.4498, 107.5623501, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Tiền Giang', 10.4190052, 106.29929119999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Trà Vinh', 9.9513316, 106.33460609999997, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Tuyên Quang', 21.81846, 105.21140300000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Vĩnh Long', 10.2448442, 105.95886500000006, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Vĩnh Phúc', 21.2973262, 105.60606610000002, 0);
INSERT INTO Provinces (Name, Lat, Lon, IsDeleted) VALUES (N'Yên Bái', 21.8698428, 104.56552729999999, 0);



GO

INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Xuyên', 10.3759416, 105.41854060000003, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Đốc', 10.6820814, 105.0823967, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Châu', 10.78987, 105.24250000000006, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Phú', 10.8512167, 105.1025075, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Phú', 10.5814886, 105.23124580000001, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chợ Mới', 10.4825247, 105.47710840000002, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Tân', 8.9291357, 104.89216680000004, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thoại Sơn', 10.2759051, 105.24288530000001, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tịnh Biên', 10.549107, 105.0089888, 1, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vũng Tàu', 10.4113797, 107.13622399999997, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bà Rịa', 10.508928, 107.18162570000004, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Điền', 10.4449241, 107.23117739999998, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đất Đỏ', 10.4728035, 107.3139304, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Đức', 10.6284702, 107.24299759999997, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Thành', 10.5726243, 107.07756710000001, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Côn Đảo', 8.7165957, 106.61734150000007, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Xuyên Mộc', 10.6177683, 107.43219590000001, 2, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bạc Liêu', 9.260353199999999, 105.75215370000001, 3, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hồng Dân', 9.553902899999999, 105.45204999999999, 3, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hòa Bình', 9.2704595, 105.58973860000003, 3, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Lợi', 9.3450296, 105.71164640000006, 3, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Giá Rai', 9.260136, 105.37531289999993, 3, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phước Long', 9.4006715, 105.43023829999993, 3, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Hải', 9.163064199999999, 105.45367179999994, 3, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Kạn', 22.146061, 105.8284989, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ba Bể', 22.3636887, 105.73511710000002, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bạch Thông', 22.2360787, 105.85251540000002, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chợ Đồn', 22.1964994, 105.54743729999996, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chợ Mới', 10.4825247, 105.47710840000002, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Na Rì', 22.1406595, 106.11105010000006, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngân Sơn', 22.4281787, 106.01699710000003, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Pác Nặm', 22.6126367, 105.67032259999996, 4, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Giang', 21.2909028, 106.18670270000007, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Thế', 21.5128774, 106.1345705, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Yên', 21.3785203, 106.08753260000003, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lục Ngạn', 21.4354043, 106.67629199999999, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hiệp Hoà', 21.3459147, 105.94648740000002, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lạng Giang', 21.3646422, 106.22867999999994, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn Động', 36.668627, 117.02041099999997, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lục Nam', 21.2996631, 106.41703110000003, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Việt Yên', 21.2858633, 106.08753260000003, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Dũng', 21.2257315, 106.22867999999994, 5, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Ninh', 21.183901, 106.05600000000004, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Từ Sơn', 21.1196529, 105.96231609999995, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gia Bình', 21.0764073, 106.21691390000001, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lương Tài', 21.0278149, 106.24044679999997, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quế Võ', 21.1377307, 106.18161959999998, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thuận Thành', 21.0437995, 106.07577489999994, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tiên Du', 21.1178311, 106.02875119999999, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Phong', 21.1941429, 105.95823719999999, 6, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Đại', 10.1596899, 106.6998767, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bến Tre', 10.241361, 106.37626009999997, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ba Tri', 10.0417849, 106.59367410000004, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Giồng Trôm', 10.1718844, 106.46414589999995, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chợ Lách', 10.241094, 106.16985629999999, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỏ Cày Bắc', 10.1700758, 106.28752099999997, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thạnh Phú', 9.9077234, 106.55840710000007, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỏ Cày Nam', 10.0468396, 106.36992710000004, 7, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thủ Dầu Một', 10.9929842, 106.65570730000002, 8, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thuận An', 10.9302095, 106.71167000000003, 8, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Dĩ An', 10.9155965, 106.76920130000008, 8, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bến Cát', 11.101302, 106.58197889999997, 8, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Dầu Tiếng', 11.348909, 106.46414589999995, 8, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Uyên', 11.1111341, 106.7942405, 8, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Giáo', 11.2655822, 106.77064580000001, 8, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quy Nhơn', 13.76995, 109.24610099999995, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Nhơn', 13.8641717, 109.06909760000008, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Lão', 20.8231168, 106.55840710000007, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoài Ân', 14.3040385, 108.85514839999996, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoài Nhơn', 14.4666386, 109.04531999999995, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phù Cát', 14.0134002, 109.05474759999993, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phù Mỹ', 14.2157645, 109.11665659999994, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuy Phước', 13.8565034, 109.16422080000007, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tây Sơn', 13.9479428, 108.85514839999996, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vân Canh', 13.674033, 108.95022319999998, 9, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đồng Xoài', 11.5024922, 106.84143740000002, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Long', 11.6922032, 106.60555339999996, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phước Long', 11.8337331, 106.99489449999999, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bù Đăng', 11.7693374, 107.14845209999999, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bù Đốp', 11.9891869, 106.7942405, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bù Gia Mập', 12.0392238, 107.05394339999998, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chơn Thành', 11.4696902, 106.65270989999999, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đồng Phú', 11.5123355, 106.9905473, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hớn Quản', 11.6014622, 106.65270989999999, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lộc Ninh', 11.803677, 106.58197889999997, 10, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phan Thiết', 10.9804603, 108.26147749999996, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'La Gi', 10.71574, 107.79915449999999, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuy Phong', 11.3178827, 108.65796030000001, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Bình', 11.2551834, 108.38013139999998, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hàm Thuận Bắc', 11.1116858, 108.13196340000002, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hàm Thuận Nam', 10.8502937, 107.90578129999994, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tánh Linh', 11.0980639, 107.67850099999998, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hàm Tân', 10.6935927, 107.62153209999997, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đức Linh', 11.1977289, 107.55051520000006, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'đảo Phú Quý', 10.5335281, 108.94428040000003, 11, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cà Mau', 9.1833333, 105.14999999999998, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đầm Dơi', 8.9994186, 105.26629309999998, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngọc Hiển', 8.667725599999999, 105.00323660000004, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cái Nước', 8.986776299999999, 105.05574150000007, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trần Văn Thời', 9.100971600000001, 104.89216680000004, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'U Minh', 9.3554435, 104.98561760000007, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thới Bình', 9.347362799999999, 105.17268160000003, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Năm Căn', 8.8153071, 105.05574150000007, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Tân', 8.9291357, 104.89216680000004, 12, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cao Bằng', 22.66374, 106.26750190000007, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bảo Lạc', 22.8786248, 105.68817880000006, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bảo Lâm', 11.7337863, 107.71624999999995, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hạ Lang', 22.7042438, 106.6998767, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hà Quảng', 22.9025402, 106.1345705, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hòa An', 22.7538704, 106.22867999999994, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nguyên Bình', 22.6230856, 105.92299000000003, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phục Hòa', 22.5392684, 106.51127120000001, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Uyên', 22.68299, 106.46414589999995, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thạch An', 22.4663561, 106.32283380000001, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trùng Khánh', 22.8323826, 106.58197889999997, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thông Nông', 22.8439088, 105.9520986, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trà Lĩnh', 22.7903474, 106.32283380000001, 13, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cái Răng', 9.9992392, 105.80435720000003, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ninh Kiều', 10.0280487, 105.76445960000001, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ô Môn', 105.630283,105.630283 , 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Thủy', 10.0679866, 105.7233814, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thốt Nốt', 10.2405338, 105.53368150000006, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cờ Đỏ', 10.1135304, 105.45367179999994, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phong Điền', 16.503112, 107.33757909999997, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thới Lai', 10.0016323, 105.52399119999995, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Thạnh', 10.1843478, 105.33653600000002, 14, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hải Châu', 16.0472002, 108.21995879999997, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Khê', 16.0641802, 108.18734070000005, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Liên Chiểu', 16.1531669, 108.1072924, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cẩm Lệ', 16.0153669, 108.19623619999993, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn Trà', 16.1069981, 108.2521815, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hòa Vang', 16.0585633, 108.02430099999992, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngũ Hành Sơn', 15.980392, 108.27334100000007, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'đảo Hoàng Sa', 20.9742657, 107.07913759999997, 15, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Buôn Ma Thuột', 12.6661944, 108.03824750000001, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Buôn Hồ', 12.8628297, 108.26147749999996, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ea Súp', 13.1862227, 107.76362100000006, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Krông Bông', 12.473032, 108.47508459999995, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Krông Pak', 12.7439968, 108.38013139999998, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Krông Buk', 13.0226831, 108.1903059, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Krông Ana', 12.4823793, 108.02430099999992, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Krông Năng', 12.9494439, 108.36233059999995, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'M Drăk', 12.7165586, 108.76009629999999, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lắk', 41.6352778, 19.71305559999996, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cư Kuin', 12.5810594, 108.1903059, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cư M gar', 12.8179939, 108.07532519999995, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ea Kar', 12.7981778, 108.54631649999999, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ea H leo', 13.3513527, 108.15546719999998, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Buôn Đôn', 12.8791607, 107.71624999999995, 16, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cư Jút', 12.657282, 107.86561240000003, 17, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk Glong', 12.1013642, 107.80235429999993, 17, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk Mil', 12.4503145, 107.62301179999997, 17, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk R Lấp', 11.9213338, 107.52684709999994, 17, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk Song', 12.2328311, 107.6216789, 17, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Krông Nô', 12.3426475, 107.81100000000004, 17, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuy Đức', 37.50294, 110.26336200000003, 17, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Điện Biên Phủ', 21.4094269, 103.03558520000001, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường Lay', 22.0498734, 103.16349880000007, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Điện Biên', 21.2044768, 103.03569400000003, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Điện Biên Đông', 21.2835093, 103.22018279999998, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường Ảng', 21.5641438, 103.22018279999998, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường Chà', 21.8596604, 103.03569400000003, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường Nhé', 22.0832638, 102.57570280000004, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tủa Chùa', 21.9232005, 103.40494450000006, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuần Giáo', 21.6427019, 103.40494450000006, 18, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Biên Hòa', 10.9574128, 106.84268710000003, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Khánh', 10.9442612, 107.23117739999998, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Thành', 10.7932946, 107.01352969999994, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nhơn Trạch', 10.6968843, 106.8907696, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trảng Bom', 10.9667039, 107.03032210000003, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thống Nhất', 10.994359, 107.15471580000008, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Cửu', 11.3049005, 107.06052780000005, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cẩm Mỹ', 10.8225699, 107.26663959999996, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Xuân Lộc', 10.9652026, 107.43219590000001, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Phú', 11.4275308, 107.36122999999998, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Định Quán', 11.1576779, 107.27405279999994, 19, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cao Lãnh', 10.4549723, 105.63403519999997, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sa Đéc', 10.3057678, 105.74685350000004, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hồng Ngự', 10.8037442, 105.34608830000002, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cao Lãnh', 10.4659577, 105.70597850000001, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hồng Ngự', 10.7979866, 105.28970419999996, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lai Vung', 10.255455, 105.66471419999993, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lấp Vò', 10.3578054, 105.63081590000002, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Nông', 21.2858685, 105.23118269999998, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Hồng', 10.876115, 105.47710840000002, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Bình', 10.6135294, 105.47710840000002, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tháp Mười', 10.5302706, 105.82902979999994, 20, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Pleiku', 13.9833333, 108, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chư Prông', 13.541918, 107.76362100000006, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chư Păh', 14.1765309, 107.92948150000007, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chư Sê', 13.7141088, 108.06638640000006, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ayun Pa', 13.3743393, 108.39898089999997, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chư Pưh', 13.5, 108.14999999999998, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk Đoa', 14.1135412, 108.1665855, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Thiện', 19.3333333, 104.21666670000002, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Khê', 20.8242644, 106.70999849999998, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mang Yang', 13.9928022, 108.28520490000005, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kông Chro', 13.7037218, 108.57006360000003, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Krông Pa', 13.2160038, 108.67268910000007, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ia Grai', 13.9539099, 107.62153209999997, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đak Pơ', 13.946425, 108.59381239999993, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'K Bang', 14.1466174, 108.60208179999995, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ia Pa', 13.5261514, 108.57006360000003, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đức Cơ', 50.5643451, 13.53849009999999, 21, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hà Giang', 22.8025588, 104.97844940000004, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Mê', 22.7811484, 105.26629309999998, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Quang', 22.4450248, 104.89216680000004, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đồng Văn', 23.2246718, 105.24288530000001, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoàng Su Phì', 22.7417169, 104.70543099999998, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mèo Vạc', 23.1341053, 105.45367179999994, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quản Bạ', 23.087186, 104.98561760000007, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quang Bình', 22.4624387, 104.70543099999998, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vị Xuyên', 22.7241336, 104.89216680000004, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Xín Mần', 22.6659156, 104.51892139999995, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Minh', 23.0434955, 105.1960795, 22, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kim Bảng', 20.5669534, 105.85251540000002, 23, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Lục', 34.82926, 111.19413299999997, 23, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Duy Tiên', 20.6381089, 105.95823719999999, 23, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Liêm', 21.7307297, 104.9161345, 23, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phủ Lý', 20.56027, 106.00160200000005, 23, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lý Nhân', 20.5553005, 106.099291, 23, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ba Đình', 21.0358515, 105.82609430000002, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoàn Kiếm', 21.0272662, 105.85545130000003, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tây Hồ', 21.0738016, 105.82315879999999, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Biên', 21.0386761, 105.88774940000008, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cầu Giấy', 21.0423691, 105.78793710000002, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đống Đa', 21.0134822, 105.82694149999998, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hai Bà Trưng', 21.0040872, 105.85545130000003, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoàng Mai', 20.9713806, 105.86425929999996, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Xuân', 20.9937774, 105.81141750000006, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hà Đông', 20.955835, 105.75636580000003, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đan Phượng', 21.1050845, 105.67644610000002, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ba Vì', 21.1208466, 105.38338079999994, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Anh', 21.1231639, 105.85251540000002, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoài Đức', 21.0332922, 105.69991219999997, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gia Lâm', 21.0319389, 105.95823719999999, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỹ Đức', 20.6727806, 105.71164640000006, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phúc Thọ', 21.1139044, 105.58261229999994, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Xuyên', 20.7352032, 105.91124239999999, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mê Linh', 21.182938, 105.71164640000006, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quốc Oai', 20.9725044, 105.60606610000002, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sóc Sơn', 21.2622565, 105.85251540000002, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thạch Thất', 21.0044411, 105.51226939999992, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Oai', 20.8643542, 105.77032869999994, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thường Tín', 20.8554997, 105.86425929999996, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Trì', 20.9272518, 105.84077219999995, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Từ Liêm', 21.0520539, 105.74685350000004, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ứng Hòa', 20.7103817, 105.80554710000001, 24, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hà Tĩnh', 18.3559537, 105.88774940000008, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hồng Lĩnh', 18.5301567, 105.70645690000003, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cẩm Xuyên', 18.1721653, 106.01699710000003, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Can Lộc', 18.4516009, 105.71164640000006, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đức Thọ', 18.5056718, 105.61779419999993, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hương Khê', 18.2037562, 105.6412527, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hương Sơn', 18.5118006, 105.26629309999998, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kỳ Anh', 18.0559583, 106.29929119999997, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nghi Xuân', 18.6282217, 105.80554710000001, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thạch Hà', 18.301316, 105.85251540000002, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vũ Quang', 18.3365936, 105.43023829999993, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lộc Hà', 18.4817584, 105.89949560000002, 25, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kim Thành', 20.9329727, 106.49948889999996, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nam Sách', 20.995464, 106.33460609999997, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cẩm Giàng', 20.9479485, 106.22867999999994, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hải Dương', 20.9373413, 106.31455419999998, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Giang', 20.870356, 106.19338370000003, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Hà', 20.9295379, 106.41703110000003, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chí Linh', 21.1608547, 106.41703110000003, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tứ Kỳ', 20.803485, 106.40525409999998, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gia Lộc', 20.8612295, 106.28752099999997, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kinh Môn', 21.0127352, 106.51127120000001, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ninh Giang', 20.7491091, 106.36992710000004, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Miện', 20.7821204, 106.22038150000003, 26, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Dương Kinh', 20.7784431, 106.71756690000007, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hồng Bàng', 20.8747238, 106.64976230000002, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngô Quyền', 20.8578805, 106.70282500000008, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hải An', 20.8147445, 106.75884940000003, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đồ Sơn', 20.7223607, 106.75884940000003, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lê Chân', 20.8397231, 106.682188, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kiến An', 20.8097533, 106.63502500000004, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Dương', 20.8797382, 106.5701927, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Lão', 20.8231168, 106.55840710000007, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tiên Lãng', 20.6925142, 106.59376580000003, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kiến Thụy', 20.7317372, 106.66450069999996, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thủy Nguyên', 20.9524218, 106.65270989999999, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Bảo', 20.6936727, 106.46414589999995, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'đảo Cát Hải', 20.8092672, 106.8709404, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'đảo Bạch Long Vĩ', 20.1368904, 107.7310526, 27, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vị Thanh', 9.7731921, 105.45370819999994, 28, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngã Bảy', 9.8252566, 105.81728810000004, 28, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 28, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành A', 11.3081393, 106.01699710000003, 28, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Mỹ', 9.6552847, 105.52399119999995, 28, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phụng Hiệp', 9.776212600000001, 105.71164640000006, 28, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vị Thủy', 9.826082399999999, 105.57088650000003, 28, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kim Bôi', 20.6901132, 105.52399119999995, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hòa Bình', 20.8306409, 105.33989429999997, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đà Bắc', 20.8381545, 105.17268160000003, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lương Sơn', 20.829319, 105.52399119999995, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lạc Sơn', 20.4413353, 105.45367179999994, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cao Phong', 20.7072205, 105.33653600000002, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kỳ Sơn', 19.38547, 104.1827912, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lạc Thủy', 20.4829978, 105.75859079999998, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Thủy', 20.4032247, 105.61779419999993, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mai Châu', 20.6901339, 105.0089888, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Lạc', 20.6228033, 105.24288530000001, 29, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 2', 48.8691667, 2.340555600000016, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 1', 48.86, 2.3411111000000346, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 3', 48.8638194, 2.3616583000000446, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 5', 48.8472222, 2.3444443999999294, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 4', 48.8555556, 2.3555556000000024, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 6', 48.8505306, 2.3322332999999844, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 7', 48.8591667, 2.312777800000049, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 8', 48.8741667, 2.311111100000062, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 9', 48.8782806, 2.336966699999948, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 10', 48.8755083, 2.357852800000046, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 11', 48.8586778, 2.3793055999999524, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quận 12', 48.8408083, 2.388183300000037, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thủ Đức', 10.8494094, 106.75370550000002, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Phú', 10.7988311, 106.62323590000005, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Nhuận', 10.4516036, 106.04917999999998, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Thạnh', 10.8105831, 106.70914219999997, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Bình', 10.8084306, 106.64681480000002, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gò Vấp', 10.8398228, 106.6703963, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Tân', 10.7623139, 106.59376580000003, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Chánh', 10.7430983, 106.54662209999992, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cần Giờ', 10.5083266, 106.86350040000002, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Củ Chi', 10.9959552, 106.51127120000001, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hóc Môn', 10.8931299, 106.59376580000003, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nhà Bè', 10.6687906, 106.71167000000003, 30, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hưng Yên', 20.6523683, 106.05226160000007, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Văn Giang', 20.93926, 105.95823719999999, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Văn Lâm', 20.9765818, 106.05226160000007, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Mỹ', 20.8861904, 106.02875119999999, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỹ Hào', 20.9257379, 106.099291, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Khoái Châu', 20.8316503, 105.99349099999995, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tiên Lữ', 20.6919516, 106.1228099, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kim Động', 20.747229, 106.02875119999999, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ân Thi', 20.8099609, 106.099291, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phù Cừ', 20.7083369, 106.19338370000003, 31, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vạn Ninh', 12.7243439, 109.26269920000004, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Khánh Sơn', 12.0249415, 108.92645240000002, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Diên Khánh', 12.2570417, 109.04531999999995, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nha Trang', 12.2387911, 109.19674880000002, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Khánh Vĩnh', 12.2705951, 108.85514839999996, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ninh Hòa', 12.512997, 109.14043800000002, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cam Ranh', 11.9008657, 109.14043800000002, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cam Lâm', 12.07539, 109.14043800000002, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'đảo Trường Sa', 28.228209, 112.93881399999998, 32, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Rạch Giá', 10.021507, 105.09109739999997, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hà Tiên', 10.381909, 104.49017279999998, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Biên', 9.8064559, 105.05574150000007, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'An Minh', 9.664718299999999, 104.94956509999997, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Giồng Riềng', 9.921504599999999, 105.38338079999994, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Giang Thành', 10.4771358, 104.68210479999993, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gò Quao', 9.752507699999999, 105.28970419999996, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hòn Đất', 10.2227003, 104.98561760000007, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kiên Lương', 10.2489246, 104.59000300000002, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Quốc', 10.2234596, 103.97260979999999, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Hiệp', 10.101792, 105.24288530000001, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'U Minh Thượng', 9.6311125, 105.1025075, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Thuận', 9.5384134, 105.24288530000001, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kiên Hải', 9.706952399999999, 104.35591580000005, 33, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk Tô', 14.6562021, 107.81100000000004, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk Hà', 14.641214, 108.00059329999999, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngọc Hồi', 14.6710249, 107.62153209999997, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kon Plông', 14.7976892, 108.28520490000005, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kon Rẫy', 14.5607568, 108.1665855, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sa Thầy', 14.4355779, 107.76362100000006, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tu Mơ Rông', 14.9105786, 108.00059329999999, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đắk Glei', 15.113472, 107.71624999999995, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kon Tum', 14.3497403, 108.0004606, 34, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường Tè', 22.400379, 102.7135121, 35, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sìn Hồ', 22.3048884, 103.31252990000007, 35, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phong Thổ', 22.5776336, 103.40494450000006, 35, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Uyên', 11.1111341, 106.7942405, 35, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Than Uyên', 21.8922107, 103.77526339999997, 35, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lai Châu', 22.3997565, 103.44772190000003, 35, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Đường', 22.3497051, 103.61312029999999, 35, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đà Lạt', 11.9404192, 108.45831320000002, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bảo Lộc', 11.5731051, 107.8346924, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bảo Lâm', 11.7337863, 107.71624999999995, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cát Tiên', 11.6903361, 107.36122999999998, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Di Linh', 11.5346745, 108.09543510000003, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đam Rông', 12.0598218, 108.09543510000003, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đạ Huoai', 11.4101516, 107.64520849999997, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đạ Tẻh', 11.5067024, 107.48339950000002, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đơn Dương', 11.7452329, 108.54631649999999, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lạc Dương', 12.1218309, 108.47508459999995, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lâm Hà', 11.7906825, 108.1903059, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đức Trọng', 11.641927, 108.31029160000003, 36, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lạng Sơn', 21.853708, 106.76151900000002, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tràng Định', 22.2872995, 106.48770719999993, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Văn Quan', 20.7993956, 106.65498260000004, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Sơn', 16.0538032, 108.1770914, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Văn Lãng', 20.9505488, 107.07781260000002, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Gia', 10.3792639, 107.10714250000001, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hữu Lũng', 21.5659824, 106.29929119999997, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cao Lộc', 21.9036302, 106.84143740000002, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đình Lập', 21.5711978, 107.14845209999999, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lộc Bình', 21.7757592, 106.95947230000002, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chi Lăng', 21.6506944, 106.60555339999996, 37, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bảo Thắng', 22.3266996, 104.14660460000005, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lào Cai', 22.4458835, 104.00377639999999, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Hà', 22.4965469, 104.33264400000007, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sa Pa', 22.2497168, 103.9608091, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường Khương', 22.6785309, 104.12336670000002, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bảo Yên', 22.2763301, 104.44903980000004, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bát Xát', 22.5539336, 103.68258600000001, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Văn Bàn', 22.0894109, 104.19309180000005, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Si Ma Cai', 22.6659838, 104.26285099999996, 38, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân An', 10.5330098, 106.40525409999998, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bến Lức', 10.6931033, 106.46414589999995, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cần Đước', 10.5549448, 106.60555339999996, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cần Giuộc', 10.584373, 106.66450069999996, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đức Hòa', 10.8701029, 106.41703110000003, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đức Huệ', 10.8777796, 106.27575139999999, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mộc Hóa', 10.7642485, 105.94648740000002, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Hưng', 10.8226522, 105.66471419999993, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Thạnh', 10.5726243, 107.07756710000001, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Trụ', 10.5280095, 106.49948889999996, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Hưng', 10.9028612, 105.80554710000001, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thạnh Hóa', 10.664587, 106.18161959999998, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thủ Thừa', 10.7006857, 106.32283380000001, 39, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nam Định', 20.42, 106.16833329999997, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Giao Thủy', 20.2314086, 106.46414589999995, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hải Hậu', 20.1568875, 106.27575139999999, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỹ Lộc', 21.40704, 106.19239800000003, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nam Trực', 20.3358927, 106.21691390000001, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nghĩa Hưng', 20.0732479, 106.18161959999998, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trực Ninh', 20.243376, 106.21691390000001, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vụ Bản', 20.370142, 106.099291, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Xuân Trường', 20.2993311, 106.3581527, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ý Yên', 20.3684984, 105.99349099999995, 40, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Con Cuông', 19.0130593, 104.79877099999999, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Diễn Châu', 19.0179688, 105.57088650000003, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cửa Lò', 18.8166667, 105.71666670000002, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Anh Sơn', 18.9688054, 105.05574150000007, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vinh', 18.6795848, 105.6813333, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thái Hòa', 19.2931124, 105.46538970000006, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đô Lương', 18.8990982, 105.33653600000002, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hưng Nguyên', 18.6316742, 105.62952300000006, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kỳ Sơn', 19.38547, 104.1827912, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nam Đàn', 18.6983445, 105.52399119999995, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nghi Lộc', 18.8142042, 105.58356630000003, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nghĩa Đàn', 19.4003352, 105.43023829999993, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quỳ Hợp', 19.3528917, 105.17268160000003, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quế Phong', 19.6862686, 104.95631760000003, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quỳnh Lưu', 19.2200256, 105.6412527, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Chương', 18.6967739, 105.26629309999998, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Kỳ', 19.0748796, 105.17268160000003, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Thành', 19.0511285, 105.45367179999994, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tương Dương', 19.2640131, 104.56552729999999, 41, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Khánh', 20.187228, 106.07577489999994, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nho Quan', 20.2976274, 105.75859079999998, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ninh Bình', 20.2506149, 105.97445360000006, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Mô', 20.1370289, 105.99349099999995, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kim Sơn', 30.741992, 121.34196900000006, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoa Lư', 16.0942804, 108.2337695, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Điệp', 14.0417877, 108.13841990000003, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gia Viễn', 20.3353002, 105.85251540000002, 42, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thuận Bắc', 11.7533327, 109.06909760000008, 43, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ninh Hải', 11.7032481, 109.16422080000007, 43, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ninh Sơn', 11.6888699, 108.73633700000005, 43, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ninh Phước', 11.4850435, 108.85514839999996, 43, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thuận Nam', 10.8415724, 107.87023469999997, 43, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bác Ái', 11.8334154, 108.85514839999996, 43, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phan Rang Tháp Chàm', 11.5825677, 108.99120659999994, 43, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Việt Trì', 21.3425399, 105.37166839999998, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Thọ', 21.4252786, 105.23118269999998, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cẩm Khê', 21.4298041, 105.05574150000007, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lâm Thao', 21.3026143, 105.30141090000006, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phù Ninh', 21.4753257, 105.28446080000003, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đoan Hùng', 21.6071636, 105.14928689999999, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hạ Hòa', 21.5735989, 105.0089888, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Sơn', 21.1665519, 104.98948510000002, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Nông', 21.2858685, 105.23118269999998, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Ba', 21.4677045, 105.14928689999999, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Lập', 21.3410625, 105.0089888, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Sơn', 21.0240198, 105.17268160000003, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Thủy', 21.1421734, 105.27799830000004, 44, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sông Cầu', 13.4744193, 109.23557640000001, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sông Hinh', 12.8786353, 108.95022319999998, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuy Hòa', 13.1057062, 109.29504799999995, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Hòa', 12.9580642, 109.35452699999996, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đồng Xuân', 21.037572, 105.8491798, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Hòa', 9.9467863, 106.32856429999993, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuy An', 13.297735, 109.23557640000001, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn Hòa', 13.1431691, 108.95022319999998, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tây Hòa', 10.8259856, 106.76527090000002, 45, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Ninh', 21.2432501, 107.19572029999995, 46, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đồng Hới', 17.4501984, 106.60756229999993, 46, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bố Trạch', 17.5047078, 106.29929119999997, 46, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Trạch', 17.8640126, 106.39347769999995, 46, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Minh Hóa', 17.719816, 105.92299000000003, 46, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuyên Hóa', 17.9319039, 105.97228139999993, 46, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lệ Thủy', 17.1064913, 106.67629199999999, 46, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Điện Bàn', 15.9064971, 108.21402799999998, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thăng Bình', 15.6890346, 108.38013139999998, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Trà My', 15.3202715, 108.21402799999998, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Kỳ', 15.6111646, 108.49882690000004, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nam Trà My', 15.0826614, 108.09543510000003, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hội An', 15.8800584, 108.3380469, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Núi Thành', 15.4229422, 108.59381239999993, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tiên Phước', 15.4964006, 108.26147749999996, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phước Sơn', 15.3762517, 107.81100000000004, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nông Sơn', 15.6557978, 107.97688749999998, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Giang', 15.926451, 107.71624999999995, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nam Giang', 15.6628546, 107.62153209999997, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đại Lộc', 15.836507, 107.97688749999998, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Duy Xuyên', 15.77511, 108.1665855, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Ninh', 21.4753257, 105.28446080000003, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hiệp Đức', 15.5590682, 108.08056940000006, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tây Giang', 15.8852628, 107.4890302, 47, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Ngãi', 15.1213873, 108.80441450000001, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đức Phổ', 14.762796, 108.97399540000004, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Minh Long', 14.9659262, 108.68882269999995, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lý Sơn', 15.3823069, 109.12260179999998, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mộ Đức', 14.9498041, 108.878915, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Sơn', 15.3166491, 108.78385720000006, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ba Tơ', 10.7074432, 106.62334039999996, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tư Nghĩa', 15.1065785, 108.74821650000001, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn Tịnh', 15.1860945, 108.73633700000005, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tây Trà', 20.9773672, 105.88367240000002, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn Tây', 21.136681, 105.51339699999994, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trà Bồng', 15.2512645, 108.49882690000004, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nghĩa Hành', 15.0026852, 108.78385720000006, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn Hà', 22.5059262, 103.97229190000007, 48, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hạ Long', 20.9711977, 107.04480690000003, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Móng Cái', 21.489544, 107.90578129999994, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cẩm Phả', 21.0694762, 107.3139304, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Uông Bí', 21.081585, 106.74705360000007, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vân Đồn', 21.0693983, 107.4202262, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Yên', 20.9334638, 106.84143740000002, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoành Bồ', 21.0551849, 107.04051670000001, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cô Tô', 21.0087462, 107.79843089999997, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tiên Yên', 21.3666878, 107.33757909999997, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Triều', 21.0958153, 106.60555339999996, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đầm Hà', 21.3619435, 107.59785770000008, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Liêu', 21.5410162, 107.43219590000001, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hải Hà', 21.4182232, 107.71624999999995, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ba Chẽ', 21.294325, 107.14845209999999, 49, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đa Krông', 16.5349165, 106.95947230000002, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Hà', 16.8088928, 107.08937979999996, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cam Lộ', 16.783695, 106.98308650000001, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hướng Hóa', 16.6495512, 106.67629199999999, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Trị', 16.7017044, 107.15434600000003, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Triệu Phong', 16.809184, 107.21935780000001, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gio Linh', 16.9165711, 107.03032210000003, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hải Lăng', 16.714002, 107.26663959999996, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cồn Cỏ', 9.9509423, 106.39642179999998, 50, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kế Sách', 9.8310108, 105.92299000000003, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngã Năm', 9.521517099999999, 105.61779419999993, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sóc Trăng', 9.602521, 105.97390489999998, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Phú', 9.628942100000002, 106.08753260000003, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỹ Xuyên', 9.465511099999999, 105.89949560000002, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỹ Tú', 9.599103999999999, 105.80554710000001, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trần Đề', 9.49978, 106.08753260000003, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thạnh Trị', 20.9272518, 105.84077219999995, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Châu', 9.324958200000001, 105.98045419999994, 51, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quỳnh Nhai', 21.832781, 103.55690000000004, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn La', 21.3270341, 103.91412880000007, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường La', 21.495112, 104.053676, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thuận Châu', 21.3900652, 103.63627150000002, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bắc Yên', 21.2451953, 104.43809599999997, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mai Sơn', 19.6112903, 104.4373961, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sông Mã', 20.2212322, 105.20653719999996, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mộc Châu', 20.9220823, 104.75209389999998, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Châu', 21.0050006, 104.33264400000007, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phù Yên', 13.1057062, 109.29504799999995, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sốp Cộp', 20.8874516, 103.49742579999997, 52, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tây Ninh', 11.3675415, 106.11928020000005, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trảng Bàng', 11.047508, 106.36992710000004, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Dương Minh Châu', 11.3595908, 106.27575139999999, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gò Dầu', 11.1402783, 106.27575139999999, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hòa Thành', 11.2680459, 106.14633170000002, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bến Cầu', 11.1506368, 106.08753260000003, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Biên', 11.572115, 106.01699710000003, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Châu', 11.5614393, 106.20514839999998, 53, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Kiến Xương', 20.4208256, 106.41703110000003, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thái Bình', 20.4463471, 106.33658279999997, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thái Thụy', 20.5457802, 106.55840710000007, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quỳnh Phụ', 20.6586032, 106.32586879999997, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tiền Hải', 20.3609414, 106.55840710000007, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hưng Hà', 20.5903748, 106.21691390000001, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vũ Thư', 20.4343787, 106.27575139999999, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Hưng', 20.5640924, 106.36992710000004, 54, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thái Nguyên', 37.87059, 112.54887899999994, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sông Công', 21.3685447, 105.85471729999995, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đại Từ 	Huyện', 21.5926527, 105.68620729999998, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Định Hóa', 19.8398552, 105.76759100000004, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đồng Hỷ', 21.6286393, 105.89949560000002, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phổ Yên', 21.413875, 105.8486183, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Bình', 15.5532603, 108.5219085, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Võ Nhai', 21.7793409, 106.01699710000003, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Lương', 21.786057, 105.71164640000006, 55, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thanh Hóa', 19.809389, 105.776703, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bỉm Sơn', 20.0807937, 105.85600180000006, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sầm Sơn', 19.738411, 105.89859799999999, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bá Thước', 20.3653356, 105.26629309999998, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cẩm Thủy', 21.0141994, 107.26368419999994, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hà Trung', 20.0617086, 105.80554710000001, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Đông Sơn', 34.18026, 117.16953899999999, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hoằng Hóa', 19.8259478, 105.85251540000002, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Như Xuân', 19.6149135, 105.35995679999996, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mường Lát', 20.4941326, 104.58883560000004, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Như Thanh', 25.532816, 113.68472700000007, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lang Chánh', 20.166759, 105.14928689999999, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Ngọc Lặc', 20.0785891, 105.35995679999996, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hậu Lộc', 19.9268879, 105.88774940000008, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nga Sơn', 19.9981878, 105.99349099999995, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nông Cống', 19.6113284, 105.66471419999993, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quan Sơn', 23.0181, 121.19399999999996, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Xương', 19.6913377, 105.80554710000001, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thiệu Hóa', 19.889182, 105.66471419999993, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thạch Thành', 26.314775, 116.34699499999999, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quan Hóa', 21.0430696, 105.80531500000006, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thường Xuân', 19.9012787, 105.26629309999998, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tĩnh Gia', 19.43838, 105.77451309999992, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Triệu Sơn', 19.8512387, 105.57088650000003, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Thọ Xuân', 21.5210541, 107.97125099999994, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Định', 19.9860515, 105.61779419999993, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Lộc', 10.7848361, 106.5538828, 56, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Quảng Điền', 16.5902415, 107.51501389999999, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Vang', 16.491213, 107.7399345, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'A Lưới', 16.2303741, 107.33757909999997, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phú Lộc', 16.2725431, 107.93947609999998, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hương Thủy', 16.420354, 107.66985699999998, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nam Đông', 16.1249688, 107.67074170000001, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hương Trà', 16.417, 107.41700000000003, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Huế (tỉnh lỵ)', 16.4498, 107.5623501, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phong Điền', 16.503112, 107.33757909999997, 57, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mỹ Tho', 10.3765284, 106.34388910000007, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gò Công', 10.4336021, 106.6409198, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cái Bè', 10.3718873, 105.94648740000002, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gò Công Đông', 10.3737254, 106.74705360000007, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Gò Công Tây', 10.3378629, 106.60555339999996, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chợ Gạo', 10.3793903, 106.45419029999994, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Phước', 10.5314211, 106.22867999999994, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cai Lậy', 10.4287401, 106.11105010000006, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tân Phú Đông', 10.2462427, 106.6998767, 58, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trà Vinh', 9.9513316, 106.33460609999997, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Càng Long', 9.9674087, 106.22867999999994, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cầu Kè', 9.8878863, 106.08753260000003, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tiểu Cần', 9.7969156, 106.18161959999998, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Châu Thành', 11.3081393, 106.01699710000003, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Cầu Ngang', 9.7830517, 106.46414589999995, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trà Cú', 9.7060851, 106.27575139999999, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Duyên Hải', 9.631184200000002, 106.48770719999993, 59, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Chiêm Hóa', 22.1306765, 105.26629309999998, 60, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Na Hang', 22.4933358, 105.35995679999996, 60, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tuyên Quang', 21.81846, 105.21140300000002, 60, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Hàm Yên', 22.0839452, 105.02717400000006, 60, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Sơn', 21.9447986, 105.26629309999998, 60, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lâm Bình', 24.9244444, 121.72666670000001, 60, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sơn Dương', 21.6571812, 105.35995679999996, 60, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Long', 10.2448442, 105.95886500000006, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Tân', 10.1205166, 105.75859079999998, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Minh', 10.029192, 105.85251540000002, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Long Hồ', 10.1980682, 105.94648740000002, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mang Thít', 10.18076, 106.07577489999994, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Bình', 10.0679356, 105.94648740000002, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trà Ôn', 9.9789961, 105.99349099999995, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vũng Liêm', 10.058632, 106.1345705, 61, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Bình Xuyên', 21.313857, 105.67644610000002, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Phúc Yên', 21.238239, 105.70269800000005, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Tường', 21.2387267, 105.48882800000001, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Vĩnh Yên', 21.2973262, 105.60606610000002, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Sông Lô', 21.4564665, 105.3950939, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Đảo', 21.4747064, 105.57088650000003, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Tam Dương', 21.3713778, 105.55916150000007, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Lạc', 21.1962199, 105.57088650000003, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lập Thạch', 21.4371499, 105.47710840000002, 62, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Lục Yên', 22.0900049, 104.70543099999998, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Nghĩa Lộ', 21.6018769, 104.50626510000006, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Mù Cang Chải', 21.7670046, 104.14660460000005, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Bái', 21.7167689, 104.89858779999997, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Văn Yên', 21.8698428, 104.56552729999999, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Yên Bình', 21.7850519, 104.98561760000007, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trấn Yên', 21.6160083, 104.79877099999999, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Trạm Tấu', 21.4629385, 104.4257533, 63, 0);
INSERT INTO Districts (Name, Lat, Lon, ProvinceId, IsDeleted) VALUES (N'Văn Chấn', 21.4298431, 104.79877099999999, 63, 0);


GO

DELETE FROM [RentalHouseFinding].[dbo].BadWords

GO


DELETE FROM [RentalHouseFinding].[dbo].BadWordTypes

GO


INSERT INTO [RentalHouseFinding].[dbo].BadWordTypes VALUES 
			('Chinh tri'),('Tinh duc'),('Tu long')

GO

INSERT INTO [RentalHouseFinding].[dbo].BadWords VALUES 
			('Fuck', 1),('Ass', 2), ('Hung Vuong', 1)

GO

DELETE FROM [RentalHouseFinding].[dbo].Locations

GO


DELETE FROM [RentalHouseFinding].[dbo].LocationTypes

GO

INSERT INTO [RentalHouseFinding].[dbo].LocationTypes VALUES 
			('Created by User'),('Hospital'),('Market')

GO


INSERT INTO [RentalHouseFinding].[dbo].Locations VALUES 
			('Cho dong xuan', '1',21.035852,105.826094,'1'),('Super house', '1',21.035852,105.826094,'1'),('Sieu thi nguyen kim', '1',21.035852,105.826094,'1')

GO

DELETE FROM [RentalHouseFinding].[dbo].ConfigurationRHFs

GO
INSERT INTO [RentalHouseFinding].[dbo].ConfigurationRHFs VALUES 
			('DescriptionColumnScore','10'),('TitleColumnScore','10'),('StreetColumnScore','10'),('NearbyColumnScore','10'),('NumberAddressColumnScore','10'),('DirectionColumnScore','10'),('NoneOfInformationText','N/A'),('ExpiredDate','2')

GO

DELETE FROM [RentalHouseFinding].[dbo].EmailTemplates

GO
INSERT INTO [RentalHouseFinding].[dbo].EmailTemplates VALUES 
			('YouReceiveQuestion',N'Bạn vừa nhận được 1 câu hỏi từ {0} <br/>Tiêu đề: {1} <br/>Nội dung: {2} <br/>Về bài viết tiêu đề: {3} <br/>Cảm ơn bạn!'),
			('YouReceiveMessage',N'Bạn vừa nhận được 1 câu trả lời từ {0} <br/>Nội dung: {1} <br/>Về câu hỏi tiêu đề: {2} <br/>Nội dung câu hỏi: {3} <br/>Cảm ơn bạn!')

GO

USE RentalHouseFinding ;
GO
IF OBJECT_ID ('dbo.V_PostFullInfo', 'V') IS NOT NULL
    DROP VIEW dbo.V_PostFullInfo ;
GO
CREATE VIEW V_PostFullInfo WITH SCHEMABINDING AS
SELECT P.Id, P.Description, P.NumberAddress, P.Street, P.Title, F.Direction, C.Email, C.Phone, C.Skype, C.Yahoo, P.CategoryId, P.DistrictId, D.ProvinceId, P.NearbyPlace
FROM dbo.Posts P 
	INNER JOIN dbo.Facilities F
		ON(P.Id = F.PostIdFacilities)
	INNER JOIN dbo.Contacts C
		ON(P.Id = C.PostIdContacts)
	INNER JOIN dbo.Districts D
		ON(P.DistrictId = D.Id) 
WHERE P.IsDeleted = 'false' AND D.IsDeleted = 'false'
WITH CHECK OPTION ;

GO
CREATE UNIQUE CLUSTERED INDEX UCI_PostId ON V_PostFullInfo(Id);

GO

USE RentalHouseFinding ;
GO
IF OBJECT_ID ('dbo.FullTextSearchPost', 'P') IS NOT NULL
    DROP PROCEDURE dbo.FullTextSearchPost ;
GO
CREATE PROCEDURE FullTextSearchPost @CategoryIdPass int = 0, @ProvinceIdPass int = 0, @DistrictIdPass int = 0, @Keyword nvarchar(100) = null
AS
IF(@Keyword IS NULL AND @DistrictIdPass != 0)
	BEGIN
		SELECT Id, Title FROM dbo.V_PostFullInfo S WHERE S.CategoryId = @CategoryIdPass AND S.ProvinceId = @ProvinceIdPass AND S.DistrictId = @DistrictIdPass 
	END
ELSE IF(@Keyword IS NULL AND @DistrictIdPass = 0)
	BEGIN
		SELECT Id, Title FROM dbo.V_PostFullInfo S WHERE S.CategoryId = @CategoryIdPass AND S.ProvinceId = @ProvinceIdPass
	END
ELSE IF(@Keyword IS NOT NULL AND @DistrictIdPass != 0)
	BEGIN
		SELECT FT_TBL.*, KEY_TBL.RANK
		FROM 
		(SELECT Id, Title FROM dbo.V_PostFullInfo S 
			WHERE S.CategoryId = @CategoryIdPass AND S.ProvinceId = @ProvinceIdPass AND S.DistrictId = @DistrictIdPass)
		AS FT_TBL 
			INNER JOIN FREETEXTTABLE(dbo.V_PostFullInfo,*, @Keyword) AS KEY_TBL
				ON FT_TBL.Id = KEY_TBL.[KEY]
		ORDER BY KEY_TBL.RANK DESC;
	END
ELSE IF(@Keyword IS NOT NULL AND @DistrictIdPass = 0)
	BEGIN
		SELECT FT_TBL.*, KEY_TBL.RANK
		FROM 
		(SELECT Id, Title FROM dbo.V_PostFullInfo S 
			WHERE S.CategoryId = @CategoryIdPass AND S.ProvinceId = @ProvinceIdPass)
		AS FT_TBL 
			INNER JOIN FREETEXTTABLE(dbo.V_PostFullInfo,*, @Keyword) AS KEY_TBL
				ON FT_TBL.Id = KEY_TBL.[KEY]
		ORDER BY KEY_TBL.RANK DESC;
	END
GO

USE RentalHouseFinding ;
GO
IF OBJECT_ID ('dbo.FullTextSearchPostWithWeightenScore', 'P') IS NOT NULL
    DROP PROCEDURE dbo.FullTextSearchPostWithWeightenScore ;
GO
CREATE PROCEDURE FullTextSearchPostWithWeightenScore @CategoryIdPass int = 0, 
									@ProvinceIdPass int = 0, 
									@DistrictIdPass int = 0, 
									@Keyword nvarchar(100) = null,
									@TitleScore int = 1,
									@DescriptionScore int = 1,
									@StreetScore int = 1,
									@NearbyScore int = 1,
									@NumberAddressScore int = 1,
									@DirectionScore int = 1
AS
IF(@Keyword IS NULL AND @DistrictIdPass != 0)
	BEGIN
		SELECT Id, Title FROM dbo.V_PostFullInfo S WHERE S.CategoryId = @CategoryIdPass AND S.ProvinceId = @ProvinceIdPass AND S.DistrictId = @DistrictIdPass 
	END
ELSE IF(@Keyword IS NULL AND @DistrictIdPass = 0)
	BEGIN
		SELECT Id, Title FROM dbo.V_PostFullInfo S WHERE S.CategoryId = @CategoryIdPass AND S.ProvinceId = @ProvinceIdPass
	END
ELSE IF(@Keyword IS NOT NULL AND @DistrictIdPass != 0)
	BEGIN
		SELECT f.WeightedRank, l.Title, l.Id
		FROM dbo.V_PostFullInfo l INNER JOIN
		(
			SELECT [KEY], SUM(Rank) AS WeightedRank
			FROM
			(
				SELECT Rank * @TitleScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Title , @Keyword)
				UNION
				SELECT Rank * @DescriptionScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Description, @Keyword)
				UNION
				SELECT Rank * @StreetScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Street, @Keyword)
				UNION
				SELECT Rank * @NearbyScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, NearbyPlace, @Keyword)
				UNION
				SELECT Rank * @NumberAddressScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, NumberAddress, @Keyword)
				UNION
				SELECT Rank * @DirectionScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Direction, @Keyword)
			) as x
			GROUP BY [KEY]
		) as f
		ON l.Id = f.[KEY]
		WHERE l.CategoryId = @CategoryIdPass AND l.ProvinceId = @ProvinceIdPass AND l.DistrictId = @DistrictIdPass 
		ORDER BY f.WeightedRank DESC
	END
ELSE IF(@Keyword IS NOT NULL AND @DistrictIdPass = 0)
	BEGIN
		SELECT f.WeightedRank, l.Title, l.Id
		FROM dbo.V_PostFullInfo l INNER JOIN
		(
			SELECT [KEY], SUM(Rank) AS WeightedRank
			FROM
			(
				SELECT Rank * @TitleScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Title , @Keyword)
				UNION
				SELECT Rank * @DescriptionScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Description, @Keyword)
				UNION
				SELECT Rank * @StreetScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Street, @Keyword)
				UNION
				SELECT Rank * @NearbyScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, NearbyPlace, @Keyword)
				UNION
				SELECT Rank * @NumberAddressScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, NumberAddress, @Keyword)
				UNION
				SELECT Rank * @DirectionScore as Rank, [KEY] from FREETEXTTABLE(dbo.V_PostFullInfo, Direction, @Keyword)
			) as x
			GROUP BY [KEY]
		) as f
		ON l.Id = f.[KEY]
		WHERE l.CategoryId = @CategoryIdPass AND l.ProvinceId = @ProvinceIdPass
		ORDER BY f.WeightedRank DESC
	END
GO



EXEC FullTextSearchPost @CategoryIdPass = 1, @ProvinceIdPass = 1, @DistrictIdPass = 0, @KeyWord = 'nha'

USE RentalHouseFinding ;
GO
IF OBJECT_ID ('dbo.V_PostFacilityInfo', 'V') IS NOT NULL
    DROP VIEW dbo.V_PostFacilityInfo ;
GO
CREATE VIEW V_PostFacilityInfo WITH SCHEMABINDING AS
SELECT P.Id, P.Area, P.Price, F.HasAirConditioner, F.HasBed, F.HasGarage, F.HasInternet, F.HasMotorParkingLot, F.HasSecurity, F.HasToilet, F.HasTVCable, F.HasWaterHeater, F.IsAllowCooking, F.IsStayWithOwner, P.CategoryId, P.DistrictId, D.ProvinceId, F.FacilityTemplateId
FROM dbo.Posts P 
	INNER JOIN dbo.Facilities F
		ON(P.Id = F.PostIdFacilities)
	INNER JOIN dbo.Contacts C
		ON(P.Id = C.PostIdContacts)
	INNER JOIN dbo.Districts D
		ON(P.DistrictId = D.Id) 
WHERE P.IsDeleted = 'false' AND D.IsDeleted = 'false'

GO


IF OBJECT_ID ('dbo.AdvancedSearchFacility', 'P') IS NOT NULL
    DROP PROCEDURE dbo.AdvancedSearchFacility ;
GO
CREATE PROCEDURE AdvancedSearchFacility 
	@CategoryIdPass int = 0, 
	@ProvinceIdPass int = 0, 
	@DistrictIdPass int = 0, 
	@AreaMax float = 0,
	@AreaMin float = 0,
	@PriceMax float = 0,
	@PriceMin float = 0,
	@HasAirConditionerScore int = 0,
	@HasBedScore int = 0,
	@HasGarageScore int = 0,
	@HasInternetScore int = 0,
	@HasMotorParkingLotScore int = 0,
	@HasSecurityScore int = 0,
	@HasToilet int = 0,
	@HasTVCableScore int = 0,
	@HasWaterHeaterScore int = 0,
	@IsAllowCookingScore int = 0,
	@IsStayWithOwnerScore int = 0
AS

IF(@DistrictIdPass != 0)
	BEGIN
		SELECT S.Id, ((T.Column1 * @HasAirConditionerScore) + 
						(T.Column2 * @HasBedScore) +
						(T.Column3 * @HasGarageScore) +
						(T.Column4 * @HasInternetScore) +
						(T.Column5 * @HasMotorParkingLotScore) + 
						(T.Column6 * @HasSecurityScore) +
						(T.Column7 * @HasToilet) +
						(T.Column8 * @HasTVCableScore) +
						(T.Column9 * @HasWaterHeaterScore) +
						(T.Column10 * @IsAllowCookingScore) +
						(T.Column11 * @IsStayWithOwnerScore)) AS Score
		 FROM dbo.FacilityTemplates T
		INNER JOIN
		(SELECT F.Id, F.FacilityTemplateId FROM dbo.V_PostFacilityInfo F 
		WHERE
			F.CategoryId = @CategoryIdPass AND
			F.DistrictId = @DistrictIdPass AND
			F.ProvinceId = @ProvinceIdPass AND
			F.Area <= @AreaMax AND F.Area >= @AreaMin AND
			F.Price <= @PriceMax AND F.Price >= @PriceMin) S
		ON T.Id = S.FacilityTemplateId
		ORDER BY Score
	END
ELSE
	BEGIN
		SELECT S.Id, ((T.Column1 * @HasAirConditionerScore) + 
						(T.Column2 * @HasBedScore) +
						(T.Column3 * @HasGarageScore) +
						(T.Column4 * @HasInternetScore) +
						(T.Column5 * @HasMotorParkingLotScore) + 
						(T.Column6 * @HasSecurityScore) +
						(T.Column7 * @HasToilet) +
						(T.Column8 * @HasTVCableScore) +
						(T.Column9 * @HasWaterHeaterScore) +
						(T.Column10 * @IsAllowCookingScore) +
						(T.Column11 * @IsStayWithOwnerScore)) AS Score
		 FROM dbo.FacilityTemplates T
		INNER JOIN
		(SELECT F.Id, F.FacilityTemplateId FROM dbo.V_PostFacilityInfo F 
		WHERE
			F.CategoryId = @CategoryIdPass AND
			F.ProvinceId = @ProvinceIdPass AND
			F.Area <= @AreaMax AND F.Area >= @AreaMin AND
			F.Price <= @PriceMax AND F.Price >= @PriceMin) S
		ON T.Id = S.FacilityTemplateId
		ORDER BY Score
	END

GO

EXEC AdvancedSearchFacility 
	@CategoryIdPass = 3, 
	@ProvinceIdPass = 24, 
	@DistrictIdPass = 0, 
	@AreaMax = 20000, 
	@AreaMin = 0, 
	@PriceMax = 3000000, 
	@PriceMin = 0,
	@HasAirConditionerScore = 5,
	@HasBedScore = 5,
	@HasGarageScore = 5,
	@HasInternetScore = 5,
	@HasMotorParkingLotScore = 5,
	@HasSecurityScore = 5,
	@HasToilet = 5,
	@HasTVCableScore = 5,
	@HasWaterHeaterScore = 5,
	@IsAllowCookingScore = 5,
	@IsStayWithOwnerScore = 5


EXEC dbo.FullTextSearchPostWithWeightenScore @CategoryIdPass = 1, @ProvinceIdPass = 1, @DistrictIdPass = 0, @KeyWord = 'xau',
												@NumberAddressScore = 10