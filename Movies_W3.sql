CREATE DATABASE [MOVIES_W3];
USE [MOVIES_W3];
GO
/****** Object:  Table [dbo].[actor]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actor](
	[act_id] [int] NOT NULL,
	[act_fname] [varchar](20) NULL,
	[act_lname] [varchar](20) NULL,
	[act_gender] [varchar](1) NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED 
(
	[act_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[director]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[director](
	[dir_id] [int] NOT NULL,
	[dir_fname] [varchar](20) NULL,
	[dir_lname] [varchar](20) NULL,
 CONSTRAINT [PK_director] PRIMARY KEY CLUSTERED 
(
	[dir_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genres]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[gen_id] [int] NOT NULL,
	[gen_title] [varchar](20) NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED 
(
	[gen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie](
	[mov_id] [int] NOT NULL,
	[mov_title] [varchar](50) NULL,
	[mov_year] [int] NULL,
	[mov_time] [int] NULL,
	[mov_lang] [varchar](50) NULL,
	[mov_dt_rel] [datetime] NULL,
	[mov_rel_country] [varchar](5) NULL,
 CONSTRAINT [PK_movie] PRIMARY KEY CLUSTERED 
(
	[mov_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_cast]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_cast](
	[act_id] [int] NULL,
	[mov_id] [int] NULL,
	[role] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_direction]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_direction](
	[dir_id] [int] NULL,
	[mov_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movie_genres]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_genres](
	[gen_id] [int] NULL,
	[mov_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rating]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rating](
	[mov_id] [int] NULL,
	[rev_id] [int] NULL,
	[rev_stars] [float] NULL,
	[num_o_ratings] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviewer]    Script Date: 28-07-2022 19:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviewer](
	[rev_id] [int] NOT NULL,
	[rev_name] [varchar](20) NULL,
 CONSTRAINT [PK_reviwer] PRIMARY KEY CLUSTERED 
(
	[rev_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (101, N'James', N'Stewart', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (102, N'Deborah', N'Kerr', N'F')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (103, N'Peter', N'OToole', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (104, N'Robert', N'DeNiro', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (106, N'Harrison', N'Ford', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (108, N'Stephen', N'Baldwin', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (109, N'Jack', N'Nicholson', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (110, N'Mark', N'Wahlberg', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (111, N'Woody', N'Allen', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (112, N'Claire', N'Danes', N'F')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (113, N'Tim', N'Robbins', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (114, N'Kevin', N'Spacey', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (115, N'Kate', N'Winslet', N'F')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (116, N'Robin', N'Williams', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (117, N'Jon', N'Voight', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (118, N'Ewan', N'McGregor', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (119, N'Christian', N'Bale', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (120, N'Maggie', N'Gyllenhaal', N'F')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (121, N'Dev', N'Patel', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (122, N'Sigourney', N'Weaver', N'F')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (123, N'David', N'Aston', N'M')
INSERT [dbo].[actor] ([act_id], [act_fname], [act_lname], [act_gender]) VALUES (124, N'Ali', N'Astin', N'F')
GO
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (201, N'Alfred', N'Hitchcock')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (202, N'Jack', N'Clayton')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (203, N'David', N'Lean')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (204, N'Michael', N'Cimino')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (205, N'Milos', N'Forman')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (206, N'Ridley', N'Scott')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (207, N'Stanley', N'Kubrick')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (208, N'Bryan', N'Singer')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (209, N'Roman', N'Polanski')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (210, N'Paul', N'Thomas Anderson')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (211, N'Woody', N'Allen')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (212, N'Hayao', N'Miyazaki')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (213, N'Frank', N'Darabont')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (214, N'Sam', N'Mendes')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (215, N'James', N'Cameron')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (216, N'Gus', N'Van Sant')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (217, N'John', N'Boorman')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (218, N'Danny', N'Boyle')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (219, N'Christopher', N'Nolan')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (220, N'Richard', N'Kelly')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (221, N'Kevin', N'Spacey')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (222, N'Andrei', N'Tarkovsky')
INSERT [dbo].[director] ([dir_id], [dir_fname], [dir_lname]) VALUES (223, N'Peter', N'Jackson')
GO
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1001, N'Action')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1002, N'Adventure')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1003, N'Animation')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1004, N'Biography')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1005, N'Comedy')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1006, N'Crime')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1007, N'Drama')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1008, N'Horror')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1009, N'Music')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1010, N'Mystery')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1011, N'Romance')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1012, N'Thriller')
INSERT [dbo].[genres] ([gen_id], [gen_title]) VALUES (1013, N'War')
GO
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (901, N'Vertigo', 1958, 128, N'English', CAST(N'1958-08-24T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (902, N'The Innocents', 1961, 100, N'English', CAST(N'1962-02-19T00:00:00.000' AS DateTime), N'SW')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (903, N'Lawrence of Arabia', 1962, 216, N'English', CAST(N'1962-12-11T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (904, N'The Deer Hunter', 1978, 183, N'English', CAST(N'1979-03-08T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (905, N'Amadeus', 1984, 160, N'English', CAST(N'1985-01-07T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (906, N'Blade Runner', 1982, 117, N'English', CAST(N'1982-09-09T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (907, N'Eyes Wide Shut', 1999, 159, N'English', NULL, N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (908, N'The Usual Suspects', 1995, 106, N'English', CAST(N'1995-08-25T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (909, N'Chinatown', 1974, 130, N'English', CAST(N'1974-08-09T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (910, N'Boogie Nights', 1997, 155, N'English', CAST(N'1998-02-16T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (911, N'Annie Hall', 1977, 93, N'English', CAST(N'1977-04-20T00:00:00.000' AS DateTime), N'USA')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (912, N'Princess Mononoke', 1997, 134, N'Japanese', CAST(N'2001-10-19T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (913, N'The Shawshank Redemption', 1994, 142, N'English', CAST(N'1995-02-17T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (914, N'American Beauty', 1999, 122, N'English', NULL, N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (915, N'Titanic', 1997, 194, N'English', CAST(N'1998-01-23T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (916, N'Good Will Hunting', 1997, 126, N'English', CAST(N'1998-06-03T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (917, N'Deliverance', 1972, 109, N'English', CAST(N'1982-10-05T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (918, N'Trainspotting', 1996, 94, N'English', CAST(N'1996-02-23T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (919, N'The Prestige', 2006, 130, N'English', CAST(N'2006-11-10T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (920, N'Donnie Darko', 2001, 113, N'English', NULL, N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (921, N'Slumdog Millionaire', 2008, 120, N'English', CAST(N'2009-01-09T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (922, N'Aliens', 1986, 137, N'English', CAST(N'1986-08-29T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (923, N'Beyond the Sea', 2004, 118, N'English', CAST(N'2004-11-26T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (924, N'Avatar', 2009, 162, N'English', CAST(N'2009-12-17T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (925, N'Braveheart', 1995, 178, N'English', CAST(N'1995-09-08T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (926, N'Seven Samurai', 1954, 207, N'Japanese', CAST(N'1954-04-26T00:00:00.000' AS DateTime), N'JP')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (927, N'Spirited Away', 2001, 125, N'Japanese', CAST(N'2003-09-12T00:00:00.000' AS DateTime), N'UK')
INSERT [dbo].[movie] ([mov_id], [mov_title], [mov_year], [mov_time], [mov_lang], [mov_dt_rel], [mov_rel_country]) VALUES (928, N'Back to the Future', 1985, 116, N'English', CAST(N'1985-12-04T00:00:00.000' AS DateTime), N'UK')
GO
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (101, 901, N'John Scottie Ferguson')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (102, 902, N'Miss Giddens')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (103, 903, N'T.E. Lawrence')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (104, 904, N'Michael')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (106, 906, N'Rick Deckard')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (108, 908, N'McManus')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (110, 910, N'Eddie Adams')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (111, 911, N'Alvy Singer')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (112, 912, N'San')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (113, 913, N'Andy Dufresne')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (114, 914, N'Lester Burnham')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (115, 915, N'Rose DeWitt Bukater')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (116, 916, N'Sean Maguire')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (117, 917, N'Ed')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (118, 918, N'Renton')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (120, 920, N'Elizabeth Darko')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (121, 921, N'Older Jamal')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (122, 922, N'Ripley')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (114, 923, N'Bobby Darin')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (109, 909, N'J.J. Gittes')
INSERT [dbo].[movie_cast] ([act_id], [mov_id], [role]) VALUES (119, 919, N'Alfred Borden')
GO
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (201, 901)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (202, 902)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (203, 903)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (204, 904)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (205, 905)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (206, 906)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (207, 907)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (208, 908)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (209, 909)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (210, 910)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (211, 911)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (212, 912)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (213, 913)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (214, 914)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (215, 915)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (216, 916)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (217, 917)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (218, 918)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (219, 919)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (220, 920)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (218, 921)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (215, 922)
INSERT [dbo].[movie_direction] ([dir_id], [mov_id]) VALUES (221, 923)
GO
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1001, 922)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1002, 917)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1002, 903)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1003, 912)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1005, 911)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1006, 908)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1006, 913)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1007, 926)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1007, 928)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1007, 918)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1007, 921)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1008, 902)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1009, 923)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1010, 907)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1010, 927)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1010, 901)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1011, 914)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1012, 906)
INSERT [dbo].[movie_genres] ([gen_id], [mov_id]) VALUES (1013, 904)
GO
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (901, 9001, 8.4, 263575)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (902, 9002, 7.9, 20207)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (903, 9003, 8.3, 202778)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (906, 9005, 8.2, 484746)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (924, 9006, 7.3, NULL)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (908, 9007, 8.6, 779489)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (909, 9008, NULL, 227235)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (910, 9009, 3, 195961)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (911, 9010, 8.1, 203875)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (912, 9011, 8.4, NULL)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (914, 9013, 7, 862618)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (915, 9001, 7.7, 830095)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (916, 9014, 4, 642132)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (925, 9015, 7.7, 81328)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (918, 9016, NULL, 580301)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (920, 9017, 8.1, 609451)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (921, 9018, 8, 667758)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (922, 9019, 8.4, 511613)
INSERT [dbo].[rating] ([mov_id], [rev_id], [rev_stars], [num_o_ratings]) VALUES (923, 9020, 6.7, 13091)
GO
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9001, N'Righty Sock')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9002, N'Jack Malvern')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9003, N'Flagrant Baronessa')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9004, N'Alec Shaw')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9005, N'')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9006, N'Victor Woeltjen')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9007, N'Simon Wright')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9008, N'Neal Wruck')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9009, N'Paul Monks')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9010, N'Mike Salvati')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9011, N'')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9012, N'Wesley S. Walker')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9013, N'Sasha Goldshtein')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9014, N'Josh Cates')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9015, N'Krug Stillo')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9016, N'Scott LeBrun')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9017, N'Hannah Steele')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9018, N'Vincent Cadena')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9019, N'Brandt Sponseller')
INSERT [dbo].[reviewer] ([rev_id], [rev_name]) VALUES (9020, N'Richard Adams')
GO
ALTER TABLE [dbo].[movie_cast]  WITH CHECK ADD FOREIGN KEY([act_id])
REFERENCES [dbo].[actor] ([act_id])
GO
ALTER TABLE [dbo].[movie_cast]  WITH CHECK ADD FOREIGN KEY([mov_id])
REFERENCES [dbo].[movie] ([mov_id])
GO
ALTER TABLE [dbo].[movie_direction]  WITH CHECK ADD FOREIGN KEY([dir_id])
REFERENCES [dbo].[director] ([dir_id])
GO
ALTER TABLE [dbo].[movie_direction]  WITH CHECK ADD FOREIGN KEY([mov_id])
REFERENCES [dbo].[movie] ([mov_id])
GO
ALTER TABLE [dbo].[movie_genres]  WITH CHECK ADD FOREIGN KEY([gen_id])
REFERENCES [dbo].[genres] ([gen_id])
GO
ALTER TABLE [dbo].[movie_genres]  WITH CHECK ADD FOREIGN KEY([mov_id])
REFERENCES [dbo].[movie] ([mov_id])
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK_rating_movie] FOREIGN KEY([mov_id])
REFERENCES [dbo].[movie] ([mov_id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK_rating_movie]
GO
ALTER TABLE [dbo].[rating]  WITH CHECK ADD  CONSTRAINT [FK_rating_reviewer] FOREIGN KEY([rev_id])
REFERENCES [dbo].[reviewer] ([rev_id])
GO
ALTER TABLE [dbo].[rating] CHECK CONSTRAINT [FK_rating_reviewer]
GO
