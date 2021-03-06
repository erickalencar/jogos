USE [erick]
GO
/****** Object:  Table [dbo].[AVALIACAO]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AVALIACAO](
	[AVA_ID] [int] IDENTITY(1,1) NOT NULL,
	[AVA_VALOR] [int] NULL,
	[AVA_NOME] [varchar](50) NULL,
 CONSTRAINT [PK_AVALIACAO] PRIMARY KEY CLUSTERED 
(
	[AVA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESA](
	[EMP_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_NOME] [nvarchar](50) NULL,
 CONSTRAINT [PK_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[EMP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPRESTIMO]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESTIMO](
	[EMPR_ID] [int] IDENTITY(1,1) NOT NULL,
	[PESS_ID] [int] NOT NULL,
	[JOGO_ID] [int] NOT NULL,
	[EMPR_DATA] [datetime] NULL,
	[EMPR_DATA_DEV] [datetime] NULL,
	[EMPR_SITUACAO] [int] NULL,
 CONSTRAINT [PK_EMPRESTIMO] PRIMARY KEY CLUSTERED 
(
	[EMPR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[jogos]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jogos](
	[jogo_id] [int] IDENTITY(1,1) NOT NULL,
	[jogo_nome] [nvarchar](100) NOT NULL,
	[jogo_capa] [nvarchar](100) NULL,
	[jogo_dt_compra] [datetime] NULL,
	[jogo_publisher] [int] NULL,
	[jogo_desenvolvedora] [int] NULL,
	[pro_id] [int] NULL,
	[loc_id] [int] NULL,
	[jogo_avaliacao] [int] NULL,
	[jogo_status] [int] NULL,
	[pla_id] [int] NULL,
	[mid_id] [int] NULL,
	[jogo_comentario] [nvarchar](max) NULL,
 CONSTRAINT [PK_jogos] PRIMARY KEY CLUSTERED 
(
	[jogo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOCALIZACAO]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOCALIZACAO](
	[LOC_ID] [int] IDENTITY(1,1) NOT NULL,
	[LOC_NOME] [nvarchar](50) NULL,
	[LOC_DESCRICAO] [text] NULL,
 CONSTRAINT [PK_LOCALIZACAO] PRIMARY KEY CLUSTERED 
(
	[LOC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MIDIA]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MIDIA](
	[MID_ID] [int] IDENTITY(1,1) NOT NULL,
	[MID_NOME] [nvarchar](50) NULL,
 CONSTRAINT [PK_MIDIA] PRIMARY KEY CLUSTERED 
(
	[MID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PESSOA]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PESSOA](
	[PESS_ID] [int] IDENTITY(1,1) NOT NULL,
	[PESS_NOME] [nvarchar](50) NULL,
 CONSTRAINT [PK_PESSOA] PRIMARY KEY CLUSTERED 
(
	[PESS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLATAFORMA]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLATAFORMA](
	[PLA_ID] [int] IDENTITY(1,1) NOT NULL,
	[PLA_NOME] [nvarchar](100) NULL,
 CONSTRAINT [PK_PLATAFORMA] PRIMARY KEY CLUSTERED 
(
	[PLA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROGRESSO]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROGRESSO](
	[PRO_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_NOME] [nvarchar](50) NULL,
 CONSTRAINT [PK_PROGRESSO] PRIMARY KEY CLUSTERED 
(
	[PRO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STATUS]    Script Date: 27/06/2018 19:26:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STATUS](
	[STA_ID] [int] IDENTITY(1,1) NOT NULL,
	[STA_NOME] [varchar](100) NULL,
 CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED 
(
	[STA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AVALIACAO] ON 

INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (1, 1, N'Péssimo')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (2, 2, N'Ruim')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (3, 3, N'Regular')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (4, 4, N'Bom')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (5, 5, N'Ótimo')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (7, 0, N'Não avaliado')
SET IDENTITY_INSERT [dbo].[AVALIACAO] OFF
SET IDENTITY_INSERT [dbo].[EMPRESA] ON 

INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1, N'Sega')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (3, N'EA')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (4, N'Sony')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (7, N'Microsoft')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (8, N'Ubisoft')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (9, N'Square')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (10, N'Rockstar')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (12, N'Bethesda')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (13, N'Sonic Team')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (23, N'Harmonix')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (24, N'Valve')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (25, N'Turn 10')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (26, N'Behemoth')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (27, N'343')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (28, N'NetherRealm')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (29, N'Warner Bros.')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (30, N'Visceral')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (31, N'Ignis')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (32, N'Capcom')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (33, N'Eidos')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (34, N'Crystal Dynamics')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (35, N'Epic')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (36, N'Konami')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (37, N'Telltale')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (38, N'Remedy')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (39, N'BioWare')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (40, N'Traveller''s Tales')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (41, N'LucasArts')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (42, N'Halfbrick Studios')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (43, N'Twisted Pixel')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (44, N'Rocksteady Studios')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (45, N'Bungie')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (46, N'Lionhead')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (47, N'Rare')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (48, N'BigPark')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (49, N'Playdead')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (50, N'2K games')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (51, N'RedLynx')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (52, N'NinjaBee')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (53, N'Double Fine')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (54, N'Sierra Online')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (55, N'Mistwalker')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (56, N'Carbonated Games')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (57, N'Bizarre Creations')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (59, N'Activision')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (60, N'Nanco Bandai')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (61, N'Media Molecule')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (62, N'Sucker Punch')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (64, N'Platinum Games')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (65, N'Sumo Digital')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (66, N'Hello Games')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (67, N'Arkane Studios')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (68, N'Neversoft')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (69, N'Naughty Dog')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (70, N'Housemarque')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (71, N'Thatgamecompany')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (72, N'Digital Leisure')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (73, N'Shadow Planet Productions')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (74, N'Wizards of the Coast')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (75, N'Blue Castle Games')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (76, N'Realtime Worlds')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (77, N'Foundation 9')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (78, N'Hidden Path')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (79, N'Gearbox software')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (80, N'Kung Fu Factory')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (81, N'Team Bondi')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (82, N'Toylogic')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (83, N'Iron Galaxy')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1072, N'Crytek')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1073, N'Firaxis')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1074, N'Tequila Works')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1075, N'Io Interactive')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1076, N'Demiurge')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1077, N'Signal Studios')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1078, N'Press Play')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1079, N'Vanguard Games')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1082, N'FromSoftware')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1083, N'DrinkBox Studios')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1084, N'Ska Studios')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME]) VALUES (1085, N'Bongfish GmbH')
SET IDENTITY_INSERT [dbo].[EMPRESA] OFF
SET IDENTITY_INSERT [dbo].[jogos] ON 

INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (10, N'Rock Band 3', N'rockband3.jpg', CAST(N'2011-06-17T00:00:00.000' AS DateTime), 3, 23, 4, 2, 5, 2, 1, 1, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (12, N'Red Dead Redemption', N'reddeadredemption.jpg', CAST(N'2013-08-25T00:00:00.000' AS DateTime), 10, 10, 4, 4, 4, 1, 1, 3, N'Muito boa história e com final surpreendente. A falta de tempo me fez jogar durante muito tempo e de forma corrida, o que atrapalhou um pouco a experiência.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (13, N'Portal 2', N'portal2.jpg', CAST(N'2013-08-17T00:00:00.000' AS DateTime), 24, 24, 4, 4, 5, 1, 1, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (14, N'Forza Horizon', N'forzahorizon.jpg', CAST(N'2013-07-12T00:00:00.000' AS DateTime), 7, 25, 4, 4, 4, 1, 1, 3, N'Muito divertido. Tinha cansado dessas simulações... esse modo mais arcade me agradou. Mas ainda falta jogar o rally.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (15, N'Assassin''s Creed® III', N'assassinscreed3.jpg', CAST(N'2013-06-20T00:00:00.000' AS DateTime), 8, 8, 4, 3, 4, 1, 1, 1, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (16, N'Castle Crashers', N'castlecrashers.jpg', CAST(N'2009-12-24T00:00:00.000' AS DateTime), 26, 26, 4, 4, 5, 1, 5, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (17, N'Sonic The Hedgehog 3', N'sonic3.jpg', CAST(N'2009-10-03T00:00:00.000' AS DateTime), 1, 13, 4, 4, 5, 1, 5, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (18, N'Halo 4', N'halo4.jpg', CAST(N'2013-07-05T00:00:00.000' AS DateTime), 7, 27, 1, 2, 7, 3, 1, 1, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (19, N'Mortal Kombat', N'mortalkombat.jpg', CAST(N'2011-06-15T00:00:00.000' AS DateTime), 29, 28, 4, 4, 4, 1, 1, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (20, N'The Orange Box', N'theorangebox.jpg', CAST(N'2013-03-06T00:00:00.000' AS DateTime), 24, 24, 5, 4, 5, 3, 1, 3, N'Reunião de 3 jogos da Valve: Half Life 2, Portal e Team Fortress. Até o momento joguei apenas o Portal. Um ótimo jogo de puzzle! Muito inteligente! Uma personagem cativante e hilária (GlaDOS), história bem escrita e a música final é a cereja do... bolo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (21, N'Rocksmith', N'rocksmith.jpg', CAST(N'2011-12-25T00:00:00.000' AS DateTime), 8, 8, 6, 3, 4, 1, 1, 1, N'Jogo para ensinar a tocar guitarra com guitarra de verdade. Nada de guitarra de brinquedo. Não é fácil, mas até que já aprendi alguma coisa. Nunca tinha tocado guitarra antes, apenas violão. Solos são complicados, ainda não sei onde estão as cordas e casas. Quem sabe um dia tenho mais tempo para me dedicar mais.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (22, N'Skyrim', N'skyrim.jpg', CAST(N'2013-01-11T00:00:00.000' AS DateTime), 12, 12, 4, 3, 5, 1, 1, 1, N'RPG de ação fodástico! Gosto muito de RPGs. Mas era mais ligado aos japoneses. 4º jogo da série Elder Scrols, mas nunca tinha jogado nenhum dos outros. O jogo é enorme e acaba tomando bastante tempo (como todo bom  RPG). Ainda tem mais 2 expansões que ajudam a aumentar a fila de jogos por jogar.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (23, N'Dead Space™ 2', N'deadspace2.jpg', CAST(N'2013-04-20T00:00:00.000' AS DateTime), 3, 30, 1, 2, 7, 3, 1, 1, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (24, N'Lips', N'lips.jpg', CAST(N'2009-11-26T00:00:00.000' AS DateTime), 7, 31, 4, 2, 5, 1, 1, 1, N'Karaokê! Sempre gostei de cantar e até já tivemos um videokê em casa. Pena é não ter músicas brasileiras,  mas ainda assim tem muita música legal no disco, nos discos de expansão e na Live. Comprei várias!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (25, N'R.E. CODE: Veronica X', N'codeveronicax.jpg', CAST(N'2013-03-07T00:00:00.000' AS DateTime), 32, 32, 1, 4, 5, 3, 1, 3, N'Joguei esse jogo no saudoso Dreamcast. Acho que foi o último RE que assustou. O 4 legal mas é outro jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (26, N'Tomb Raider:Legend', N'tombraiderlegend.jpg', CAST(N'2013-03-06T00:00:00.000' AS DateTime), 33, 34, 6, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (27, N'Gears of War 3', N'gears3.jpg', CAST(N'2011-09-23T00:00:00.000' AS DateTime), 7, 35, 4, 2, 5, 1, 1, 1, N'3º jogo da série. Terminando a ótima história. Multiplayer ainda bem divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (28, N'PES 2013', N'pes2013.jpg', CAST(N'2012-10-13T00:00:00.000' AS DateTime), 36, 36, 5, 2, 4, 4, 1, 1, N'É... acho que cansei de jogos de futebol. Já fui mais fã. Acho que essa prática de um jogo por ano não dá mais pra acompanhar. Tem tanta coisa diferente por aí pra  jogar...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (29, N'Nike+ Kinect Training', N'nikeplus.jpg', CAST(N'2012-12-20T00:00:00.000' AS DateTime), 7, 7, 5, 3, 4, 4, 1, 1, N'Exercícios com o kinect. Ficou bem legal, deu pra suar bastante. O treco cansa mesmo. Como machuquei o joelho, tive que abandonar por enquanto.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (30, N'Sonic 4 Episode II', N'sonic4II.jpg', CAST(N'2013-01-02T00:00:00.000' AS DateTime), 1, 13, 4, 4, 3, 1, 5, 3, N'Fizeram um jogo do Sonic no estilo antigo, dividiram em duas partes e venderam pros fãs. Eu sou fã, comprei, me diverti mas não é lá essas coisas.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (31, N'The Walking Dead', N'thewalkingdead.jpg', CAST(N'2012-12-30T00:00:00.000' AS DateTime), 37, 37, 5, 4, 4, 4, 5, 3, N'Jogo dividido em capítulos que recebeu vários prêmios. Comecei a jogar o primeiro capítulo mas acabei largando...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (32, N'NiGHTS into dreams...', N'nights.jpg', CAST(N'2012-12-30T00:00:00.000' AS DateTime), 1, 13, 4, 4, 5, 1, 5, 3, N'É o mesmo jogo do Sega Saturn e só por isso já valeu.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (33, N'GTA IV', N'gtaIV.jpg', CAST(N'2008-07-24T00:00:00.000' AS DateTime), 10, 10, 5, 3, 4, 1, 1, 1, N'GTA é GTA. Grande, longo e muito bem feito. Comecei mas no meio dei uma cansada. Recomecei e parei de novo. O V tá chegando e ainda não terminei esse. Será que termino?')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (34, N'Alan Wake', N'alanwake.jpg', CAST(N'2011-09-02T00:00:00.000' AS DateTime), 36, 38, 4, 2, 4, 1, 1, 1, N'História de terror contada como se fosse uma série de TV. Alguns sustos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (35, N'Dead Space™', N'deadspace.jpg', CAST(N'2012-11-05T00:00:00.000' AS DateTime), 3, 3, 4, 4, 4, 1, 1, 3, N'Gosto de séries de terror e comecei a jogar essa. Acabei parando, mas como já tenho a sequencia, um dia eu termino esse. E terminei mesmo! Valeu a pena.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (36, N'Shadows of the Damned™', N'shadowsofthedamned.jpg', CAST(N'2012-09-18T00:00:00.000' AS DateTime), 3, 3, 4, 2, 4, 1, 1, 1, N'Jogo achado em uma promoção. Não esperava muito mas me surpreendi com o humor e acabei me prendendo ao jogo. Cansativo em alguns momentos mas ainda divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (37, N'Max Payne 3', N'maxpaine3.jpg', CAST(N'2012-08-25T00:00:00.000' AS DateTime), 10, 10, 4, 3, 4, 1, 1, 1, N'Fui no hype do jogo que se passa em São Paulo (ou seria Rio?) e até gostei. Nunca tinha jogado a série mas achei bem interessante.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (38, N'Mass Effect 2', N'masseffect2.jpg', CAST(N'2012-07-08T00:00:00.000' AS DateTime), 3, 39, 4, 4, 5, 1, 1, 3, N'Segundo jogo da série de RPG espacial. Nunca fui muito fã de jogos espaciais mas esse é muito bom.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (39, N'Sonic CD', N'soniccd.jpg', CAST(N'2012-07-05T00:00:00.000' AS DateTime), 1, 13, 4, 4, 4, 1, 5, 3, N'Como nunca pude ter um Sega CD, esse sempre foi um jogo que fiquei na vontade de jogar. Pronto, matei a vontade.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (40, N'Assassin''s Creed II', N'assassinscreed2.jpg', CAST(N'2012-04-24T00:00:00.000' AS DateTime), 8, 8, 4, 2, 5, 1, 1, 1, N'Início da saga do Ézio. Jogaço! Só!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (41, N'LEGO Star Wars: TCS', N'legostarwars.jpg', CAST(N'2012-04-13T00:00:00.000' AS DateTime), 27, 33, 5, 4, 7, 4, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (42, N'Beyond Good & Evil HD', N'beyondgoodevil.jpg', CAST(N'2011-12-14T00:00:00.000' AS DateTime), 8, 8, 4, 5, 4, 7, 5, 3, N'Como não tive videogames da Nintendo, não pude jogar esse jogo. Sem muito elogiado então comprei para ver se era bom mesmo. E era. Ou melhor, é.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (43, N'FIFA 10', N'fifa10.jpg', CAST(N'2009-11-14T00:00:00.000' AS DateTime), 3, 3, 5, 2, 3, 1, 1, 1, N'Fui pro outro lado da força pra dar uma variada. Nesse ano o Fifa foi melhor que o PES. Mas mesmo assim eu já tava desanimando de jogos de futebol. Não aproveitei muito.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (44, N'SEGA Bass Fishing', N'segabassfishing.jpg', CAST(N'2012-03-20T00:00:00.000' AS DateTime), 1, 1, 5, 3, 2, 1, 5, 1, N'Veio junto com outros jogos num pacote de jogos do Dreamcast. Claro que não comprei por esse jogo...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (45, N'Space Channel 5 Part 2', N'spacechannel5pt2.jpg', CAST(N'2012-03-20T00:00:00.000' AS DateTime), 1, 1, 5, 2, 3, 1, 5, 1, N'Jogo comprado com um pacote de jogos do Dreamcast. Apertar botões em uma sequência deve ter sido mais divertido na época.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (46, N'Crazy Taxi', N'crazytaxi.jpg', CAST(N'2012-03-20T00:00:00.000' AS DateTime), 1, 1, 5, 2, 5, 4, 5, 1, N'Motivo pra ter comprado o pacote de jogos do Dreamcast. Ainda muito divertido! Yeah yeah yeah yeah! ... droga, tiraram essa música.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (47, N'SONIC UNLEASHED', N'Sonicunleashed.jpg', CAST(N'2012-03-05T00:00:00.000' AS DateTime), 1, 13, 5, 3, 2, 4, 1, 1, N'Sonic virou um "lobisomem"... ai ai Sega. O que vocês fizeram?')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (48, N'SONIC GENERATIONS', N'sonicgenerations.jpg', CAST(N'2011-12-30T00:00:00.000' AS DateTime), 1, 13, 4, 2, 5, 1, 1, 1, N'Finalmente um jogo bom do Sonic!! Juntou as duas gerações do ouriço para se despedir da versão fofinha. Bem, eu preferia me despedir da versão cool e modernosa.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (49, N'Fruit Ninja Kinect', N'fruitninja.jpg', CAST(N'2012-02-16T00:00:00.000' AS DateTime), 7, 42, 5, 4, 3, 4, 5, 3, N'Fruit ninja no kinect cansa muito! Não dá pra jogar muito tempo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (50, N'Mass Effect', N'masseffect.jpg', CAST(N'2011-03-31T00:00:00.000' AS DateTime), 7, 39, 4, 2, 5, 1, 1, 1, N'RPG especial com ótima história. Algumas missões um pouco cansativas e repetitivas mas mesmo assim o jogo vale a pena.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (51, N'Dance Central 2', N'dancecentral2.jpg', CAST(N'2012-02-07T00:00:00.000' AS DateTime), 23, 23, 5, 3, 3, 4, 1, 1, N'Kinect foi feito pra jogos de dança. Por mais que seja pagação de mico ainda é divertido. Mas sem joelho não dá.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (52, N'The Gunstringer', N'gunstringer.jpg', CAST(N'2012-02-07T00:00:00.000' AS DateTime), 7, 43, 5, 3, 3, 4, 1, 1, N'jogo de tiro para o kinect onde você controla uma marionete. Divertido, mas os braços doem!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (53, N'Batman: Arkham City™', N'batmanarkhamcity.jpg', CAST(N'2011-12-11T00:00:00.000' AS DateTime), 29, 44, 4, 2, 5, 1, 1, 1, N'Jogaço! Batman dando porrada em geral!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (54, N'LEGO Rock Band', N'legorockband.jpg', CAST(N'2011-05-25T00:00:00.000' AS DateTime), 23, 23, 5, 2, 4, 4, 1, 1, N'Mais músicas para o Rock Band, mas com as figuras Lego engraçadinhas.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (55, N'Halo: Reach', N'haloreach.jpg', CAST(N'2011-12-24T00:00:00.000' AS DateTime), 7, 45, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (56, N'Halo: CE Anniversary', N'haloanniversary.jpg', CAST(N'2011-11-30T00:00:00.000' AS DateTime), 45, 7, 4, 3, 5, 1, 1, 1, N'Primeiro jogo da famosa série. Será que é tudo isso mesmo?')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (57, N'Michael Jackson', N'michaljackson.jpg', CAST(N'2011-06-15T00:00:00.000' AS DateTime), 8, 8, 5, 2, 4, 4, 1, 1, N'Sou fã do Michael e das danças dele. Só por isso já justifica ter esse jogo. É... acho que só por isso mesmo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (58, N'Sonic 4 Episode I', N'sonic4I.jpg', CAST(N'2010-10-14T00:00:00.000' AS DateTime), 1, 13, 4, 4, 4, 1, 5, 3, N'Esse é bonzinho... ')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (59, N'Batman: Arkham Asylum', N'batmanarkhamasylum.jpg', CAST(N'2011-05-26T00:00:00.000' AS DateTime), 29, 44, 4, 2, 5, 1, 1, 1, N'Primeiro jogo da série Arkham do cavaleiro das trevas. Mudou o conceito de jogos de heróis que em geral são fracos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (60, N'Rock Band 2', N'rockband2.jpg', CAST(N'2008-11-13T00:00:00.000' AS DateTime), 3, 23, 4, 2, 5, 1, 1, 1, N'Mais músicas para o Rock Band. Algumas funções novas e melhorias na progressão do jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (61, N'Fable III', N'fable3.jpg', CAST(N'2011-04-18T00:00:00.000' AS DateTime), 7, 46, 4, 2, 4, 1, 1, 1, N'Nunca joguei o primeiro jogo da série, mas como o segundo é ótimo a expectativa era alta para o terceiro. Decepcionou um pouco. O jogo ficou menor e bem rápido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (62, N'Kinect Sports', N'kinectsports.jpg', CAST(N'2010-12-21T00:00:00.000' AS DateTime), 7, 47, 4, 2, 4, 1, 1, 1, N'Praticando esportes com o kinect. É bem divertido pra jogar acompanhado mas cansa... nos dois sentidos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (63, N'Fable II', N'fable2.jpg', CAST(N'2008-12-12T00:00:00.000' AS DateTime), 7, 46, 4, 2, 5, 1, 1, 1, N'Jogo de ação com  algumas características de RPG, onde suas decisões influem na sua moral e na história do jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (64, N'The Beatles: Rock Band', N'rockbandbeatles.jpg', CAST(N'2009-10-25T00:00:00.000' AS DateTime), 3, 23, 4, 2, 5, 1, 1, 1, N'Músicas, músicos, ambiente, vídeos e tudo mais dos Beatles. Jogo muito bem feito e divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (65, N'Kinect Adventures', N'kinectadventures.jpg', CAST(N'2010-12-21T00:00:00.000' AS DateTime), 7, 47, 4, 2, 4, 1, 1, 1, N'Jogo que acompanha o kinect e que apresente alguns mini-jogos para jogar com os amigos. Divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (66, N'Kinect Joy Ride', N'kinectjoyride.jpg', CAST(N'2010-12-21T00:00:00.000' AS DateTime), 7, 48, 6, 2, 3, 4, 1, 1, N'Jogo de corrida para o kinect. O carro corre sozinho e você controla com movimentos. Alguns modos de jogo são divertidos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (67, N'LIMBO', N'limbo.jpg', CAST(N'2010-12-17T00:00:00.000' AS DateTime), 7, 49, 4, 4, 5, 1, 5, 3, N'Jogo indie, simples e muito bom!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (68, N'Viva Piñata: TIP', N'vivapinatatip.jpg', CAST(N'2011-02-18T00:00:00.000' AS DateTime), 7, 47, 6, 2, 3, 4, 1, 1, N'Joguei bastante o primeiro mas esse segundo não pegou.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (69, N'Viva Piñata', N'vivapinata.jpg', CAST(N'2007-01-27T00:00:00.000' AS DateTime), 7, 47, 4, 4, 4, 5, 1, 1, N'[jogo trocado pelo TIP por ter arranhado] Jogo infantil, primeiro a ser duplado no 360 mas que me divertiu bastante.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (70, N'Sonic Adventure', N'sonicadventure.jpg', CAST(N'2010-09-16T00:00:00.000' AS DateTime), 1, 13, 4, 4, 5, 1, 5, 3, N'Jogão do Sonic de olhos verdes do Dreamcast. Talvez o melhor feito até o momento da era 3D.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (71, N'BioShock 2', N'bioshock2.jpg', CAST(N'2010-12-09T00:00:00.000' AS DateTime), 50, 50, 6, 2, 3, 4, 1, 1, N'Falam tão bem do 1 mas esse 2 é muito chato.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (72, N'Trials HD', N'trialshd.jpg', CAST(N'2010-11-27T00:00:00.000' AS DateTime), 7, 51, 6, 4, 3, 1, 5, 3, N'No começo é divertido mas depois cansa.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (74, N'Dash of Destruction', N'Dashofdestruction.jpg', CAST(N'2008-12-20T00:00:00.000' AS DateTime), 7, 52, 4, 4, 4, 1, 5, 3, N'Puzzle tipo de tabuleiro. Divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (75, N'Sonic & Knuckles', N'SonicKnuckles.jpg', CAST(N'2009-11-07T00:00:00.000' AS DateTime), 1, 13, 4, 4, 5, 1, 5, 3, N'Jogaço do mega drive onde você poderia juntar os outros jogos  da série e fazer o Knuckles participar.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (76, N'Kameo', N'kameo.jpg', CAST(N'2006-12-07T00:00:00.000' AS DateTime), 7, 47, 4, 2, 4, 1, 1, 1, N'Veio com o Xbox mas é bem divertido. Nada demais.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (77, N'Phantasy Star II', N'Phantasy_Star_II.jpg', CAST(N'2009-06-11T00:00:00.000' AS DateTime), 1, 13, 6, 4, 5, 4, 5, 3, N'Primeiro RPG que joguei na vida, ainda no Master System. Responsável por eu gostar de RPGs japoneses.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (78, N'Brütal Legend', N'brutallegend.jpg', CAST(N'2009-11-14T00:00:00.000' AS DateTime), 3, 53, 4, 2, 4, 1, 1, 1, N'Jack Black = Humor, Rock, RTS e Decapitatiooooooonnnn!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (79, N'Gears of War 2', N'gears2.jpg', CAST(N'2008-11-13T00:00:00.000' AS DateTime), 7, 35, 4, 2, 5, 1, 1, 1, N'dando sequencia ao ótimo FPS da plataforma.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (80, N'RESIDENT EVIL 5', N'residentevil5.jpg', CAST(N'2009-07-23T00:00:00.000' AS DateTime), 32, 32, 4, 2, 4, 1, 1, 1, N'[Jogo arranhado pelo próprio xbox]. Não é mais RE mas é legal.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (81, N'PES 2009', N'pes2009.jpg', CAST(N'2009-01-12T00:00:00.000' AS DateTime), 36, 36, 6, 2, 4, 1, 1, 1, N'Acho que foi o último PES que joguei de verdade.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (82, N'Fable® II Pub Games', N'Fablepubgames.jpg', CAST(N'2009-01-18T00:00:00.000' AS DateTime), 7, 46, 4, 4, 4, 1, 5, 3, N'Jogo adicional ao Fable II. divertido e ainda retornava recompensas ao jogo principal.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (83, N'Carcassonne', N'carcassonne.jpg', CAST(N'2007-12-15T00:00:00.000' AS DateTime), 54, 54, 4, 4, 4, 1, 5, 3, N'Jogo de tabuleiro. Divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (84, N'Rock Band', N'rockaband.jpg', CAST(N'2008-03-21T00:00:00.000' AS DateTime), 3, 23, 4, 2, 5, 1, 1, 1, N'Responsável por não ter jogado vários jogos famosos da mesma época. Durante um tempo eu só joguei Rock Band. E não me arrependo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (85, N'Forza Motorsport 2', N'forza2.jpg', CAST(N'2007-06-18T00:00:00.000' AS DateTime), 25, 7, 5, 2, 4, 1, 1, 1, N'Joguei muito pouco. Devia ter jogado mais.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (86, N'Blue Dragon', N'bluedragon.jpg', CAST(N'2007-11-05T00:00:00.000' AS DateTime), 7, 55, 4, 2, 5, 1, 1, 1, N'No começo da geração um jogo que veio em 3 DVDs. RPG japonês bem grande. Animações no estilo animê com muitas cores. Ótimas músicas!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (87, N'Winning Eleven 2007', N'we2007.jpg', CAST(N'2007-03-03T00:00:00.000' AS DateTime), 36, 36, 4, 2, 4, 1, 1, 1, N'Foi quando mudou o nome de Winning Eleven para Pro Evolution Soccer. Essa era bem legal ainda.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (88, N'Assassin''s Creed', N'assassinscreed.jpg', CAST(N'2008-06-10T00:00:00.000' AS DateTime), 8, 8, 4, 4, 4, 1, 1, 3, N'Joguei primeiro com um jogo emprestado e depois comprei. Gostei muito da série, da mistura com história.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (89, N'Halo 3', N'halo3.jpg', CAST(N'2008-03-17T00:00:00.000' AS DateTime), 7, 45, 4, 4, 4, 1, 1, 1, N'Primeiro jogo no X360 da série que se consagrou na geração anterior.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (90, N'BioShock', N'bioshock.jpg', CAST(N'2008-03-14T00:00:00.000' AS DateTime), 50, 50, 4, 4, 7, 1, 1, 3, N'Joguei um pouco emprestado mas comprei posteriormente para ver se é tudo que falam mesmo. É interessante, mas joguei meio corrido sem prestar muit atenção na história.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (91, N'Gears of War', N'gears.jpg', CAST(N'2006-12-27T00:00:00.000' AS DateTime), 7, 35, 4, 2, 5, 1, 1, 1, N'Pra começar a guerra contra os Locusts, um jogaço!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (92, N'Hexic HD', N'hexichd.jpg', CAST(N'2006-12-06T00:00:00.000' AS DateTime), 7, 56, 4, 4, 4, 1, 5, 3, N'Joguinho do tipo viciantes de juntar pedrinhas da mesma cor.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (93, N'PGR 3', N'pgr3.jpg', CAST(N'2006-12-06T00:00:00.000' AS DateTime), 7, 57, 6, 2, 4, 1, 1, 1, N'Primeiro jogo de corrida do xbox 360. Já veio no pacote.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (94, N'Perfect Dark Zero', N'perfectdarkzero.jpg', CAST(N'2006-12-06T00:00:00.000' AS DateTime), 7, 47, 4, 2, 3, 1, 1, 1, N'O multiplayer ainda era divertidinho. Não tinham muitas opções na época também. Mas é bem fraquinho o jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (95, N'LittleBigPlanet™2', N'Littlebigplanet2.jpg', CAST(N'2013-09-03T00:00:00.000' AS DateTime), 4, 61, 6, 4, 3, 1, 2, 3, N'Mais do mesmo. Não tenho muito saco pra explorar a criação de fases, então... cansa rápido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (96, N'inFAMOUS 2', N'Infamous_2.png', CAST(N'2013-08-18T00:00:00.000' AS DateTime), 4, 62, 5, 4, 3, 1, 2, 3, N'Joguei o 1 e achei muito repetitivo, o 2 começou do mesmo jeito.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (97, N'VANQUISH', N'Vanquish.png', CAST(N'2013-08-02T00:00:00.000' AS DateTime), 1, 64, 5, 4, 3, 1, 2, 3, N'Comecei a jogar mas não me animou muito.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (98, N'Sleeping Dogs™', N'Sleeping_Dogs.jpg', CAST(N'2013-06-28T00:00:00.000' AS DateTime), 9, 9, 4, 4, 4, 1, 2, 3, N'Tipo GTA, mas em Hong Kong. As lutas e troca de tiros são divertidas.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (99, N'Sonic & All-Stars Racing Transformed™', N'Sonic_&_All-Stars_Racing_Transformed.png', CAST(N'2013-03-23T00:00:00.000' AS DateTime), 1, 65, 5, 6, 4, 4, 2, 4, N'Fã do Sonic tem que ter tudo dele. Mas esse vale a pena. Jogo de corrida bem divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (100, N'Joe Danger 2: The Movie', N'Joe_Danger_The_Movie.jpg', CAST(N'2013-06-09T00:00:00.000' AS DateTime), 66, 66, 5, 4, 4, 1, 3, 3, N'Engraçadinho mas meio repetitivo. Tem tantas  outras coisas pra jogar...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (101, N'Dishonored', N'Dishonored.jpg', CAST(N'2012-12-28T00:00:00.000' AS DateTime), 12, 67, 5, 6, 3, 4, 2, 4, N'O jogo é bom mas eu não tenho muita paciência com as partes steelth e achei um pouco repetitivo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (102, N'Band Hero', N'Band_Hero.jpg', CAST(N'2011-10-08T00:00:00.000' AS DateTime), 59, 68, 5, 6, 4, 4, 2, 4, N'Guitar Hero teen.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (103, N'Uncharted 3: Drake''s Deception™', N'Uncharted_3.jpg', CAST(N'2012-09-24T00:00:00.000' AS DateTime), 4, 69, 4, 6, 5, 1, 2, 4, N'3ª jogo DA série do PS3.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (104, N'Uncharted 2: Among Thieves™', N'Uncharted_2.jpg', CAST(N'2012-07-24T00:00:00.000' AS DateTime), 4, 69, 4, 4, 5, 1, 2, 3, N'2º jogo dA série do PS3.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (105, N'Uncharted: Drake''s Fortune', N'Uncharted_Drake''s_Fortune.jpg', CAST(N'2012-05-01T00:00:00.000' AS DateTime), 4, 69, 4, 6, 5, 1, 2, 4, N'Por que demorei tanto a descobrir esse jogo? Jogão!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (106, N'inFamous', N'Infamous.jpg', CAST(N'2011-08-20T00:00:00.000' AS DateTime), 4, 62, 4, 4, 3, 1, 2, 3, N'A PSN fez merda, me deu esse jogo pra compensar. O jogo é muito repetitivo e parece que nunca mais vai acabar. Mas acabou. Chega.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (107, N'Dead Nation™', N'Dead_Nation.jpg', CAST(N'2011-08-20T00:00:00.000' AS DateTime), 4, 70, 5, 4, 3, 4, 2, 3, N'Jogo dado pela Sony pra compensar as besteiras feitas na PSN. Legalzinho, mas depois de um tempo cansou.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (108, N'Sonic The Hedgehog', N'Sonic1.jpg', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 1, 13, 5, 4, 5, 4, 3, 3, N'Porque eu preciso ter todos os jogos do Sonic em todas as plataformas.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (109, N'Guitar Hero 5', N'Guitar_Hero_5.jpg', CAST(N'2011-09-04T00:00:00.000' AS DateTime), 59, 68, 4, 6, 4, 1, 2, 4, N'Bom mas prefiro o rock Band.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (110, N'Sonic The Hedgehog 2', N'Sonic2.jpg', CAST(N'2011-01-01T00:00:00.000' AS DateTime), 1, 13, 4, 4, 5, 1, 3, 3, N'O mesmo jogo, agora na PSN.')
GO
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (111, N'LittleBigPlanet™', N'LittleBigPlanet.png', CAST(N'2011-09-01T00:00:00.000' AS DateTime), 4, 61, 4, 6, 4, 1, 2, 4, N'Litoubigpleneti opá! =)')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (112, N'Flower', N'Flower.png', CAST(N'2010-08-07T00:00:00.000' AS DateTime), 4, 71, 5, 4, 3, 4, 3, 3, N'Conceito interessante, bonito, mas dá sono.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (113, N'God of War® III', N'God_of_War_III.jpg', CAST(N'2010-04-04T00:00:00.000' AS DateTime), 4, 4, 4, 6, 5, 1, 2, 4, N'3ª busca por vingança do Kratos! Mas é um ótimo jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (114, N'God of War®: Collection', N'godofwarcollection.jpg', CAST(N'2010-03-20T00:00:00.000' AS DateTime), 4, 4, 4, 6, 5, 1, 2, 4, N'Coleção com os dois primeiros God of War lançados originalmente do PS2.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (116, N'Battlefield 1943™', N'Battlefield_1943.png', CAST(N'2010-01-09T00:00:00.000' AS DateTime), 3, 3, 5, 4, 4, 1, 3, 3, N'Guerra online bem divertida.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (117, N'Eternal Sonata', N'eternalsonata.jpg', CAST(N'2010-01-01T00:00:00.000' AS DateTime), 60, 60, 5, 6, 4, 4, 2, 4, N'Cheguei no fim do jogo e não consegui matar o chefe. Tenho que melhorar os personagens e deu uma preguiiiça. Cheguei a recomeçar o jogo mas parei de novo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (118, N'Drangon''s Lair', N'dragonLairs.jpg', CAST(N'2013-09-01T00:00:00.000' AS DateTime), 7, 72, 4, 4, 4, 1, 5, 3, N'Antigo jogo mioto famoso. Totalmente diferente do que eu imaginava. O jogador apenas tem que apertar o botão certo na hora certa. Tem um modo de jogo com o Kinect mas eu não cheguei a testar. A sensação de estar jogando um desenho animado é legal hoje, imagine na época do lançamento da versão original.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (119, N'Insanely Twisted: SP', N'Insanely-Twisted-Shadow-Planet.jpg', CAST(N'2013-10-01T00:00:00.000' AS DateTime), 7, 73, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (120, N'Rainbow Six Vegas', N'Rainbow-Six-Vegas-1.jpeg', CAST(N'2013-09-15T00:00:00.000' AS DateTime), 8, 8, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (121, N'Magic 2013', N'magic2013.jpg', CAST(N'2013-09-01T00:00:00.000' AS DateTime), 7, 74, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (123, N'Dead Rising 2', N'deadriging2.jpg', CAST(N'2013-08-15T00:00:00.000' AS DateTime), 32, 75, 6, 4, 7, 4, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (124, N'Crackdown', N'crackdown.jpg', CAST(N'2013-08-01T00:00:00.000' AS DateTime), 7, 51, 5, 4, 7, 7, 1, 3, N'muito jogo na fila pra perder tempo com outro que quer ser um GTA.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (125, N'devil May Cry HD Collection', N'devilmaycryHDCollection.jpg', CAST(N'2013-07-15T00:00:00.000' AS DateTime), 32, 35, 6, 4, 3, 4, 1, 3, N'três esmaga botão juntos. No começo é legal, mas gráficos e sons de PS2 cansam.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (126, N'Lego Batman 2', N'lego_batman_2.jpg', CAST(N'2013-07-01T00:00:00.000' AS DateTime), 29, 40, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (127, N'Lego OSdA', N'logoLotR.jpg', CAST(N'2013-07-01T00:00:00.000' AS DateTime), 29, 40, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (128, N'Defence Grid', N'Defense-Grid_XBLA.jpg', CAST(N'2013-06-15T00:00:00.000' AS DateTime), 7, 78, 5, 4, 7, 1, 5, 3, N'tower defense...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (129, N'Borderlands 2', N'borderlands 2.jpg', CAST(N'2013-06-01T00:00:00.000' AS DateTime), 50, 79, 4, 4, 4, 7, 1, 3, N'Shooter com armas variadas, gráfico interessante. Gosto do esquema de níveis na evoução do personagem. Chefe final foi ridículamente fácil.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (130, N'Spartacus Legends', N'spartacus_legends.jpg', CAST(N'2013-06-01T00:00:00.000' AS DateTime), 8, 80, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (131, N'L.A. Noire', N'LA Noire Xbox360.jpg', CAST(N'2013-05-15T00:00:00.000' AS DateTime), 10, 81, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (132, N'Alan Wake American Nightmare', N'Alan-Wake-Box-Art.jpg', CAST(N'2013-05-01T00:00:00.000' AS DateTime), 7, 38, 4, 5, 4, 7, 5, 3, N'Continuação do Alan Wake. Jogo de terro no formato de uma serie. Bem legal mas um pouco repetitivo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (133, N'Happy Wars', N'happywars.jpg', CAST(N'2013-04-15T00:00:00.000' AS DateTime), 7, 40, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (134, N'Sonic Adventure 2', N'Sonic_Adventure_2_Arcade.jpg', CAST(N'2013-04-01T00:00:00.000' AS DateTime), 1, 1, 1, 4, 5, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (135, N'Wreckater', N'wreckateer.jpg', CAST(N'2013-04-01T00:00:00.000' AS DateTime), 7, 31, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1118, N'A world of Keflings', N'AWorldOfKeflings_BoxArt.jpg', CAST(N'2013-11-01T00:00:00.000' AS DateTime), 7, 52, 6, 5, 7, 7, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1120, N'Ryse: Son of Rome', N'Ryse_Son_Of_Rome_capa__60305_zoom.jpg', CAST(N'2013-11-22T00:00:00.000' AS DateTime), 7, 1072, 4, 3, 4, 1, 6, 4, N'Primeiro jogo do Xbox One. Esmaga bot~eos com gráficos muito bonito e história curta mas legal.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1121, N'Banjo-tooie', N'banjo-tooie-xbla.jpg', CAST(N'2014-03-15T00:00:00.000' AS DateTime), 7, 47, 6, 5, 7, 7, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1122, N'Civilization Revolution', N'civilization_revolution.jpg', CAST(N'2014-03-01T00:00:00.000' AS DateTime), 50, 1073, 4, 4, 5, 1, 5, 3, N'Tradicional jogo de estratégia, muito divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1123, N'Deadlight', N'dealight.jpg', CAST(N'2014-04-16T00:00:00.000' AS DateTime), 7, 81, 6, 4, 3, 1, 5, 3, N'puzzle com zumbi. Interessante mas me cansou.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1125, N'Fable Anniversary', N'fable_anniversary.jpg', CAST(N'2014-02-17T00:00:00.000' AS DateTime), 7, 46, 4, 4, 3, 1, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1126, N'Hitman Absolution', N'hitmal_absolution.jpg', CAST(N'2014-04-01T00:00:00.000' AS DateTime), 9, 1075, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1127, N'Kinect Sports Season Two', N'kinectsports2.jpg', CAST(N'2014-01-01T00:00:00.000' AS DateTime), 7, 47, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1128, N'Rock Band Blitz', N'rockbandblitz.jpg', CAST(N'2014-02-21T00:00:00.000' AS DateTime), 23, 23, 6, 4, 3, 4, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1129, N'Shoot Many Robots', N'shootmanyrobots.jpg', CAST(N'2014-02-01T00:00:00.000' AS DateTime), 8, 1076, 4, 4, 4, 7, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1130, N'Toy Soldiers: Cold War', N'toysoldiers.jpg', CAST(N'2014-01-01T00:00:00.000' AS DateTime), 7, 1077, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1132, N'Child of light', N'childoflight.jpg', CAST(N'2014-05-20T00:00:00.000' AS DateTime), 8, 8, 4, 4, 4, 1, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1134, N'Max: The Curse of Brotherhood', N'max.jpg', CAST(N'2014-06-05T00:00:00.000' AS DateTime), 7, 1078, 4, 4, 4, 1, 6, 3, N'Bem divertido, com mecânica de jogo bem criativa.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1136, N'Halo: Spartan Assault', N'halospartanssalt.jpg', CAST(N'2014-06-05T00:00:00.000' AS DateTime), 7, 1079, 1, 4, 7, 3, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1138, N'Dark Souls', N'darksouls.jpg', CAST(N'2014-06-19T00:00:00.000' AS DateTime), 60, 1082, 6, 4, 2, 7, 1, 3, N'difícil demais')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1139, N'Guacamelee! Super Turbo CE', N'guacamelee.jpg', CAST(N'2014-07-01T00:00:00.000' AS DateTime), 59, 1083, 4, 4, 4, 1, 6, 3, N'Divertido, engraçado e irritantemente difícil em alguns momentos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1140, N'Charlie Murder', N'charliemurder.jpg', CAST(N'2014-06-01T00:00:00.000' AS DateTime), 1084, 1084, 6, 4, 3, 1, 5, 3, N'Castle Crashers #SQN')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1141, N'SUPER STREETFIGHTER IV Ae', N'streetfighteriv.jpg', CAST(N'2014-06-15T00:00:00.000' AS DateTime), 32, 32, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1142, N'Rocksmith 2014 Edition', N'rocksmith2014.jpg', CAST(N'2014-08-01T00:00:00.000' AS DateTime), 8, 8, 5, 4, 7, 2, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1143, N'BattleBlock Theater', N'battleblock.jpg', CAST(N'2014-07-15T00:00:00.000' AS DateTime), 7, 26, 5, 4, 3, 1, 5, 3, N'Parece ser lago para jogar em grupo, como Castle Crashers, mas sozinho ficou meio entediante.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1144, N'Motocross Madness', N'motocrossmadness.jpg', CAST(N'2014-08-01T00:00:00.000' AS DateTime), 7, 1085, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1146, N'Assassins Creed Chronicles: China', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1147, N'Assassins Creed Syndicate', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 8, 8, 4, 4, 5, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1148, N'Batman: The Telltale Series', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 29, 37, 4, 4, 4, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1149, N'Batman: Arkham Knight', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1150, N'Earthlock', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1151, N'Evolve', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1152, N'Fallout Shelter', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1153, N'Forza Horizon 2', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1154, N'Gran Theft Auto V', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1155, N'Halo: The Master Chief Collection', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1156, N'Inside', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 4, 4, 5, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1157, N'Just Dance 2015', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1158, N'Just Dance 2016', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1159, N'Just Sing', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1160, N'Killer Instinct', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1161, N'Killer Instinct 2 Classic', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1162, N'Lara Croft and the Temple os Osiris', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1163, N'Layers of fear', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1164, N'Lego Marvel Super Heroes', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1165, N'Lego Vingadores', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1166, N'Lego Star Wars: O Despertar da Força', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1167, N'Life is strange', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1168, N'Limbo', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 4, 4, 5, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1169, N'Lords of then fallen', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1170, N'Murdered: Soul Suspect', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1171, N'NBA 2K15', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 4, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1172, N'Ori and then blind forest', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 4, 4, 5, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1173, N'Outlast', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1174, N'Phantom Dust', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1175, N'Pneuma', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1176, N'PES 2016', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1177, N'Project Cars', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1178, N'Rise of the Tomb Raider', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1179, N'Rock Band 4', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1180, N'Rocket Legue', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1181, N'Crimes & Punishments', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1182, N'SpeedRunners', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1183, N'Star Wars: Battlefront', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1184, N'Styx: Master of shadows', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1185, N'Super dungeon Bros', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1186, N'Super Mega Basebol', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1187, N'The Crew', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1188, N'The Escapists', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1189, N'The Incredible Adventures of Van Helsing', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1190, N'Pinball Arcade', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1191, N'The Walking Dead: Season One', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1192, N'The Walking Dead: Season Two', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1193, N'The Witcher III: Wild Hunt', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1194, N'The Wolf Among Us', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1195, N'Thief', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1196, N'Titanfall', N'capa_padrao.jpg', CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1197, N'Titanfall 2', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1198, N'Tomb Raider: Definitive Edition', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1199, N'Trumblestone', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1200, N'Warriors Orochi 3 Ultimate', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1201, N'Watch_Dogs', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
GO
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1202, N'World of Tanks', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1203, N'World of Van Helsing> Deathtrap', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1204, N'Zheroes', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1205, N'#IDARB', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1206, N'AirMech Arena', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1207, N'Aritana e a pena da arpia', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1208, N'Assassins Creed Black Flag', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1210, N'Castle Storm', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1211, N'Chariot', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1212, N'Child of light', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1213, N'Costume Quest 2', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1214, N'Crimson Dragon', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1215, N'D4', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1216, N'DC Universe on line', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1222, N'Fifa 14', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1224, N'Giana Sisters', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1225, N'Goat Simulator', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1226, N'Hand of fate', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1227, N'Happy Wars', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1228, N'How to survive: Storm Warning Edition', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1229, N'Kinect Sports Rivals', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1230, N'Knight Squad', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1231, N'No time to explain', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1232, N'Pinball FX 2', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1233, N'Lovers in a dangerous spacetime', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1234, N'Project Spark', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1235, N'Rayman Legends', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1236, N'So many me', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1237, N'Strike suit zero', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1238, N'Super time force', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1239, N'The banner saga 2', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1240, N'The deer God', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1241, N'Valiant Hearts: The great war', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1242, N'Warframe', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1243, N'Worms Battlegrounds', NULL, CAST(N'2000-01-01T00:00:00.000' AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1245, N'Rainbow Six Siege', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 8, 8, 6, 4, 7, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1246, N'God of war 3 remastered', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 4, 4, 4, 4, 5, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1247, N'Uncharted 4', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 4, 4, 4, 3, 5, 7, 7, 4, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1248, N'Tales of borderlands', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1249, N'Skyforge', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 5, 4, 7, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1250, N'Paragon', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1251, N'Paladins', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 6, 4, 3, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1252, N'Neverwinter', N'', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 50, 50, 6, 4, 7, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1253, N'Abzû', N'', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 50, 50, 4, 4, 5, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1254, N'Kingdom Hearts HD 2.8', N'', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1255, N'Grim Fandango', N'', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 50, 50, 5, 4, 7, 2, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1256, N'Firewatch', N'', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 50, 50, 4, 4, 4, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1257, N'Journey', N'', CAST(N'2017-01-01T00:00:00.000' AS DateTime), 50, 50, 4, 4, 4, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1258, N'Lego Batman 3', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 5, 4, 7, 2, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1259, N'Doom', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 12, 12, 5, 4, 5, 2, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1260, N'Grow up', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 4, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1261, N'Unravel', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1262, N'Killing floor 2', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 6, 4, 3, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1263, N'Neon chrome', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 6, 4, 4, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1264, N'Spy chameleon', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 6, 4, 3, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1265, N'Lego Piratas do Caribe', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1266, N'Runbow', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1267, N'Untio down', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1268, N'Game of thrones', N'', CAST(N'2017-07-01T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1269, N'De volta para o futuro', N'', CAST(N'2017-07-22T00:00:00.000' AS DateTime), 37, 37, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1270, N'Day of the tentacle remastered', N'', CAST(N'2017-07-22T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1271, N'Bayoneta', N'', CAST(N'2017-08-02T00:00:00.000' AS DateTime), 1, 1, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1272, N'Slime rancher', N'', CAST(N'2017-08-02T00:00:00.000' AS DateTime), 50, 50, 1, 4, 7, 3, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt_compra], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1273, N'Sonic Mania', N'', CAST(N'2017-08-15T00:00:00.000' AS DateTime), 1, 1, 4, 4, 5, 2, 6, 3, N'')
SET IDENTITY_INSERT [dbo].[jogos] OFF
SET IDENTITY_INSERT [dbo].[LOCALIZACAO] ON 

INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (2, N'Escritório', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (3, N'Sala', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (4, N'HD', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (5, N'Nenhuma', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (6, N'Bianca', N'')
SET IDENTITY_INSERT [dbo].[LOCALIZACAO] OFF
SET IDENTITY_INSERT [dbo].[MIDIA] ON 

INSERT [dbo].[MIDIA] ([MID_ID], [MID_NOME]) VALUES (1, N'DVD')
INSERT [dbo].[MIDIA] ([MID_ID], [MID_NOME]) VALUES (3, N'Digital')
INSERT [dbo].[MIDIA] ([MID_ID], [MID_NOME]) VALUES (4, N'Bluray')
SET IDENTITY_INSERT [dbo].[MIDIA] OFF
SET IDENTITY_INSERT [dbo].[PLATAFORMA] ON 

INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME]) VALUES (1, N'Xbox 360')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME]) VALUES (2, N'PS3')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME]) VALUES (3, N'PSN')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME]) VALUES (5, N'XBLA')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME]) VALUES (6, N'Xbox One')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME]) VALUES (7, N'PS4')
SET IDENTITY_INSERT [dbo].[PLATAFORMA] OFF
SET IDENTITY_INSERT [dbo].[PROGRESSO] ON 

INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME]) VALUES (1, N'Nem comecei')
INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME]) VALUES (4, N'Zerado')
INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME]) VALUES (5, N'Começado')
INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME]) VALUES (6, N'Parado')
SET IDENTITY_INSERT [dbo].[PROGRESSO] OFF
SET IDENTITY_INSERT [dbo].[STATUS] ON 

INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (1, N'Jogado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (2, N'Jogando')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (3, N'Na fila')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (4, N'Parado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (5, N'Trocado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (6, N'Arranhado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (7, N'Excluído')
SET IDENTITY_INSERT [dbo].[STATUS] OFF
ALTER TABLE [dbo].[AVALIACAO]  WITH CHECK ADD  CONSTRAINT [FK_AVALIACAO_AVALIACAO] FOREIGN KEY([AVA_ID])
REFERENCES [dbo].[AVALIACAO] ([AVA_ID])
GO
ALTER TABLE [dbo].[AVALIACAO] CHECK CONSTRAINT [FK_AVALIACAO_AVALIACAO]
GO
ALTER TABLE [dbo].[EMPRESTIMO]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESTIMO_EMPRESTIMO] FOREIGN KEY([JOGO_ID])
REFERENCES [dbo].[jogos] ([jogo_id])
GO
ALTER TABLE [dbo].[EMPRESTIMO] CHECK CONSTRAINT [FK_EMPRESTIMO_EMPRESTIMO]
GO
ALTER TABLE [dbo].[EMPRESTIMO]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESTIMO_PESSOA] FOREIGN KEY([PESS_ID])
REFERENCES [dbo].[PESSOA] ([PESS_ID])
GO
ALTER TABLE [dbo].[EMPRESTIMO] CHECK CONSTRAINT [FK_EMPRESTIMO_PESSOA]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_AVALIACAO] FOREIGN KEY([jogo_avaliacao])
REFERENCES [dbo].[AVALIACAO] ([AVA_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_AVALIACAO]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_DESENVOLVEDORA] FOREIGN KEY([jogo_desenvolvedora])
REFERENCES [dbo].[EMPRESA] ([EMP_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_DESENVOLVEDORA]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_LOCALIZACAO] FOREIGN KEY([loc_id])
REFERENCES [dbo].[LOCALIZACAO] ([LOC_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_LOCALIZACAO]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_MIDIA] FOREIGN KEY([mid_id])
REFERENCES [dbo].[MIDIA] ([MID_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_MIDIA]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_PLATAFORMA] FOREIGN KEY([pla_id])
REFERENCES [dbo].[PLATAFORMA] ([PLA_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_PLATAFORMA]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_PROGRESSO] FOREIGN KEY([pro_id])
REFERENCES [dbo].[PROGRESSO] ([PRO_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_PROGRESSO]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_PUBLISHER] FOREIGN KEY([jogo_publisher])
REFERENCES [dbo].[EMPRESA] ([EMP_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_PUBLISHER]
GO
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_STATUS] FOREIGN KEY([jogo_status])
REFERENCES [dbo].[STATUS] ([STA_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_STATUS]
GO
