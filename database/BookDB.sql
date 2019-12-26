create database BookDB
GO

USE [BookDB]
GO
create table Users
(
UserName nvarchar(255) primary key,
DisplayName nvarchar(max) not null,
Password nvarchar(255) not null,
Description nvarchar(max) 
)
go
insert into Users(UserName,DisplayName,Password,Description)
values('sa','Super Administrator','sa','Highest role in the system')
insert into Users(UserName,DisplayName,Password,Description)
values('administrator','Administrator','admin','creative user role')
insert into Users(UserName,DisplayName,Password,Description)
values('an','Manager','an','Managers in the system')
insert into Users(UserName,DisplayName,Password,Description)
values('nam','User','nam','Users in the system')
GO
/****** Object:  Table [dbo].Publishers    Script Date: 04/04/2018 14:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].Publishers(
	[pub_id] [char](4) NOT NULL primary key,
	[pub_name] [varchar](40) NULL,
	[pub_address] [varchar](54) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'0736', N'New Moon Books', N'Boston,MA,USA')
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'0877', N'Binnet & Hardley', N'Washington,DC,USA')
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'1389', N'Algodata Infosystems', N'Berkeley,CA,USA')
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'1622', N'Five Lakes Publishing', N'Chicago,IL,USA')
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'1756', N'Ramona Publishers', N'Dallas,TX,USA')
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'9901', N'GGG&G', NULL)
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'9952', N'Scootney Books', N'New York,NY,USA')
INSERT [dbo].Publishers ([pub_id], [pub_name], [pub_address]) VALUES (N'9999', N'Lucerne Publishing', NULL)
/****** Object:  Table [dbo].Authors    Script Date: 04/04/2018 14:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].Authors(
	[au_id] varchar(15) NOT NULL primary key,
	[au_name] [varchar](61) NOT NULL,
	[au_address] [varchar](62) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'172-32-1176', N'Johnson White', N'10932 Bigge Rd., Menlo Park')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'213-46-8915', N'Marjorie Green', N'309 63rd St. #411, Oakland')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'238-95-7766', N'Cheryl Carson', N'589 Darwin Ln., Berkeley')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'267-41-2394', N'Michael O''Leary', N'22 Cleveland Av. #14, San Jose')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'274-80-9391', N'Dean Straight', N'5420 College Av., Oakland')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'341-22-1782', N'Meander Smith', N'10 Mississippi Dr., Lawrence')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'409-56-7008', N'Abraham Bennet', N'6223 Bateman St., Berkeley')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'427-17-2319', N'Ann Dull', N'3410 Blonde St., Palo Alto')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'472-27-2349', N'Burt Gringlesby', N'PO Box 792, Covelo')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'486-29-1786', N'Charlene Locksley', N'18 Broadway Av., San Francisco')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'527-72-3246', N'Morningstar Greene', N'22 Graybar House Rd., Nashville')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'648-92-1872', N'Reginald Blotchet-Halls', N'55 Hillsdale Bl., Corvallis')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'672-71-3249', N'Akiko Yokomoto', N'3 Silver Ct., Walnut Creek')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'712-45-1867', N'Innes del Castillo', N'2286 Cram Pl. #86, Ann Arbor')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'722-51-5454', N'Michel DeFrance', N'3 Balding Pl., Gary')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'724-08-9931', N'Dirk Stringer', N'5420 Telegraph Av., Oakland')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'724-80-9391', N'Stearns MacFeather', N'44 Upland Hts., Oakland')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'756-30-7391', N'Livia Karsen', N'5720 McAuley St., Oakland')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'807-91-6654', N'Sylvia Panteley', N'1956 Arlington Pl., Rockville')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'846-92-7186', N'Sheryl Hunter', N'3410 Blonde St., Palo Alto')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'893-72-1158', N'Heather McBadden', N'301 Putnam, Vacaville')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'899-46-2035', N'Anne Ringer', N'67 Seventh Av., Salt Lake City')
INSERT [dbo].Authors ([au_id], [au_name], [au_address]) VALUES (N'998-72-3567', N'Albert Ringer', N'67 Seventh Av., Salt Lake City')
/****** Object:  Table [dbo].[Books]    Script Date: 04/04/2018 14:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Books](
	[title_id] varchar(6) NOT NULL primary key,
	[title] [varchar](80) NOT NULL,
	[pub_id] [char](4) NULL references publishers(pub_id),
	[notes] [varchar](200) NULL,
	[username] nvarchar(255) references Users(username)
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'BU1032', N'The Busy Executive''s Database Guide',  N'1389', N'An overview of available database systems with emphasis on common business applications. Illustrated.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'BU1111', N'Cooking with Computers: Surreptitious Balance Sheets',  N'1389', N'Helpful hints on how to use your electronic resources to the best advantage.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'BU2075', N'You Can Combat Computer Stress!',  N'0736', N'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'BU7832', N'Straight Talk About Computers',  N'1389', N'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.','an')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'MC2222', N'Silicon Valley Gastronomic Treats',  N'0877', N'Favorite recipes for quick, easy, and elegant meals.','an')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'MC3021', N'The Gourmet Microwave', N'0877', N'Traditional French gourmet recipes adapted for modern microwave cooking.','an')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PC1035', N'But Is It User Friendly?',  N'1389', N'A survey of software for the naive user, focusing on the ''friendliness'' of each.','an')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PC8888', N'Secrets of Silicon Valley',  N'1389', N'Muckraking reporting on the world''s largest computer hardware and software manufacturers.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PC9999', N'Net Etiquette',  N'1389', N'A must-read for computer conferencing.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PS1372', N'Computer Phobic AND Non-Phobic Individuals: Behavior Variations',  N'0877', N'A must for the specialist, this book examines the difference between those who hate and fear computers and those who don''t.','an')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PS2091', N'Is Anger the Enemy?',  N'0736', N'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PS2106', N'Life Without Fear',  N'0736', N'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience. Sample menus included, exercise video available separately.','an')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PS3333', N'Prolonged Data Deprivation: Four Case Studies', N'0736', N'What happens when the data runs dry?  Searching evaluations of information-shortage effects.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'PS7777', N'Emotional Security: A New Algorithm',  N'0736', N'Protecting yourself and your loved ones from undue emotional stress in the modern world. Use of computer and nutritional aids emphasized.','sa')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'TC3218', N'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean', N'0877', N'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.','nam')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'TC4203', N'Fifty Years in Buckingham Palace Kitchens',  N'0877', N'More anecdotes from the Queen''s favorite cook describing life among English royalty. Recipes, techniques, tender vignettes.','nam')
INSERT [dbo].[Books] ([title_id], [title],  [pub_id], [notes],[username]) VALUES (N'TC7777', N'Sushi, Anyone?',  N'0877', N'Detailed instructions on how to make authentic Japanese sushi in your spare time.','nam')
/****** Object:  Table [dbo].TitleAuthor    Script Date: 04/04/2018 14:51:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].TitleAuthor(
	[au_id] varchar(15) NOT NULL references Authors(au_id),
	[title_id] varchar(6) NOT NULL references Books(title_id),
	[au_ord] [tinyint] NULL,
	primary key (au_id,title_id)
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'172-32-1176', N'PS3333', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'213-46-8915', N'BU1032', 2)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'213-46-8915', N'BU2075', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'238-95-7766', N'PC1035', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'267-41-2394', N'BU1111', 2)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'267-41-2394', N'TC7777', 2)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'274-80-9391', N'BU7832', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'409-56-7008', N'BU1032', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'427-17-2319', N'PC8888', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'472-27-2349', N'TC7777', 3)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'486-29-1786', N'PC9999', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'486-29-1786', N'PS7777', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'648-92-1872', N'TC4203', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'672-71-3249', N'TC7777', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'712-45-1867', N'MC2222', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'722-51-5454', N'MC3021', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'724-80-9391', N'BU1111', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'724-80-9391', N'PS1372', 2)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'756-30-7391', N'PS1372', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'807-91-6654', N'TC3218', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'846-92-7186', N'PC8888', 2)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'899-46-2035', N'MC3021', 2)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'899-46-2035', N'PS2091', 2)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'998-72-3567', N'PS2091', 1)
INSERT [dbo].TitleAuthor ([au_id], [title_id], [au_ord]) VALUES (N'998-72-3567', N'PS2106', 1)

-- drop TABLE TitleAuthor;
-- drop TABLE Books;
-- drop TABLE Publishers;
-- drop TABLE Users;
-- drop TABLE Authors;
