USE [erick]
GO
/****** Object:  ForeignKey [FK_AVALIACAO_AVALIACAO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[AVALIACAO] DROP CONSTRAINT [FK_AVALIACAO_AVALIACAO]
GO
/****** Object:  ForeignKey [FK_EMPRESTIMO_EMPRESTIMO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[EMPRESTIMO] DROP CONSTRAINT [FK_EMPRESTIMO_EMPRESTIMO]
GO
/****** Object:  ForeignKey [FK_EMPRESTIMO_PESSOA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[EMPRESTIMO] DROP CONSTRAINT [FK_EMPRESTIMO_PESSOA]
GO
/****** Object:  ForeignKey [FK_jogos_AVALIACAO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_AVALIACAO]
GO
/****** Object:  ForeignKey [FK_jogos_DESENVOLVEDORA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_DESENVOLVEDORA]
GO
/****** Object:  ForeignKey [FK_jogos_LOCALIZACAO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_LOCALIZACAO]
GO
/****** Object:  ForeignKey [FK_jogos_MIDIA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_MIDIA]
GO
/****** Object:  ForeignKey [FK_jogos_PLATAFORMA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_PLATAFORMA]
GO
/****** Object:  ForeignKey [FK_jogos_PROGRESSO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_PROGRESSO]
GO
/****** Object:  ForeignKey [FK_jogos_PUBLISHER]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_PUBLISHER]
GO
/****** Object:  ForeignKey [FK_jogos_STATUS]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_STATUS]
GO
/****** Object:  Table [dbo].[EMPRESTIMO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[EMPRESTIMO] DROP CONSTRAINT [FK_EMPRESTIMO_EMPRESTIMO]
GO
ALTER TABLE [dbo].[EMPRESTIMO] DROP CONSTRAINT [FK_EMPRESTIMO_PESSOA]
GO
DROP TABLE [dbo].[EMPRESTIMO]
GO
/****** Object:  StoredProcedure [dbo].[SP_JOGO_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
DROP PROCEDURE [dbo].[SP_JOGO_SALVAR]
GO
/****** Object:  StoredProcedure [dbo].[SP_PLATAFORMA_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
DROP PROCEDURE [dbo].[SP_PLATAFORMA_SALVAR]
GO
/****** Object:  StoredProcedure [dbo].[SP_PROGRESSO_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
DROP PROCEDURE [dbo].[SP_PROGRESSO_SALVAR]
GO
/****** Object:  StoredProcedure [dbo].[SP_EMPRESA_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
DROP PROCEDURE [dbo].[SP_EMPRESA_SALVAR]
GO
/****** Object:  Table [dbo].[jogos]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_AVALIACAO]
GO
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_DESENVOLVEDORA]
GO
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_LOCALIZACAO]
GO
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_MIDIA]
GO
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_PLATAFORMA]
GO
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_PROGRESSO]
GO
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_PUBLISHER]
GO
ALTER TABLE [dbo].[jogos] DROP CONSTRAINT [FK_jogos_STATUS]
GO
DROP TABLE [dbo].[jogos]
GO
/****** Object:  Table [dbo].[LOCALIZACAO]    Script Date: 07/05/2018 16:06:02 ******/
DROP TABLE [dbo].[LOCALIZACAO]
GO
/****** Object:  Table [dbo].[MIDIA]    Script Date: 07/05/2018 16:06:02 ******/
DROP TABLE [dbo].[MIDIA]
GO
/****** Object:  Table [dbo].[PESSOA]    Script Date: 07/05/2018 16:06:02 ******/
DROP TABLE [dbo].[PESSOA]
GO
/****** Object:  Table [dbo].[PLATAFORMA]    Script Date: 07/05/2018 16:06:02 ******/
DROP TABLE [dbo].[PLATAFORMA]
GO
/****** Object:  Table [dbo].[PROGRESSO]    Script Date: 07/05/2018 16:06:02 ******/
DROP TABLE [dbo].[PROGRESSO]
GO
/****** Object:  Table [dbo].[STATUS]    Script Date: 07/05/2018 16:06:02 ******/
DROP TABLE [dbo].[STATUS]
GO
/****** Object:  Table [dbo].[AVALIACAO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[AVALIACAO] DROP CONSTRAINT [FK_AVALIACAO_AVALIACAO]
GO
DROP TABLE [dbo].[AVALIACAO]
GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 07/05/2018 16:06:02 ******/
DROP TABLE [dbo].[EMPRESA]
GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 07/05/2018 16:06:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESA](
	[EMP_ID] [int] IDENTITY(1,1) NOT NULL,
	[EMP_NOME] [nvarchar](50) NULL,
	[EMP_LOGO] [nvarchar](250) NULL,
 CONSTRAINT [PK_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[EMP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EMPRESA] ON
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1, N'Sega', N'https://cdn.awsli.com.br/600x450/587/587641/produto/27478793/a467ec3098.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (3, N'EA', N'https://i.forbesimg.com/media/lists/companies/electronic-arts_416x416.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (4, N'Sony Interactive Entertainment', N'https://vignette.wikia.nocookie.net/sonic/images/0/0d/SCE.png/revision/latest?cb=20180201202408')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (7, N'Microsoft Studios', N'https://upload.wikimedia.org/wikipedia/commons/3/36/Microsoft_Studios_Logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (8, N'Ubisoft', N'https://vignette.wikia.nocookie.net/logopedia/images/d/d3/Ubisoft_logo_Black.svg/revision/latest?cb=')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (9, N'Square Enix', N'https://cdn.wccftech.com/wp-content/uploads/2017/05/Square-Enix-Financial-Year-2017-01-Header.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (10, N'Rockstar Games', N'https://vignette.wikia.nocookie.net/gtawiki/images/4/4c/Rockstar_Toronto_Logo.png/revision/latest?cb')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (12, N'Bethesda', N'http://www.logosurfer.com/wp-content/uploads/2018/03/bethesda-logo_0.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (13, N'Sonic Team', N'https://orig00.deviantart.net/180a/f/2010/149/6/d/sonic_team_logo_by_sonicshadowhedgehog3.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (23, N'Harmonix', N'http://stormunity.com/wp-content/uploads/2013/09/harmonix-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (24, N'Valve', N'https://vignette.wikia.nocookie.net/left4dead/images/3/3d/Valve_Logo.png/revision/latest?cb=20090912')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (25, N'Turn 10', N'http://pbs.twimg.com/profile_images/3593149319/d8ebef3c5820c69220cdf2e2ce998ecd_400x400.jpeg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (26, N'Behemoth', N'https://images-na.ssl-images-amazon.com/images/I/71f6%2BfgsXiL._UX466_.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (27, N'343 industries', N'https://static1.squarespace.com/static/526c1789e4b0ed58849835e0/t/5a99ad0508522918ae01b6a7/152002074')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (28, N'NetherRealm', N'http://www.davidsimgames.com/wp-content/uploads/2016/07/banner_netherrealm_.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (29, N'Warner Bros. Games', N'http://image.wikifoundry.com/image/1/R6ieZMobRywtGnzKRcf0VA14900/GW175H131')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (30, N'Visceral Games', N'https://vignette.wikia.nocookie.net/logopedia/images/6/69/Visceral_games_logo.jpg/revision/latest?cb')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (31, N'Ignis gaming', N'https://pbs.twimg.com/profile_images/505641973386981377/loEzw2d2_400x400.jpeg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (32, N'Capcom', N'https://mk0valuewalkgcar7lmc.kinstacdn.com/wp-content/uploads/2016/11/capcom.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (33, N'Eidos', N'https://upload.wikimedia.org/wikipedia/commons/8/8e/Eidos_logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (34, N'Crystal Dynamics', N'https://crystald.cdn.sqexeu.com/img/static/global/cd-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (35, N'Epic games', N'https://az804169.vo.msecnd.net/media/Default/News/news-showcase-epic-1.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (36, N'Konami', N'https://vignette.wikia.nocookie.net/yugioh/images/6/6b/Konami_logo.png/revision/latest?cb=2011053108')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (37, N'Telltale Games', N'https://vignette.wikia.nocookie.net/fables/images/3/36/TTG_logo.png/revision/latest?cb=2014053020085')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (38, N'Remedy', N'http://assets.vg247.com/current//2011/01/remedy-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (39, N'BioWare', N'https://vignette.wikia.nocookie.net/dragonage/images/4/48/BioWare_logo.svg/revision/latest?cb=201203')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (40, N'Traveller''s Tales', N'https://upload.wikimedia.org/wikipedia/en/thumb/5/52/Ttgames.jpg/220px-Ttgames.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (41, N'LucasArts', N'https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0012/4818/brand.gif?itok=FvWHpWTQ')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (42, N'Halfbrick Studios', N'http://www.export61.com.au/images/members/878/logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (43, N'Twisted Pixel', N'https://img.ibxk.com.br/bj/assets/pictures/000/001/902/content_pic.jpg?w=1040?1288443381')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (44, N'Rocksteady Studios', N'https://cdn.wccftech.com/wp-content/uploads/2015/12/Rocksteady.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (45, N'Bungie', N'https://vignette.wikia.nocookie.net/logopedia/images/a/ac/Bungie-logo.png/revision/latest?cb=2011031')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (46, N'Lionhead', N'https://vignette.wikia.nocookie.net/lionheadthemovies/images/2/20/Lionhead_Logo.jpg/revision/latest?')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (47, N'Rare', N'https://www.mcvuk.com/.image/t_share/MTUzMDY4ODE1NDAxMDM0NzU5/4_rarejpg.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (48, N'BigPark', N'https://zone1-vgu.netdna-ssl.com/wp-content/uploads/2014/05/Big-Park-Studios.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (49, N'Playdead', N'https://vignette.wikia.nocookie.net/limbo/images/6/61/Playdead.jpg/revision/latest?cb=20120104230221')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (50, N'2K games', N'https://vignette.wikia.nocookie.net/mafiagame/images/7/73/2K_Games_Logo.jpg/revision/latest?cb=20151')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (51, N'RedLynx', N'https://pbs.twimg.com/media/DXSEYRhVoAEmNLa.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (52, N'NinjaBee', N'http://bp2.blogger.com/_iwNOhRs-OMo/R7mqgR36JbI/AAAAAAAAAP0/1fjwNeW_Vrc/s320/NBLogoOnYellowMed.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (53, N'Double Fine', N'http://thevitalounge.net/wp-content/uploads/2016/02/Double-Fine-Logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (54, N'Sierra Online', N'http://images.generation-msx.nl/company/cedc3e39.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (55, N'Mistwalker', N'http://images.vg247.com/current//2012/03/mistwalker-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (56, N'Carbonated Games', N'https://www.magnetgaming.com/wp-content/uploads/2017/09/treasure-coast-game-page-logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (57, N'Bizarre Creations', N'https://vignette.wikia.nocookie.net/blurgame/images/b/b3/Bizarre_Creations_Logo.png/revision/latest?')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (59, N'Activision', N'https://botw-pd.s3.amazonaws.com/styles/logo-thumbnail/s3/0014/6712/brand.gif?itok=pJIxtLYa')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (60, N'Nanco Bandai', N'http://logok.org/wp-content/uploads/2014/11/Namco-Bandai-Logo-880x660.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (61, N'Media Molecule', N'https://vignette.wikia.nocookie.net/logopedia/images/0/07/Media_Molecule.png/revision/latest?cb=2012')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (62, N'Sucker Punch', N'https://pbs.twimg.com/profile_images/925763303338475520/9ZjHZFWz_400x400.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (64, N'Platinum Games', N'https://vignette.wikia.nocookie.net/logopedia/images/5/5b/PlatinumGames_logo.png/revision/latest?cb=')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (65, N'Sumo Digital', N'https://d27nqrvkk22y65.cloudfront.net/post/image/170/big_8adbec2caa.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (66, N'Hello Games', N'https://www.gamasutra.com/db_area/images/news/287153/HelloGamesLogo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (67, N'Arkane Studios', N'https://cdnb.artstation.com/p/recruitment_companies/logos/000/001/027/thumb/ARKANElogo.jpg?151336743')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (68, N'Neversoft', N'http://image.wikifoundry.com/image/1/7RHsW3MbDzoJg7_RA1FbwQ15093/GW260H194')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (69, N'Naughty Dog', N'https://i.pinimg.com/originals/77/ce/dc/77cedca38ee482a26e9315f02bb05d4d.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (70, N'Housemarque', N'https://3dnews.ru/assets/external/illustrations/2018/04/22/968768/housemarque_logo_wide_black.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (71, N'Thatgamecompany', N'https://www.mcvuk.com/.image/t_share/MTUzMDcxNTYyMDMyOTQ4MjMx/1-thatgamecompany_logopng.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (72, N'Digital Leisure', N'https://pbs.twimg.com/profile_images/918938779187998720/g9JlbFFK_400x400.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (73, N'Shadow Planet Productions', N'https://cdn2.whatoplay.com/developers/shadowplanetproductions.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (74, N'Wizards of the Coast', N'http://cdn.themis-media.com/media/global/images/library/deriv/972/972674.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (75, N'Blue Castle Games', N'https://thumb7.shutterstock.com/display_pic_with_logo/778417/475013254/stock-vector-vector-illustrat')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (76, N'Realtime Worlds', N'https://i2.wp.com/www.playerattack.com/imagery/2010/08/RealtimeWorlds-Logo.jpg?resize=560%2C200&ssl=')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (77, N'Foundation 9 Entertainment', N'https://mms.businesswire.com/bwapps/mediaserver/ViewMedia?mgid=243964&vid=5&download=1')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (78, N'Hidden Path', N'https://vignette.wikia.nocookie.net/logopedia/images/7/75/Hidden_Path_Small.png/revision/latest?cb=2')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (79, N'Gearbox software', N'https://upload.wikimedia.org/wikipedia/en/3/36/GearboxSoftwareLogo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (80, N'Kung Fu Factory', N'http://www.cktcg.com/css/images/logo-kung-fu-factory.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (81, N'Team Bondi', N'http://www.gamingtruth.com/wp-content/uploads/2011/08/team-bondi-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (82, N'Toylogic', N'http://lvlupmarketing.com/wp-content/uploads/2017/09/Toylogic.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (83, N'Iron Galaxy', N'http://videoball.net/assets/img/IronGalaxy-WhiteTraced.svg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1072, N'Crytek', N'http://cdn.themis-media.com/media/global/images/library/deriv/575/575394.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1073, N'Firaxis', N'http://drh.img.digitalriver.com/DRHM/Storefront/Site/fxs/cm/images/Image/Logo/Firaxis.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1074, N'Tequila Works', N'http://3d2entertainment.com/wp-content/uploads/001_aislado_reducido21.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1075, N'Io Interactive', N'https://www.n3rdabl3.com/wp-content/images/uploads/2016/03/io-interactive-logo-black.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1076, N'Demiurge', N'https://pbs.twimg.com/profile_images/625774986192556032/uriU4G3m.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1077, N'Signal Studios', N'https://venturebeat.com/wp-content/uploads/2017/08/signal-studios.jpg?fit=578%2C278&strip=all')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1078, N'Press Play', N'https://static1.squarespace.com/static/505a2726e4b0567d6bace876/t/5347e068e4b029dc12be593c/139721943')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1079, N'Vanguard Games', N'http://www.dutchgameawards.nl/2011/wp-content/uploads/2011/06/vanguard_red.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1082, N'FromSoftware', N'https://d2w9rnfcy7mm78.cloudfront.net/537534/original_9452eec29a63423e1783eb56d0f244f8.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1083, N'DrinkBox Studios', N'https://pbs.twimg.com/profile_images/586203667977502720/X4uX5Bdz_400x400.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1084, N'Ska Studios', N'http://www.ffa.hr/media/k2/items/cache/ef22b354928b6d94927383bb07bbfdd1_L.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1085, N'Bongfish GmbH', N'https://cdna.artstation.com/p/recruitment_companies/logos/000/000/428/thumb/BONGFISH_LOGO_VECTOR_whi')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1089, N'Dice', N'http://gtalogo.com/img/5135.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1090, N'Midnight City', N'https://pcgamingwiki.com/images/thumb/7/7c/Midnight_City_logo.png/300px-Midnight_City_logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1091, N'Focus Home Interactive', N'https://i2.wp.com/bosugiant.com/wp-content/uploads/2018/01/Focus-Home-Interactive.jpg?fit=670%2C377&')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1092, N'Frogwares', N'https://www.opiwiki.com/pic?w=6&f=109833&e=1&o=703')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1093, N'Grounding inc.', N'https://i2.wp.com/en-news.qoo-app.com/wp-content/uploads/sites/3/2016/12/16081512465658.jpg?resize=1')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1094, N'Access Games', N'https://cdn.dribbble.com/users/271627/screenshots/2415365/attachments/468041/logo_logos_monogram_sig')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1095, N'Daybreak Games', N'https://www.iskmogul.com/wp-content/uploads/2016/12/Cmm2wo9NXmCE8xeoj3gxSA-Daybreak_Eye.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1096, N'Defiant Development', N'http://cdn1-www.playstationlifestyle.net/assets/uploads/2015/03/Defiant-Development.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1097, N'Dontnod Entertainment', N'https://pbs.twimg.com/profile_images/760843918820990976/62QGyfs7.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1098, N'City Interactive', N'http://www.thatvideogameblog.com/wp-content/uploads/2010/12/city-interactive-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1099, N'Deck13', N'https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/Deck13.png/220px-Deck13.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1100, N'Airtight Games', N'https://www.n3rdabl3.com/wp-content/images/uploads/2014/07/Airtight_Logo70s.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1101, N'Visual Concepts', N'http://image.wikifoundry.com/image/1/x4h4Kv8o_mX-docfpao7Gg11213/GW283H190')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1102, N'Moon Studios', N'https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/MoonStudiosLogo.png/1200px-MoonStudiosLogo')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1103, N'Bulkhead Interactive', N'http://www.theturingtestgame.com/press/images/logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1104, N'Slightly Mad Studios', N'https://s3-eu-west-1.amazonaws.com/img.endole.co.uk/logos/slightlymadstudioscomf2864.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1105, N'Mad Catz', N'https://c.slashgear.com/wp-content/uploads/2018/01/Mad-catz-logo-980x620.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1106, N'Psyonix', N'https://d6dyoorq84mou.cloudfront.net/uploads/job/logo/4837298/RL_Psyonix_Logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1107, N'13AM Games', N'http://www.gaminginc.ca/wordpress/wp-content/uploads/2016/10/13AM-Games-Logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1108, N'Grasshopper Manufacture Inc.', N'https://www.grasshopper.co.jp/en/news/img/img.jpg')
GO
print 'Processed 100 total records'
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1109, N'Monomi Park', N'https://yt3.ggpht.com/a-/ACSszfGaGLRoqlpYxqLoSZQxb5bQ3TLQHGlGKCzRQQ=s900-mo-c-c0xffffffff-rj-k-no')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1110, N'ORiGO Games', N'http://www.origoglobalforum.com/dist/img/Cover/Logo@2x.png?b=17')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1111, N'Extend Studio', N'http://www.es.tv/wp-content/uploads/2013/04/ES_logo_website-529x270.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1112, N'tinyBuildGAMES', N'http://quovx4d83tr2hp1r22mgwa1m.wpengine.netdna-cdn.com/wp-content/uploads/2016/06/tinybuild-600x300')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1113, N'DoubleDutch Games', N'https://gamejobs.eu/wp-content/uploads/job-manager-uploads/company_logo/2016/02/doubledutch-logo_squ')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1114, N'Born Ready Games', N'http://www.bornreadyshow.com/wp-content/uploads/powerpress/BornReadyiTunes-med.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1115, N'Wired Productions', N'https://wiredproductions.files.wordpress.com/2011/11/wired-productions-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1116, N'React! Games', N'https://i.pinimg.com/originals/d8/2b/cb/d82bcb80cdcfc2b8585d9710cb8b6781.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1117, N'Metalhead Software', N'https://d2qgpjhi4289da.cloudfront.net/image_encoded/aHR0cHM6Ly9zaWxrc3RhcnQuczMuYW1hem9uYXdzLmNvbS9m')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1118, N'Capybara', N'https://cdn3.vectorstock.com/i/1000x1000/05/92/capybara-logo-vector-4610592.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1119, N'NeocoreGames', N'https://upload.wikimedia.org/wikipedia/commons/e/e4/Neocore_logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1120, N'CD Projekt Red', N'https://vignette.wikia.nocookie.net/logopedia/images/1/1f/CD-PROJEKT-RED-Logo.png/revision/latest?cb')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1121, N'Redspawn games', N'https://pbs.twimg.com/profile_images/766671386957877253/iVHB9Kxx.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1122, N'Treyarch', N'https://vignette.wikia.nocookie.net/callofduty/images/4/48/Treyarch_logo.png/revision/20160302020935')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1123, N'Infinity Ward', N'https://vignette.wikia.nocookie.net/logopedia/images/c/ce/6522_infinity-ward-prev.png/revision/lates')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1124, N'Codemasters', N'http://logonoid.com/images/codemasters-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1125, N'Playground Games', N'https://upload.wikimedia.org/wikipedia/pt/d/dc/Playground_Games_logo.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1126, N'The Colaition', N'https://cdn2.whatoplay.com/developers/thecoalition.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1127, N'Fullbright', N'https://cy.usembassy.gov/wp-content/uploads/sites/237/Fulbright-Logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1128, N'Deck Nine Games', N'https://78.media.tumblr.com/c98868d2d6f7f20bf107923fc5cb015a/tumblr_p7uhsrJmNj1uw1vxro1_1280.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1129, N'Avalanche Studios', N'https://cdn.wccftech.com/wp-content/uploads/2015/02/Avalanche-Studios-Logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1130, N'Deep Silver', N'https://cdn.vox-cdn.com/thumbor/FcZSfm_5xUdsMi86D9Idlo3Tttw=/75x0:885x540/1200x800/filters:focal(75x')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1131, N'4A Games', N'http://static1.squarespace.com/static/57c8a51e59cc686ae46cf2c2/t/5953e31f20099e712b676356/1530111711')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1132, N'Monolith Productions', N'https://vignette.wikia.nocookie.net/logopedia/images/1/13/Monolith_logo1.png/revision/latest?cb=2012')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1133, N'PopCap Games', N'https://lh4.googleusercontent.com/proxy/sPdVrXB6-F5FpP84duLNeyXhh-MrUWy9iYQKwZyKg84ac8J-bQIqe2CnxIGf')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1134, N'Armature Studios', N'https://pbs.twimg.com/profile_images/931213064342401024/ar2BxxK4_400x400.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1135, N'Frontier Developments', N'https://images.gamewatcherstatic.com/image/file/3/ba/82013/Frontier.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1136, N'Obsidian Entertainment', N'https://vignette.wikia.nocookie.net/logopedia/images/7/78/Obsidian_entertainment_logo.jpg/revision/l')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1137, N'Mossmouth', N'https://pbs.twimg.com/profile_images/185284341/twatprofile_400x400.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1138, N'Insomniac Games', N'https://vrvoice.co/wp-content/uploads/2016/10/1497_Insomniac-Games.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1139, N'Team Meat', N'https://i1.wp.com/2.bp.blogspot.com/_yxcTYhz06tM/TLvJTdxfEfI/AAAAAAAAAc8/d1SRQUBlv_U/s1600/Super-Mea')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1140, N'Yuke''s', N'http://s2.n4g.com/news/1952977_0.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1141, N'Castaway Entertainment', N'http://www.great-taste.net/wp-content/uploads/2018/04/pacific-food-beverage-museum-grand-opening-cop')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1142, N'Backbone Entertainment', N'http://cgp.com.my/images/backbone_entertainment_sdn_bhd_logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1143, N'United Front Games', N'https://upload.wikimedia.org/wikipedia/en/thumb/2/24/United_Front_Games.jpg/250px-United_Front_Games')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1144, N'Eyebrow Interactive', N'https://images-platform.99static.com/kw4-dF5nD2P13aaNRWN1q2mjmWM=/0x0:1200x1200/500x500/top/smart/99')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1145, N'Alvion', N'http://www.alvinit.com/library/pubfiles/Alvin2009.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1146, N'Nifflas Games', N'http://uurnog.com/presskit/images/header.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1147, N'Creat Studios', N'https://www.createstudios.com.au/app_themes/cs/images/logo.svg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1148, N'Team Ico', N'https://images.wikia.com/t__/teamico/images/b/bc/Wiki.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1149, N'FarSight Studios', N'https://cdn.crowdfundinsider.com/wp-content/uploads/2014/09/FarSight-Studios.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1150, N'THQ', N'https://lockgamer.files.wordpress.com/2012/12/thq-logo.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1151, N'Ninja Theory', N'https://techraptor.net/wp-content/uploads/2018/06/ntlogo-902x507.jpg')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1152, N'QUByte Interactive', N'https://pcgamingwiki.com/images/f/fb/Company_-_QUByte_Interactive.png')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1153, N'Fiddlesticks Games', N'https://cdn.shopify.com/s/files/1/0558/2081/products/Hue_-_Artwork_1024x1024.jpg?v=1494275618')
INSERT [dbo].[EMPRESA] ([EMP_ID], [EMP_NOME], [EMP_LOGO]) VALUES (1154, N'Nintendo', N'https://s3.amazonaws.com/freebiesupply/large/2x/nintendo-logo-png-transparent.png')
SET IDENTITY_INSERT [dbo].[EMPRESA] OFF
/****** Object:  Table [dbo].[AVALIACAO]    Script Date: 07/05/2018 16:06:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AVALIACAO](
	[AVA_ID] [int] IDENTITY(1,1) NOT NULL,
	[AVA_VALOR] [int] NULL,
	[AVA_NOME] [varchar](50) NULL,
 CONSTRAINT [PK_AVALIACAO] PRIMARY KEY CLUSTERED 
(
	[AVA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AVALIACAO] ON
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (1, 1, N'Péssimo')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (2, 2, N'Ruim')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (3, 3, N'Regular')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (4, 4, N'Bom')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (5, 5, N'Ótimo')
INSERT [dbo].[AVALIACAO] ([AVA_ID], [AVA_VALOR], [AVA_NOME]) VALUES (7, 0, N'Não avaliado')
SET IDENTITY_INSERT [dbo].[AVALIACAO] OFF
/****** Object:  Table [dbo].[STATUS]    Script Date: 07/05/2018 16:06:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[STATUS](
	[STA_ID] [int] IDENTITY(1,1) NOT NULL,
	[STA_NOME] [varchar](100) NULL,
 CONSTRAINT [PK_STATUS] PRIMARY KEY CLUSTERED 
(
	[STA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[STATUS] ON
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (1, N'Jogado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (2, N'Jogando')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (3, N'Na fila')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (4, N'Parado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (5, N'Trocado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (6, N'Arranhado')
INSERT [dbo].[STATUS] ([STA_ID], [STA_NOME]) VALUES (7, N'Excluído')
SET IDENTITY_INSERT [dbo].[STATUS] OFF
/****** Object:  Table [dbo].[PROGRESSO]    Script Date: 07/05/2018 16:06:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROGRESSO](
	[PRO_ID] [int] IDENTITY(1,1) NOT NULL,
	[PRO_NOME] [nvarchar](50) NULL,
	[PRO_LOGO] [nvarchar](250) NULL,
 CONSTRAINT [PK_PROGRESSO] PRIMARY KEY CLUSTERED 
(
	[PRO_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PROGRESSO] ON
INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME], [PRO_LOGO]) VALUES (1, N'Nem comecei', N'https://cdn4.iconfinder.com/data/icons/medical-icons-normal/1000/modules_wlists.png')
INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME], [PRO_LOGO]) VALUES (4, N'Zerado', N'https://www.ubis-geneva.ch/wp-content/uploads/2015/04/icon15.png')
INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME], [PRO_LOGO]) VALUES (5, N'Começado', N'https://png.icons8.com/cotton/2x/checkmark.png')
INSERT [dbo].[PROGRESSO] ([PRO_ID], [PRO_NOME], [PRO_LOGO]) VALUES (6, N'Parado', N'https://upload.wikimedia.org/wikipedia/commons/c/cc/Stopped_icon.svg')
SET IDENTITY_INSERT [dbo].[PROGRESSO] OFF
/****** Object:  Table [dbo].[PLATAFORMA]    Script Date: 07/05/2018 16:06:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLATAFORMA](
	[PLA_ID] [int] IDENTITY(1,1) NOT NULL,
	[PLA_NOME] [nvarchar](100) NULL,
	[PLA_LOGO] [nvarchar](250) NULL,
	[PLA_SIGLA] [nvarchar](50) NULL,
 CONSTRAINT [PK_PLATAFORMA] PRIMARY KEY CLUSTERED 
(
	[PLA_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PLATAFORMA] ON
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (1, N'Xbox 360', N'https://i.pinimg.com/originals/42/35/63/4235631bf757eab464e1864443804ae8.jpg', N'X360')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (2, N'PlayStation 3', N'http://www.findthatlogo.com/wp-content/uploads/2012/04/sony-ps3-logo.gif', N'PS3')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (3, N'PSN', N'http://allvectorlogo.com/wp-content/uploads/2016/03/playstation-network-logo.png', N'PSN')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (5, N'XBLA', N'https://vignette.wikia.nocookie.net/tig/images/d/d8/Xbox_live_arcade_logo.jpg/revision/latest?cb=201', N'XBLA')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (6, N'Xbox One', N'https://www.uzgames.com.br/Assets/Descricoes/xboxlogo.png', N'XONE')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (7, N'PlayStation 4', N'https://twinfinite.net/wp-content/uploads/2016/06/sony-playstation-4-logo-black-and-white.jpg', N'PS4')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (8, N'Switch', N'https://www.technobuffalo.com/wp-content/uploads/2017/01/Balaced-Switch-Logo.jpg', N'Switch')
INSERT [dbo].[PLATAFORMA] ([PLA_ID], [PLA_NOME], [PLA_LOGO], [PLA_SIGLA]) VALUES (9, N'Xbox', N'https://vignette.wikia.nocookie.net/nintendo/images/c/c4/XBox_Logo.png/revision/latest?cb=2010083101', N'XBOX')
SET IDENTITY_INSERT [dbo].[PLATAFORMA] OFF
/****** Object:  Table [dbo].[PESSOA]    Script Date: 07/05/2018 16:06:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MIDIA]    Script Date: 07/05/2018 16:06:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MIDIA] ON
INSERT [dbo].[MIDIA] ([MID_ID], [MID_NOME]) VALUES (1, N'DVD')
INSERT [dbo].[MIDIA] ([MID_ID], [MID_NOME]) VALUES (3, N'Digital')
INSERT [dbo].[MIDIA] ([MID_ID], [MID_NOME]) VALUES (4, N'Bluray')
SET IDENTITY_INSERT [dbo].[MIDIA] OFF
/****** Object:  Table [dbo].[LOCALIZACAO]    Script Date: 07/05/2018 16:06:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LOCALIZACAO] ON
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (2, N'Escritório', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (3, N'Sala', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (4, N'HD', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (5, N'Nenhuma', N'')
INSERT [dbo].[LOCALIZACAO] ([LOC_ID], [LOC_NOME], [LOC_DESCRICAO]) VALUES (6, N'Bianca', N'')
SET IDENTITY_INSERT [dbo].[LOCALIZACAO] OFF
/****** Object:  Table [dbo].[jogos]    Script Date: 07/05/2018 16:06:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jogos](
	[jogo_id] [int] IDENTITY(1,1) NOT NULL,
	[jogo_nome] [nvarchar](100) NOT NULL,
	[jogo_capa] [nvarchar](250) NULL,
	[jogo_dt] [datetime] NULL,
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[jogos] ON
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (10, N'Rock Band 3', N'https://i.pinimg.com/736x/c4/59/42/c4594240d76f367ad5e2dccd35ee88a7--keyboard-rock-bands.jpg', CAST(0x00009F4D00000000 AS DateTime), 3, 23, 4, 2, 5, 2, 1, 1, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (12, N'Red Dead Redemption', N'http://d26lpennugtm8s.cloudfront.net/stores/605/423/products/red-dead-redemption1-9def3ed174fbcfe3cc', CAST(0x0000A35100000000 AS DateTime), 10, 10, 4, 4, 4, 1, 1, 3, N'Muito boa história e com final surpreendente. A falta de tempo me fez jogar durante muito tempo e de forma corrida, o que atrapalhou um pouco a experiência.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (13, N'Portal 2', N'https://vignette.wikia.nocookie.net/half-life/images/4/48/Portal_2_Xbox_360_Cover_13.jpg/revision/la', CAST(0x0000A22500000000 AS DateTime), 24, 24, 4, 4, 5, 1, 1, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (14, N'Forza Horizon', N'https://mundoeletronicome.com.br/wp-content/uploads/2016/06/CAPA-COVER-CARATULA-XBOX360-ForzaHorizon', CAST(0x0000A29D00000000 AS DateTime), 7, 25, 4, 4, 4, 1, 1, 3, N'Muito divertido. Tinha cansado dessas simulações... esse modo mais arcade me agradou. Mas ainda falta jogar o rally.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (15, N'Assassin''s Creed III', N'http://4.bp.blogspot.com/-UHliXsQzGd8/VPSobJrJfsI/AAAAAAAAMns/SLllQa0ddm4/s1600/Assassin%2B(22).jpg', CAST(0x0000A1E300000000 AS DateTime), 8, 8, 4, 3, 4, 1, 1, 1, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (16, N'Castle Crashers', N'https://http2.mlstatic.com/castle-crashers-remastered-xbox-one-codigo-25-digitos-D_NQ_NP_719682-MLB2', CAST(0x00009D3800000000 AS DateTime), 26, 26, 4, 4, 5, 1, 5, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (17, N'Sonic The Hedgehog 3', N'https://vignette.wikia.nocookie.net/sonic/images/e/e5/Sonic_the_Hedgehog_3_cover.jpg/revision/latest', CAST(0x00009CBA00000000 AS DateTime), 1, 13, 4, 4, 5, 1, 1, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (18, N'Halo 4', N'https://pre00.deviantart.net/6ad6/th/pre/i/2012/164/0/8/cover_halo_4___xbox_360_by_arkendesign-d53dn', CAST(0x0000000000000000 AS DateTime), 7, 27, 1, 2, 7, 3, 1, 1, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (19, N'Mortal Kombat', N'https://static.raru.co.za/cover/2014/03/20/3774-l.jpg?v=1395312420', CAST(0x0000A1CE00000000 AS DateTime), 29, 28, 4, 4, 4, 1, 1, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (20, N'The Orange Box', N'https://s3.amazonaws.com/comparegame/thumbnails/16748/large.jpg', CAST(0x0000000000000000 AS DateTime), 24, 24, 6, 4, 5, 3, 1, 3, N'Reunião de 3 jogos da Valve: Half Life 2, Portal e Team Fortress. Até o momento joguei apenas o Portal. Um ótimo jogo de puzzle! Muito inteligente! Uma personagem cativante e hilária (GlaDOS), história bem escrita e a música final é a cereja do... bolo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (21, N'Rocksmith', N'https://i1.wp.com/pixelvulture.com/wp-content/uploads/2012/03/xbox-360-cover-art.png', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 3, 4, 1, 1, 1, N'Jogo para ensinar a tocar guitarra com guitarra de verdade. Nada de guitarra de brinquedo. Não é fácil, mas até que já aprendi alguma coisa. Nunca tinha tocado guitarra antes, apenas violão. Solos são complicados, ainda não sei onde estão as cordas e casas. Quem sabe um dia tenho mais tempo para me dedicar mais.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (22, N'Skyrim', N'https://http2.mlstatic.com/jogo-the-elder-scrolls-v-skyrim-xbox-360-bethesda-D_NQ_NP_486211-MLB20520', CAST(0x0000A1DF00000000 AS DateTime), 12, 12, 4, 3, 5, 1, 1, 1, N'RPG de ação fodástico! Gosto muito de RPGs. Mas era mais ligado aos japoneses. 4º jogo da série Elder Scrols, mas nunca tinha jogado nenhum dos outros. O jogo é enorme e acaba tomando bastante tempo (como todo bom  RPG). Ainda tem mais 2 expansões que ajudam a aumentar a fila de jogos por jogar.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (23, N'Dead Space 2', N'https://images-na.ssl-images-amazon.com/images/I/51uccHLWCyL._SY445_.jpg', CAST(0x0000000000000000 AS DateTime), 3, 30, 1, 2, 7, 3, 1, 1, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (24, N'Lips', N'https://vignette.wikia.nocookie.net/xbox/images/e/e7/Lips_Video_Game_Cover.JPG/revision/latest?cb=20', CAST(0x0000000000000000 AS DateTime), 7, 31, 6, 2, 5, 1, 1, 1, N'Karaokê! Sempre gostei de cantar e até já tivemos um videokê em casa. Pena é não ter músicas brasileiras,  mas ainda assim tem muita música legal no disco, nos discos de expansão e na Live. Comprei várias!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (25, N'R.E. CODE: Veronica X', N'http://2.bp.blogspot.com/-5bUqqYDmTRs/ToNlLUdTpjI/AAAAAAAAAb4/P7ZOtn5EDfg/s320/cover.jpg', CAST(0x0000000000000000 AS DateTime), 32, 32, 1, 4, 5, 3, 1, 3, N'Joguei esse jogo no saudoso Dreamcast. Acho que foi o último RE que assustou. O 4 legal mas é outro jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (26, N'Tomb Raider:Legend', N'https://gamefaqs.akamaized.net/box/3/2/8/59328_front.jpg', CAST(0x0000000000000000 AS DateTime), 33, 34, 6, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (27, N'Gears of War 3', N'https://images-na.ssl-images-amazon.com/images/I/717ckXb5QQL._SL1057_.jpg', CAST(0x00009F7700000000 AS DateTime), 7, 35, 4, 2, 5, 1, 1, 1, N'3º jogo da série. Terminando a ótima história. Multiplayer ainda bem divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (28, N'PES 2013', N'https://img00.deviantart.net/c9b3/i/2012/248/3/4/pes_2013_by_nicoezm-d5dp4qx.png', CAST(0x0000000000000000 AS DateTime), 36, 36, 6, 2, 4, 4, 1, 1, N'É... acho que cansei de jogos de futebol. Já fui mais fã. Acho que essa prática de um jogo por ano não dá mais pra acompanhar. Tem tanta coisa diferente por aí pra  jogar...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (29, N'Nike+ Kinect Training', N'https://images-na.ssl-images-amazon.com/images/I/81EU6vy-UOL._SL1500_.jpg', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 3, 4, 4, 1, 1, N'Exercícios com o kinect. Ficou bem legal, deu pra suar bastante. O treco cansa mesmo. Como machuquei o joelho, tive que abandonar por enquanto.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (30, N'Sonic 4 Episode II', N'http://1.bp.blogspot.com/-_lG9sNojWRQ/T7UyBQUXP2I/AAAAAAAAEhc/S_oC7UAgL7A/s1600/Sonic+the+Hedgehog+4', CAST(0x0000A13F00000000 AS DateTime), 1, 13, 4, 4, 3, 1, 5, 3, N'Fizeram um jogo do Sonic no estilo antigo, dividiram em duas partes e venderam pros fãs. Eu sou fã, comprei, me diverti mas não é lá essas coisas.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (31, N'The Walking Dead', N'http://1.bp.blogspot.com/-OxyziZFUCw0/VYwk5K2yviI/AAAAAAAAQns/7eXbwYZTa4k/s320/0c4m.jpg', CAST(0x0000000000000000 AS DateTime), 37, 37, 6, 4, 4, 4, 5, 3, N'Jogo dividido em capítulos que recebeu vários prêmios. Comecei a jogar o primeiro capítulo mas acabei largando...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (32, N'NiGHTS into dreams...', N'https://static.gamespot.com/uploads/scale_medium/mig/3/7/1/4/2213714-box_nid.png', CAST(0x0000A13800000000 AS DateTime), 1, 13, 4, 4, 5, 1, 5, 3, N'É o mesmo jogo do Sega Saturn e só por isso já valeu.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (33, N'Grand Theft Auto IV', N'https://i5.walmartimages.ca/images/Large/471/057/471057.jpg?odnBound=460', CAST(0x0000A26400000000 AS DateTime), 10, 10, 4, 3, 4, 1, 1, 1, N'GTA é GTA. Grande, longo e muito bem feito. Comecei mas no meio dei uma cansada. Recomecei e parei de novo. O V tá chegando e ainda não terminei esse. Será que termino?')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (34, N'Alan Wake', N'https://gaminghistory101.files.wordpress.com/2014/11/aw_box.jpg', CAST(0x0000A13000000000 AS DateTime), 36, 38, 4, 2, 4, 1, 1, 1, N'História de terror contada como se fosse uma série de TV. Alguns sustos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (35, N'Dead Space', N'https://images-na.ssl-images-amazon.com/images/I/91G46JYjSpL._SL1500_.jpg', CAST(0x0000A3AB00000000 AS DateTime), 3, 3, 4, 4, 4, 1, 1, 3, N'Gosto de séries de terror e comecei a jogar essa. Acabei parando, mas como já tenho a sequencia, um dia eu termino esse. E terminei mesmo! Valeu a pena.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (36, N'Shadows of the Damned', N'https://images-na.ssl-images-amazon.com/images/I/71UeH%2Bf9ZNL._AC_SX215_.jpg', CAST(0x0000A0FA00000000 AS DateTime), 3, 1108, 4, 2, 4, 1, 1, 1, N'Jogo achado em uma promoção. Não esperava muito mas me surpreendi com o humor e acabei me prendendo ao jogo. Cansativo em alguns momentos mas ainda divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (37, N'Max Payne 3', N'https://vignette.wikia.nocookie.net/maxpayne/images/5/56/MP3_FOB_NO_HEADER.jpg/revision/latest?cb=20', CAST(0x0000A0C400000000 AS DateTime), 10, 10, 4, 3, 4, 1, 1, 1, N'Fui no hype do jogo que se passa em São Paulo (ou seria Rio?) e até gostei. Nunca tinha jogado a série mas achei bem interessante.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (38, N'Mass Effect 2', N'https://i.pinimg.com/originals/c4/05/8d/c4058de9e16fa564659de8778fc81d77.jpg', CAST(0x0000A0B400000000 AS DateTime), 3, 39, 4, 4, 5, 1, 1, 3, N'Segundo jogo da série de RPG espacial. Nunca fui muito fã de jogos espaciais mas esse é muito bom.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (39, N'Sonic CD', N'https://3.bp.blogspot.com/-3fCamRIB8QU/V7R6_8gX_0I/AAAAAAAAHxY/_L1WXmxojIEqxPTz-rtuPChOhXjQOPq4ACLcB', CAST(0x0000A08600000000 AS DateTime), 1, 13, 4, 4, 4, 1, 5, 3, N'Como nunca pude ter um Sega CD, esse sempre foi um jogo que fiquei na vontade de jogar. Pronto, matei a vontade.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (40, N'Assassin''s Creed II', N'https://images-na.ssl-images-amazon.com/images/I/71cGBeaPbbL._SY445_.jpg', CAST(0x0000A07A00000000 AS DateTime), 8, 8, 4, 2, 5, 1, 1, 1, N'Início da saga do Ézio. Jogaço! Só!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (41, N'LEGO Star Wars: TCS', N'https://images-na.ssl-images-amazon.com/images/I/51zmgb-2USL._AC_SX215_.jpg', CAST(0x0000A3D600000000 AS DateTime), 27, 33, 4, 4, 7, 4, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (42, N'Beyond Good & Evil HD', N'https://i.pinimg.com/originals/dd/ab/c9/ddabc962782d47b1422398f197d2a33c.jpg', CAST(0x0000A02C00000000 AS DateTime), 8, 8, 4, 5, 4, 7, 5, 3, N'Como não tive videogames da Nintendo, não pude jogar esse jogo. Sem muito elogiado então comprei para ver se era bom mesmo. E era. Ou melhor, é.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (43, N'FIFA 10', N'https://vignette.wikia.nocookie.net/egamia/images/7/73/Box-Art-NA-Xbox-360-FIFA-14.jpg/revision/late', CAST(0x0000000000000000 AS DateTime), 3, 3, 6, 2, 3, 1, 1, 1, N'Fui pro outro lado da força pra dar uma variada. Nesse ano o Fifa foi melhor que o PES. Mas mesmo assim eu já tava desanimando de jogos de futebol. Não aproveitei muito.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (45, N'Space Channel 5 Part 2', N'https://i2.wp.com/passagemsecreta.com/wp-content/uploads/2011/02/dreamcast-collection234x.jpg', CAST(0x0000000000000000 AS DateTime), 1, 1, 6, 2, 3, 1, 5, 1, N'Jogo comprado com um pacote de jogos do Dreamcast. Apertar botões em uma sequência deve ter sido mais divertido na época.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (46, N'Crazy Taxi', N'https://img.ibxk.com.br/2018/04/30/30125305564130.jpg', CAST(0x0000000000000000 AS DateTime), 1, 1, 6, 2, 5, 4, 5, 1, N'Motivo pra ter comprado o pacote de jogos do Dreamcast. Ainda muito divertido! Yeah yeah yeah yeah! ... droga, tiraram essa música.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (47, N'SONIC UNLEASHED', N'https://http2.mlstatic.com/best-seller-jogo-sonic-unleashed-xbox-360-D_NQ_NP_946725-MLB25492879737_0', CAST(0x0000000000000000 AS DateTime), 1, 13, 6, 3, 2, 4, 1, 1, N'Sonic virou um "lobisomem"... ai ai Sega. O que vocês fizeram?')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (48, N'SONIC GENERATIONS', N'https://upload.wikimedia.org/wikipedia/en/thumb/7/7d/SonicGenerations.jpg/220px-SonicGenerations.jpg', CAST(0x0000A00500000000 AS DateTime), 1, 13, 4, 2, 5, 1, 1, 1, N'Finalmente um jogo bom do Sonic!! Juntou as duas gerações do ouriço para se despedir da versão fofinha. Bem, eu preferia me despedir da versão cool e modernosa.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (49, N'Fruit Ninja Kinect', N'https://fthmb.tqn.com/Iy-HpJa24MACcj-NvENQf8AhTiw=/768x0/filters:no_upscale():max_bytes(150000):stri', CAST(0x0000000000000000 AS DateTime), 7, 42, 6, 4, 3, 4, 5, 3, N'Fruit ninja no kinect cansa muito! Não dá pra jogar muito tempo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (50, N'Mass Effect', N'https://gamefaqs.akamaized.net/box/7/9/2/71792_front.jpg', CAST(0x00009FF700000000 AS DateTime), 7, 39, 4, 2, 5, 1, 1, 1, N'RPG especial com ótima história. Algumas missões um pouco cansativas e repetitivas mas mesmo assim o jogo vale a pena.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (51, N'Dance Central 2', N'https://i.ebayimg.com/thumbs/images/m/mgLsENQg8ohTjZiEAVbrVgQ/s-l225.jpg', CAST(0x0000000000000000 AS DateTime), 23, 23, 6, 3, 3, 4, 1, 1, N'Kinect foi feito pra jogos de dança. Por mais que seja pagação de mico ainda é divertido. Mas sem joelho não dá.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (52, N'The Gunstringer', N'https://images-na.ssl-images-amazon.com/images/I/71h9uxSQ4%2BL._AC_SL1151_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 43, 6, 3, 3, 4, 1, 1, N'jogo de tiro para o kinect onde você controla uma marionete. Divertido, mas os braços doem!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (53, N'Batman: Arkham City', N'https://images-na.ssl-images-amazon.com/images/I/51V-HzuL6%2BL._SY445_.jpg', CAST(0x00009FE800000000 AS DateTime), 29, 44, 4, 2, 5, 1, 1, 1, N'Jogaço! Batman dando porrada em geral!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (54, N'LEGO Rock Band', N'https://images-na.ssl-images-amazon.com/images/I/91RFlT3St8L._SL1500_.jpg', CAST(0x0000000000000000 AS DateTime), 23, 23, 5, 2, 4, 4, 1, 1, N'Mais músicas para o Rock Band, mas com as figuras Lego engraçadinhas.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (55, N'Halo: Reach', N'https://i.pinimg.com/originals/54/71/60/54716076140a3d9a336a566cd76f12ce.jpg', CAST(0x0000000000000000 AS DateTime), 7, 45, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (56, N'Halo: CE Anniversary', N'https://vignette.wikia.nocookie.net/halo-university/images/1/1b/Halo_ann_combatevolved_final.jpg/rev', CAST(0x0000A37500000000 AS DateTime), 45, 7, 4, 3, 5, 1, 1, 1, N'Primeiro jogo da famosa série. Será que é tudo isso mesmo?')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (57, N'Michael Jackson', N'https://images-na.ssl-images-amazon.com/images/I/61CM5A0SmoL._AC_SX430_.jpg', CAST(0x0000000000000000 AS DateTime), 8, 8, 5, 2, 4, 4, 1, 1, N'Sou fã do Michael e das danças dele. Só por isso já justifica ter esse jogo. É... acho que só por isso mesmo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (58, N'Sonic 4 Episode I', N'https://i.pinimg.com/236x/d9/c0/50/d9c050b2d098579ea61b6e923252e006--the-hedgehog-hedgehogs.jpg', CAST(0x00009E1200000000 AS DateTime), 1, 13, 4, 4, 4, 1, 5, 3, N'Esse é bonzinho... ')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (59, N'Batman: Arkham Asylum', N'https://images-na.ssl-images-amazon.com/images/I/91FQ10hFnLL._SY445_.jpg', CAST(0x00009F3E00000000 AS DateTime), 29, 44, 4, 2, 5, 1, 1, 1, N'Primeiro jogo da série Arkham do cavaleiro das trevas. Mudou o conceito de jogos de heróis que em geral são fracos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (60, N'Rock Band 2', N'http://www.technogog.com/wp-content/uploads/2008/09/rb1-thumb.jpg', CAST(0x00009C3D00000000 AS DateTime), 3, 23, 4, 2, 5, 1, 1, 1, N'Mais músicas para o Rock Band. Algumas funções novas e melhorias na progressão do jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (61, N'Fable III', N'https://s-media-cache-ak0.pinimg.com/originals/e4/b1/d7/e4b1d73d060a9f9b683ad1b2313a58f1.jpg', CAST(0x00009F0600000000 AS DateTime), 7, 46, 4, 2, 4, 1, 1, 1, N'Nunca joguei o primeiro jogo da série, mas como o segundo é ótimo a expectativa era alta para o terceiro. Decepcionou um pouco. O jogo ficou menor e bem rápido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (62, N'Kinect Sports', N'https://static.raru.co.za/cover/2016/07/18/4872734-l.jpg?v=1468846418', CAST(0x00009EFD00000000 AS DateTime), 7, 47, 4, 2, 4, 1, 1, 1, N'Praticando esportes com o kinect. É bem divertido pra jogar acompanhado mas cansa... nos dois sentidos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (63, N'Fable II', N'http://www.retrocorner.ch/images/Fable-2-Cover_thumb.jpg', CAST(0x00009C0400000000 AS DateTime), 7, 46, 4, 2, 5, 1, 1, 1, N'Jogo de ação com  algumas características de RPG, onde suas decisões influem na sua moral e na história do jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (64, N'The Beatles: Rock Band', N'http://mygenerationtoys.com/images/XBOX%20360%20The%20Beatles%20Sealed%20NEW.jpg', CAST(0x00009CBA00000000 AS DateTime), 3, 23, 4, 2, 5, 1, 1, 1, N'Músicas, músicos, ambiente, vídeos e tudo mais dos Beatles. Jogo muito bem feito e divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (65, N'Kinect Adventures', N'https://images-na.ssl-images-amazon.com/images/I/61BhMF3zXvL.jpg', CAST(0x00009EBD00000000 AS DateTime), 7, 47, 4, 2, 4, 1, 1, 1, N'Jogo que acompanha o kinect e que apresente alguns mini-jogos para jogar com os amigos. Divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (66, N'Kinect Joy Ride', N'https://i.ebayimg.com/images/g/Ia4AAOSwxT9a1xU1/s-l300.jpg', CAST(0x0000000000000000 AS DateTime), 7, 48, 6, 2, 3, 4, 1, 1, N'Jogo de corrida para o kinect. O carro corre sozinho e você controla com movimentos. Alguns modos de jogo são divertidos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (67, N'LIMBO', N'http://www.forevergeek.com/wp-content/media/2011/11/limbo.png', CAST(0x00009E5500000000 AS DateTime), 7, 49, 4, 4, 5, 1, 5, 3, N'Jogo indie, simples e muito bom!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (68, N'Viva Piñata: TIP', N'https://gamefaqs.akamaized.net/box/6/2/6/96626_front.jpg', CAST(0x0000000000000000 AS DateTime), 7, 47, 6, 2, 3, 4, 1, 1, N'Joguei bastante o primeiro mas esse segundo não pegou.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (69, N'Viva Piñata', N'https://images-na.ssl-images-amazon.com/images/I/81PdXexRx5L._AC_SX215_.jpg', CAST(0x00009B1B00000000 AS DateTime), 7, 47, 4, 4, 4, 5, 1, 1, N'[jogo trocado pelo TIP por ter arranhado] Jogo infantil, primeiro a ser duplado no 360 mas que me divertiu bastante.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (70, N'Sonic Adventure', N'http://img06.deviantart.net/c35d/i/2015/074/4/b/sonic_adventure_remastered_by_mateus2014-d8ic7ja.jpg', CAST(0x00009E7400000000 AS DateTime), 1, 13, 4, 4, 5, 1, 5, 3, N'Jogão do Sonic de olhos verdes do Dreamcast. Talvez o melhor feito até o momento da era 3D.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (71, N'BioShock 2', N'https://vignette.wikia.nocookie.net/bioshock/images/2/23/BioShock2strategyguide.png/revision/latest?', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 2, 3, 4, 1, 1, N'Falam tão bem do 1 mas esse 2 é muito chato.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (72, N'Trials HD', N'https://mattbrett.com/images/games/trialshd.png', CAST(0x0000000000000000 AS DateTime), 8, 51, 6, 4, 3, 1, 5, 3, N'No começo é divertido mas depois cansa.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (74, N'Dash of Destruction', N'https://upload.wikimedia.org/wikipedia/en/e/e8/Dashofdestructioncover.jpg', CAST(0x00009B7800000000 AS DateTime), 7, 52, 4, 4, 4, 1, 5, 3, N'Puzzle tipo de tabuleiro. Divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (75, N'Sonic & Knuckles', N'https://upload.wikimedia.org/wikipedia/pt/thumb/d/d3/Sonic_%26_Knuckles_cover.jpg/250px-Sonic_%26_Kn', CAST(0x00009DC300000000 AS DateTime), 1, 13, 4, 4, 5, 1, 5, 3, N'Jogaço do mega drive onde você poderia juntar os outros jogos  da série e fazer o Knuckles participar.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (76, N'Kameo', N'https://images-na.ssl-images-amazon.com/images/I/51597THYHXL._SY445_.jpg', CAST(0x000098CA00000000 AS DateTime), 7, 47, 4, 2, 4, 1, 1, 1, N'Veio com o Xbox mas é bem divertido. Nada demais.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (77, N'Phantasy Star II', N'https://gamefaqs.akamaized.net/box/9/3/0/14930_front.jpg', CAST(0x0000000000000000 AS DateTime), 1, 13, 6, 4, 5, 4, 5, 3, N'Primeiro RPG que joguei na vida, ainda no Master System. Responsável por eu gostar de RPGs japoneses.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (78, N'Brütal Legend', N'https://images-na.ssl-images-amazon.com/images/I/51f%2B7QNU4TL.jpg', CAST(0x00009CEA00000000 AS DateTime), 3, 53, 4, 2, 4, 1, 1, 1, N'Jack Black = Humor, Rock, RTS e Decapitatiooooooonnnn!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (79, N'Gears of War 2', N'https://images-na.ssl-images-amazon.com/images/I/51IlAaP-u8L._SY445_.jpg', CAST(0x00009B6300000000 AS DateTime), 7, 35, 4, 2, 5, 1, 1, 1, N'dando sequencia ao ótimo FPS da plataforma.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (80, N'RESIDENT EVIL 5', N'https://vignette.wikia.nocookie.net/residentevil/images/5/58/RE5_Gold_Edition.jpg/revision/latest?cb', CAST(0x00009C6000000000 AS DateTime), 32, 32, 4, 2, 4, 1, 1, 1, N'[Jogo arranhado pelo próprio xbox]. Não é mais RE mas é legal.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (81, N'PES 2009', N'http://www.mobygames.com/images/covers/l/221309-pes-2010-pro-evolution-soccer-xbox-360-front-cover.j', CAST(0x0000000000000000 AS DateTime), 36, 36, 6, 2, 4, 1, 1, 1, N'Acho que foi o último PES que joguei de verdade.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (82, N'Fable II Pub Games', N'https://upload.wikimedia.org/wikipedia/en/c/cf/Fablepubgamescover.jpg', CAST(0x00009BA500000000 AS DateTime), 7, 46, 4, 4, 4, 1, 5, 3, N'Jogo adicional ao Fable II. divertido e ainda retornava recompensas ao jogo principal.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (83, N'Carcassonne', N'https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Carcassonne-game.jpg/220px-Carcassonne-game.jpg', CAST(0x00009A0B00000000 AS DateTime), 54, 54, 4, 4, 4, 1, 5, 3, N'Jogo de tabuleiro. Divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (84, N'Rock Band', N'https://i.ebayimg.com/images/g/q4IAAOSw5VFWJqLZ/s-l300.jpg', CAST(0x00009B0800000000 AS DateTime), 3, 23, 4, 2, 5, 1, 1, 1, N'Responsável por não ter jogado vários jogos famosos da mesma época. Durante um tempo eu só joguei Rock Band. E não me arrependo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (85, N'Forza Motorsport 2', N'https://static.carthrottle.com/workspace/uploads/comments/6c5affc8e9d0330137c2924c33f6cda0.jpg', CAST(0x0000000000000000 AS DateTime), 25, 7, 6, 2, 4, 1, 1, 1, N'Joguei muito pouco. Devia ter jogado mais.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (86, N'Blue Dragon', N'https://2.bp.blogspot.com/_4aI5xkWB6W0/TPaB6HN3_kI/AAAAAAAANOA/vatQYwU1Tlk/s1600/bdstcover.jpg', CAST(0x00009B1600000000 AS DateTime), 7, 55, 4, 2, 5, 1, 1, 1, N'No começo da geração um jogo que veio em 3 DVDs. RPG japonês bem grande. Animações no estilo animê com muitas cores. Ótimas músicas!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (87, N'PES 2007', N'we2007.jpg', CAST(0x00009AB500000000 AS DateTime), 36, 36, 4, 2, 4, 1, 1, 1, N'Foi quando mudou o nome de Winning Eleven para Pro Evolution Soccer. Essa era bem legal ainda.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (88, N'Assassin''s Creed', N'https://images-na.ssl-images-amazon.com/images/I/51YjqcOJXbL._SY445_.jpg', CAST(0x00009AD100000000 AS DateTime), 8, 8, 4, 4, 4, 1, 1, 3, N'Joguei primeiro com um jogo emprestado e depois comprei. Gostei muito da série, da mistura com história.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (89, N'Halo 3', N'https://i.pinimg.com/originals/fe/47/f9/fe47f9ca79230ac1f776399ea5a87cff.jpg', CAST(0x00009A7800000000 AS DateTime), 7, 45, 4, 4, 4, 1, 1, 1, N'Primeiro jogo no X360 da série que se consagrou na geração anterior.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (90, N'BioShock', N'https://i.ebayimg.com/images/g/w0sAAOSwX~dWob4a/s-l300.jpg', CAST(0x0000A27F00000000 AS DateTime), 50, 50, 4, 4, 7, 1, 1, 3, N'Joguei um pouco emprestado mas comprei posteriormente para ver se é tudo que falam mesmo. É interessante, mas joguei meio corrido sem prestar muit atenção na história.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (91, N'Gears of War', N'https://images-na.ssl-images-amazon.com/images/I/715W1lP%2BlcS._SL1076_.jpg', CAST(0x000098D800000000 AS DateTime), 7, 35, 4, 2, 5, 1, 1, 1, N'Pra começar a guerra contra os Locusts, um jogaço!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (92, N'Hexic HD', N'https://img.ibxk.com.br/2018/04/30/30131032639465.jpg?w=300&mode=crop&scale=both', CAST(0x0000988F00000000 AS DateTime), 7, 56, 4, 4, 4, 1, 5, 3, N'Joguinho do tipo viciantes de juntar pedrinhas da mesma cor.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (93, N'PGR 3', N'https://i.ebayimg.com/images/g/pp4AAOSw241YVp~3/s-l300.jpg', CAST(0x0000000000000000 AS DateTime), 7, 57, 6, 2, 4, 1, 1, 1, N'Primeiro jogo de corrida do xbox 360. Já veio no pacote.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (94, N'Perfect Dark Zero', N'https://images-na.ssl-images-amazon.com/images/I/71ZaaX5e9dL.AC_SL1000_.jpg', CAST(0x000098AF00000000 AS DateTime), 7, 47, 4, 2, 3, 1, 1, 1, N'O multiplayer ainda era divertidinho. Não tinham muitas opções na época também. Mas é bem fraquinho o jogo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (95, N'LittleBigPlanet 2', N'https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/LBP_Vita_Boxart.jpg/220px-LBP_Vita_Boxart.jpg', CAST(0x0000A22E00000000 AS DateTime), 4, 61, 6, 4, 3, 1, 2, 3, N'Mais do mesmo. Não tenho muito saco pra explorar a criação de fases, então... cansa rápido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (96, N'inFAMOUS 2', N'https://upload.wikimedia.org/wikipedia/pt/thumb/c/c7/InFAMOUS-2_Festival-of-Blood.jpg/260px-InFAMOUS', CAST(0x0000000000000000 AS DateTime), 4, 62, 6, 4, 3, 1, 2, 3, N'Joguei o 1 e achei muito repetitivo, o 2 começou do mesmo jeito.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (97, N'VANQUISH', N'http://www.mobygames.com/images/covers/l/201564-vanquish-xbox-360-back-cover.jpg', CAST(0x0000000000000000 AS DateTime), 1, 64, 6, 4, 3, 1, 2, 3, N'Comecei a jogar mas não me animou muito.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (99, N'Sonic & All-Stars Racing Transformed™', N'http://1.bp.blogspot.com/-Q0B3SUygI_U/T-jOMp-mVmI/AAAAAAAALIM/okTs-UpiLWc/s640/SART-WIP-Box.png', CAST(0x0000A1BB00000000 AS DateTime), 1, 65, 4, 6, 4, 4, 2, 4, N'Fã do Sonic tem que ter tudo dele. Mas esse vale a pena. Jogo de corrida bem divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (100, N'Joe Danger 2: The Movie', N'https://upload.wikimedia.org/wikipedia/en/thumb/d/db/Joe_Danger_Logo.png/220px-Joe_Danger_Logo.png', CAST(0x0000000000000000 AS DateTime), 66, 66, 6, 4, 4, 1, 3, 3, N'Engraçadinho mas meio repetitivo. Tem tantas  outras coisas pra jogar...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (101, N'Dishonored', N'https://cdn.ecvol.com/s/www.endps.biz/produtos/jogo-dishonored-ps3-psn/m/0.jpg?v=', CAST(0x0000000000000000 AS DateTime), 12, 67, 6, 6, 3, 4, 2, 4, N'O jogo é bom mas eu não tenho muita paciência com as partes steelth e achei um pouco repetitivo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (102, N'Band Hero', N'https://upload.wikimedia.org/wikipedia/en/b/b5/Band_Hero.jpg', CAST(0x0000000000000000 AS DateTime), 59, 68, 5, 6, 4, 4, 2, 4, N'Guitar Hero teen.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (103, N'Uncharted 3: Drake''s Deception™', N'https://http2.mlstatic.com/uncharted-3-drakes-deception-ps3-psn-midia-digital-D_NQ_NP_908271-MLB2682', CAST(0x0000A0F700000000 AS DateTime), 4, 69, 4, 6, 5, 1, 2, 4, N'3ª jogo DA série do PS3.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (104, N'Uncharted 2: Among Thieves™', N'http://game.cdworlds.com/images/images_feature/Uncharted-22.jpg', CAST(0x0000A0D200000000 AS DateTime), 4, 69, 4, 4, 5, 1, 2, 3, N'2º jogo dA série do PS3.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (105, N'Uncharted: Drake''s Fortune', N'https://images-na.ssl-images-amazon.com/images/I/91B0KvHV0UL._AC_SX215_.jpg', CAST(0x0000A08D00000000 AS DateTime), 4, 69, 4, 6, 5, 1, 2, 4, N'Por que demorei tanto a descobrir esse jogo? Jogão!')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (106, N'inFamous', N'https://http2.mlstatic.com/infamous-sony-playstation-3-ps3-sucker-punch-perfeito-D_NQ_NP_747871-MLB2', CAST(0x0000A03A00000000 AS DateTime), 4, 62, 4, 4, 3, 1, 2, 3, N'A PSN fez merda, me deu esse jogo pra compensar. O jogo é muito repetitivo e parece que nunca mais vai acabar. Mas acabou. Chega.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (107, N'Dead Nation', N'https://http2.mlstatic.com/dead-nation-ps3-digital-2-gb-jogue-hoje-D_NQ_NP_907129-MLB26843130921_022', CAST(0x0000000000000000 AS DateTime), 4, 70, 6, 4, 3, 4, 2, 3, N'Jogo dado pela Sony pra compensar as besteiras feitas na PSN. Legalzinho, mas depois de um tempo cansou.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (108, N'Sonic The Hedgehog', N'https://vignette.wikia.nocookie.net/sonic/images/1/10/SUGC_boxart.jpg/revision/latest?cb=20150103040', CAST(0x0000000000000000 AS DateTime), 1, 13, 6, 4, 5, 4, 2, 3, N'Porque eu preciso ter todos os jogos do Sonic em todas as plataformas.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (109, N'Guitar Hero 5', N'https://upload.wikimedia.org/wikipedia/en/thumb/7/77/Guitar_Hero_5_Game_Cover.jpg/220px-Guitar_Hero_', CAST(0x00009F8F00000000 AS DateTime), 59, 68, 4, 6, 4, 1, 2, 4, N'Bom mas prefiro o rock Band.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (110, N'Sonic The Hedgehog 2', N'https://vignette.wikia.nocookie.net/sonic/images/f/f9/Sonic2-cover.jpg/revision/latest?cb=2009040800', CAST(0x00009F5A00000000 AS DateTime), 1, 13, 4, 4, 5, 1, 3, 3, N'O mesmo jogo, agora na PSN.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (111, N'LittleBigPlanet', N'https://52f4e29a8321344e30ae-0f55c9129972ac85d6b1f4e703468e6b.ssl.cf2.rackcdn.com/products/pictures/', CAST(0x00009F5100000000 AS DateTime), 4, 61, 4, 6, 4, 1, 2, 4, N'Litoubigpleneti opá! =)')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (112, N'Flower', N'https://images-na.ssl-images-amazon.com/images/I/61mh4knLi5L._AC_SX215_.jpg', CAST(0x0000000000000000 AS DateTime), 4, 71, 6, 4, 3, 4, 2, 3, N'Conceito interessante, bonito, mas dá sono.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (113, N'God of War® III', N'https://upload.wikimedia.org/wikipedia/en/thumb/3/3c/Gow2-2.jpg/220px-Gow2-2.jpg', CAST(0x00009D4E00000000 AS DateTime), 4, 4, 4, 6, 5, 1, 2, 4, N'3ª busca por vingança do Kratos! Mas é um ótimo jogo.')
GO
print 'Processed 100 total records'
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (114, N'God of War®: Collection', N'https://images-na.ssl-images-amazon.com/images/I/91v8z6wrApL._SX385_.jpg', CAST(0x00009D3F00000000 AS DateTime), 4, 4, 4, 6, 5, 1, 2, 4, N'Coleção com os dois primeiros God of War lançados originalmente do PS2.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (116, N'Battlefield 1943', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTybxqNDlztQgyz7U4OYt2sMi4nl9ypBfMI2I7amDg5NV2T', CAST(0x0000000000000000 AS DateTime), 1089, 3, 6, 4, 4, 1, 3, 3, N'Guerra online bem divertida.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (117, N'Eternal Sonata', N'https://i.ebayimg.com/thumbs/images/g/ZFIAAOSwVGha3Sym/s-l225.jpg', CAST(0x0000000000000000 AS DateTime), 60, 60, 6, 6, 4, 4, 2, 4, N'Cheguei no fim do jogo e não consegui matar o chefe. Tenho que melhorar os personagens e deu uma preguiiiça. Cheguei a recomeçar o jogo mas parei de novo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (118, N'Drangon''s Lair', N'https://images-na.ssl-images-amazon.com/images/I/91p4jRz0JkL._AC_SX215_.jpg', CAST(0x0000A31F00000000 AS DateTime), 7, 72, 4, 4, 4, 1, 5, 3, N'Antigo jogo mioto famoso. Totalmente diferente do que eu imaginava. O jogador apenas tem que apertar o botão certo na hora certa. Tem um modo de jogo com o Kinect mas eu não cheguei a testar. A sensação de estar jogando um desenho animado é legal hoje, imagine na época do lançamento da versão original.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (119, N'Insanely Twisted: SP', N'http://s.glbimg.com/po/tt/f/original/2011/10/21/1-1_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 73, 6, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (120, N'Rainbow Six Vegas', N'https://http2.mlstatic.com/tom-clancys-rainbow-six-vegas-codigo-xbox-one360-D_NQ_NP_677579-MLB272629', CAST(0x0000000000000000 AS DateTime), 8, 8, 1, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (123, N'Dead Rising 2', N'https://images.webstore.net.br/files/47/PROD_140531144453.jpg', CAST(0x0000000000000000 AS DateTime), 32, 75, 6, 4, 7, 4, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (124, N'Crackdown', N'https://gamefaqs.akamaized.net/box/6/2/8/71628_front.jpg', CAST(0x0000000000000000 AS DateTime), 7, 51, 6, 4, 7, 7, 1, 3, N'muito jogo na fila pra perder tempo com outro que quer ser um GTA.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (125, N'Devil May Cry HD Collection', N'https://http2.mlstatic.com/jogo-devil-may-cry-hd-collection-xbox360-oferta-D_NQ_NP_898526-MLB2667894', CAST(0x0000000000000000 AS DateTime), 32, 35, 6, 4, 3, 4, 1, 3, N'três esmaga botão juntos. No começo é legal, mas gráficos e sons de PS2 cansam.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (126, N'Lego Batman 2', N'https://images-na.ssl-images-amazon.com/images/I/81kjUGPZBhL._AC_SL1500_.jpg', CAST(0x0000000000000000 AS DateTime), 29, 40, 6, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (127, N'Lego OSdA', N'https://cdn.ecvol.com/s/www.e-gamesbrasil.com.br/produtos/lego-o-senhor-dos-aneis-jogo-xbox-360-lege', CAST(0x0000A3EF00000000 AS DateTime), 29, 40, 4, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (128, N'Defense Grid', N'http://www.mobygames.com/game/xbox360/defense-grid-the-awakening/cover-art/gameCoverId,182736/', CAST(0x0000000000000000 AS DateTime), 7, 78, 6, 4, 7, 1, 5, 3, N'tower defense...')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (129, N'Borderlands 2', N'https://i.ebayimg.com/images/g/AgkAAOSwCGVX9TYD/s-l300.jpg', CAST(0x0000A39700000000 AS DateTime), 50, 79, 4, 4, 4, 7, 1, 3, N'Shooter com armas variadas, gráfico interessante. Gosto do esquema de níveis na evoução do personagem. Chefe final foi ridículamente fácil.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (132, N'Alan Wake American Nightmare', N'https://i.pinimg.com/736x/3c/5a/06/3c5a0659b740b1ef88345b3efe92590d.jpg', CAST(0x0000A26A00000000 AS DateTime), 7, 38, 4, 5, 4, 7, 5, 3, N'Continuação do Alan Wake. Jogo de terro no formato de uma serie. Bem legal mas um pouco repetitivo.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (133, N'Happy Wars', N'happywars.jpg', CAST(0x0000A1A100000000 AS DateTime), 7, 40, 1, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (134, N'Sonic Adventure 2', N'https://images-na.ssl-images-amazon.com/images/I/51EBKJVYPWL._SY445_.jpg', CAST(0x0000A3D700000000 AS DateTime), 1, 1, 4, 4, 5, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1118, N'A world of Keflings', N'https://images-na.ssl-images-amazon.com/images/I/41fJhOTsONL._SX215_.jpg', NULL, 7, 52, 6, 5, 7, 7, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1120, N'Ryse: Son of Rome', N'https://http2.mlstatic.com/ryse-son-of-rome-xbox-one-offline-D_NQ_NP_208711-MLB20629442723_032016-F.', CAST(0x0000A29700000000 AS DateTime), 7, 1072, 4, 3, 4, 1, 6, 4, N'Primeiro jogo do Xbox One. Esmaga bot~eos com gráficos muito bonito e história curta mas legal.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1121, N'Banjo-tooie', N'https://images-na.ssl-images-amazon.com/images/I/811XGBgrpCL._AC_SL1500_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 47, 6, 5, 7, 7, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1122, N'Civilization Revolution', N'https://vignette.wikia.nocookie.net/civilization/images/d/d0/Civilization_Revolution_cover.png/revis', CAST(0x0000A39900000000 AS DateTime), 50, 1073, 4, 4, 5, 1, 5, 3, N'Tradicional jogo de estratégia, muito divertido.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1123, N'Deadlight', N'https://s3.amazonaws.com/comparegame/thumbnails/21557/large.jpg', CAST(0x0000000000000000 AS DateTime), 7, 81, 6, 4, 3, 1, 5, 3, N'puzzle com zumbi. Interessante mas me cansou.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1125, N'Fable Anniversary', N'https://i.ebayimg.com/images/g/7i4AAOxyni9TF6bS/s-l225.jpg', CAST(0x0000A31D00000000 AS DateTime), 7, 46, 4, 4, 3, 1, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1128, N'Rock Band Blitz', N'http://assets.sbnation.com/assets/1520999/rock-band-blitz-review-screen-1_medium.jpeg', CAST(0x0000A2D900000000 AS DateTime), 23, 23, 6, 4, 3, 4, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1129, N'Shoot Many Robots', N'https://i.pinimg.com/236x/0b/6c/31/0b6c31e39203073a94d64ed8354bd429--game-cards-robots.jpg', CAST(0x0000000000000000 AS DateTime), 8, 1076, 6, 4, 4, 7, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1134, N'Max: The Curse of Brotherhood', N'https://store-images.s-microsoft.com/image/apps.47973.64425461392281454.7800f3ae-1629-4fa0-ad8f-cfad', CAST(0x0000A35500000000 AS DateTime), 7, 1078, 4, 4, 4, 1, 6, 3, N'Bem divertido, com mecânica de jogo bem criativa.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1136, N'Halo: Spartan Assault', N'http://mlb-s2-p.mlstatic.com/945064-MLB27272743061_042018-O.jpg', CAST(0x0000000000000000 AS DateTime), 7, 1079, 6, 4, 7, 3, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1138, N'Dark Souls', N'https://gbhbl.com/wp-content/uploads/2015/10/dark-souls-cover.jpg', CAST(0x0000000000000000 AS DateTime), 60, 1082, 6, 4, 2, 7, 1, 3, N'difícil demais')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1139, N'Guacamelee', N'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Guacamelee%21_STCE_box_art.jpg/220px-Guaca', CAST(0x0000A39000000000 AS DateTime), 59, 1083, 4, 4, 4, 1, 6, 3, N'Divertido, engraçado e irritantemente difícil em alguns momentos.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1140, N'Charlie Murder', N'https://vignette.wikia.nocookie.net/charlie-murder/images/b/b5/CharlieMurderXBLA.jpg/revision/latest', CAST(0x0000000000000000 AS DateTime), 1084, 1084, 6, 4, 3, 1, 5, 3, N'Castle Crashers #SQN')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1142, N'Rocksmith 2014 Edition', N'https://static.raru.co.za/cover/2014/07/22/1857474-l.jpg?v=1415274029', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 4, 7, 2, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1143, N'BattleBlock Theater', N'https://vignette.wikia.nocookie.net/castlecrashers/images/5/59/Battleblockcover.png/revision/latest?', CAST(0x0000000000000000 AS DateTime), 7, 26, 6, 4, 3, 1, 5, 3, N'Parece ser lago para jogar em grupo, como Castle Crashers, mas sozinho ficou meio entediante.')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1144, N'Motocross Madness', N'https://images-na.ssl-images-amazon.com/images/I/51FESN9X5PL._SX215_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 1085, 6, 4, 7, 3, 5, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1146, N'Assassins Creed Chronicles: China', N'https://i.pinimg.com/originals/6c/c3/18/6cc318de42ab2812dceafff41a41ceca.jpg', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1147, N'Assassins Creed Syndicate', N'https://images-na.ssl-images-amazon.com/images/I/716VsyGX62L._SL1056_.jpg', CAST(0x0000A7AE00000000 AS DateTime), 8, 8, 4, 4, 5, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1148, N'Batman: The Telltale Series', N'https://images-na.ssl-images-amazon.com/images/I/81h9CFaCzsL._SY445_.jpg', CAST(0x0000A7A100000000 AS DateTime), 29, 37, 4, 4, 4, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1149, N'Batman: Arkham Knight', N'https://cdn.awsli.com.br/600x450/335/335054/produto/27445933/de3f661fc0.jpg', CAST(0x0000A55C00000000 AS DateTime), 29, 44, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1150, N'Earthlock', N'https://s-media-cache-ak0.pinimg.com/originals/f2/ff/24/f2ff2454bcd0f6e83b7312d09d183915.png', CAST(0x0000000000000000 AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1152, N'Fallout Shelter', N'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTEhIWFhUXGB0WGBcYGBcYHRgYGB0ZHSAbH', CAST(0x0000000000000000 AS DateTime), 7, 7, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1153, N'Forza Horizon 2', N'http://blogs.capecodonline.com/cape-cod-gaming/files/2014/10/fh2ba.jpg', CAST(0x0000A66D00000000 AS DateTime), 7, 7, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1154, N'Gran Theft Auto V', N'https://pre00.deviantart.net/635b/th/pre/f/2014/287/3/e/gta_v_gif_nextgen_cover_xbox_one_by_raulmatt', CAST(0x0000000000000000 AS DateTime), 10, 10, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1155, N'Halo: The Master Chief Collection', N'https://images-na.ssl-images-amazon.com/images/I/81yCZWbfoSL._SX342_.jpg', CAST(0x0000A42B00000000 AS DateTime), 7, 27, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1156, N'Inside', N'https://http2.mlstatic.com/inside-limbo-xbox-one-midia-fisica-lacrado-D_NQ_NP_997140-MLB26791617423_', CAST(0x0000A6DA00000000 AS DateTime), 49, 49, 4, 4, 5, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1157, N'Just Dance 2015', N'https://http2.mlstatic.com/just-dance-2015-xbox-one-s-g-D_NQ_NP_20103-MLB20184501160_102014-F.jpg', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1158, N'Just Dance 2016', N'https://images.prod.meredith.com/product/b2837ea8e1fa722e7343d5751bd3a13e/7c4a06cbb6d7f859829327d04a', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1159, N'Just Sing', N'https://http2.mlstatic.com/just-sing-xbox-one-D_NQ_NP_246615-MLB25270808119_012017-F.jpg', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1162, N'Lara Croft and the Temple os Osiris', N'https://www.xxlgamer.com/uploads/small/lara-croft-and-the-temple-of-osiris-xbox-one-key-cover.jpg', CAST(0x0000000000000000 AS DateTime), 9, 34, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1163, N'Layers of fear', N'https://i.pinimg.com/originals/7f/b5/5c/7fb55cce0801139da28f545ebd874ef3.jpg', CAST(0x0000000000000000 AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1164, N'Lego Marvel Super Heroes', N'https://static.raru.co.za/cover/2014/07/28/1895321-l.jpg?v=1463128967', CAST(0x0000A61F00000000 AS DateTime), 29, 40, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1165, N'Lego Vingadores', N'https://images-na.ssl-images-amazon.com/images/I/91CgUSs%2B0FL._SY445_.jpg', CAST(0x0000A62A00000000 AS DateTime), 29, 40, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1166, N'Lego Star Wars: O Despertar da Força', N'https://images-na.ssl-images-amazon.com/images/I/81cJwwUQr9L._AC_UL320_SR234,320_.jpg', CAST(0x0000A6BD00000000 AS DateTime), 29, 40, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1167, N'Life is strange', N'https://hg101.kontek.net/lifeisstrange/images/lifeisstrange-cover.jpg', CAST(0x0000A69300000000 AS DateTime), 9, 1097, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1169, N'Lords of then fallen', N'https://http2.mlstatic.com/jogo-lords-of-the-fallen-complete-edition-xbox-one-lacrado-D_NQ_NP_911512', CAST(0x00008EAC00000000 AS DateTime), 1098, 1099, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1170, N'Murdered: Soul Suspect', N'https://images-na.ssl-images-amazon.com/images/I/81S--CGknIL._SL1500_.jpg', CAST(0x00008EAC00000000 AS DateTime), 9, 1100, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1171, N'NBA 2K15', N'http://i0.wp.com/gamepricer.co.uk/wp-content/uploads/2015/04/NBA-2K15-xbox-one-Cover.jpg?fit=500%2C6', CAST(0x00008EAC00000000 AS DateTime), 50, 1101, 6, 4, 4, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1172, N'Ori and then blind forest', N'http://ecx.images-amazon.com/images/I/51eZAnFVXZL..jpg', CAST(0x0000A59600000000 AS DateTime), 7, 1102, 4, 4, 5, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1173, N'Outlast', N'https://images-na.ssl-images-amazon.com/images/I/81B8D19GkXL._SX342_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 7, 6, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1174, N'Phantom Dust', N'https://images-na.ssl-images-amazon.com/images/I/519XEBQD6NL._AC_SX430_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 7, 6, 4, 3, 7, 9, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1175, N'Pneuma', N'https://d2e111jq13me73.cloudfront.net/sites/default/files/styles/product_image_aspect_switcher_170w/', CAST(0x00008EAC00000000 AS DateTime), 1103, 1103, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1176, N'PES 2016', N'https://images-na.ssl-images-amazon.com/images/I/91J0GFWDzgL._AC_SL1500_.jpg', CAST(0x0000000000000000 AS DateTime), 36, 36, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1177, N'Project Cars', N'https://www.maisgamessolutions.com.br/wp-content/uploads/2016/06/project-cars-one.jpg', CAST(0x0000000000000000 AS DateTime), 60, 1104, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1178, N'Rise of the Tomb Raider', N'https://http2.mlstatic.com/rise-of-the-tomb-raider-aniversario-de-20-anos-xbox-one-D_NQ_NP_578115-ML', CAST(0x0000A5C000000000 AS DateTime), 9, 34, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1179, N'Rock Band 4', N'https://http2.mlstatic.com/rock-band-4-rivals-bundle-xbox-one-D_NQ_NP_250315-MLB25201083998_122016-F', CAST(0x0000A66300000000 AS DateTime), 1105, 23, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1180, N'Rocket Legue', N'https://http2.mlstatic.com/rocket-league-xbox-one-xone-D_NQ_NP_726981-MLB26118409164_102017-F.jpg', CAST(0x0000000000000000 AS DateTime), 1106, 1106, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1181, N'Crimes & Punishments', N'https://cdn.highdefdigest.com/uploads/2014/09/25/195/Crimes_Punishments_sherlock_holmes_xbox_one.jpg', CAST(0x0000000000000000 AS DateTime), 1091, 1092, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1182, N'SpeedRunners', N'https://s2.gaming-cdn.com/images/products/1363/271x377/1363.jpg', CAST(0x0000A78D00000000 AS DateTime), 71, 1113, 4, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1183, N'Star Wars: Battlefront', N'http://appsisecommerces3.s3.amazonaws.com/clientes/cliente3628/produtos/18026/Z01451319484.jpg', CAST(0x0000000000000000 AS DateTime), 3, 3, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1184, N'Styx: Master of shadows', N'https://images-na.ssl-images-amazon.com/images/I/719BVbZKfLL._SY445_.jpg', CAST(0x0000000000000000 AS DateTime), 1091, 1091, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1185, N'Super dungeon Bros', N'https://static.raru.co.za/cover/2016/02/06/4293022-l.jpg?v=1454750513', CAST(0x0000000000000000 AS DateTime), 1115, 1116, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1186, N'Super Mega Baseball', N'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Super_Mega_Baseball_Game_Cover.png/220px-S', CAST(0x0000000000000000 AS DateTime), 1117, 1117, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1189, N'The Incredible Adventures of Van Helsing', N'https://xboxmajornelson.files.wordpress.com/2015/11/untitled.png?w=210&h=293', CAST(0x0000000000000000 AS DateTime), 1119, 1119, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1190, N'Pinball Arcade', N'https://i.ebayimg.com/images/g/iqYAAOSwmtJXUVTQ/s-l300.jpg', CAST(0x0000000000000000 AS DateTime), 1149, 1149, 6, 4, 7, 7, 2, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1191, N'The Walking Dead: Season One', N'https://vignette.wikia.nocookie.net/walkingdead/images/4/4f/TWD_GOTY_Edition.png/revision/latest?cb=', CAST(0x0000A5D600000000 AS DateTime), 37, 37, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1192, N'The Walking Dead: Season Two', N'https://images-na.ssl-images-amazon.com/images/I/81SIewdVZ3L._SX342_.jpg', CAST(0x00008EAC00000000 AS DateTime), 37, 37, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1193, N'The Witcher III: Wild Hunt', N'https://images-na.ssl-images-amazon.com/images/I/91RtiJSH%2BDL._AC_SX215_.jpg', CAST(0x0000A77300000000 AS DateTime), 29, 1120, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1196, N'Titanfall', N'https://i.pinimg.com/originals/42/80/7e/42807e3f04f150aaddc0fbc8ccd8dbf6.jpg', CAST(0x00008EAC00000000 AS DateTime), 3, 1121, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1197, N'Titanfall 2', N'https://i.pinimg.com/236x/a7/31/a2/a731a22721eeecfbac09911e5313b651--xbox-one-book-jacket.jpg', CAST(0x0000A7E600000000 AS DateTime), 3, 1121, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1198, N'Tomb Raider: Definitive Edition', N'https://images-na.ssl-images-amazon.com/images/I/9139AFz4SsL._SL1500_.jpg', CAST(0x0000A4F000000000 AS DateTime), 9, 34, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1205, N'#IDARB', N'https://f4.bcbits.com/img/a4140160518_10.jpg', NULL, 7, 7, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1206, N'AirMech Arena', N'https://img.olx.com.br/images/58/586807007964388.jpg', NULL, 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1207, N'Aritana e a pena da arpia', N'https://www.storeparser.com/images/xbox-one/BTMS1PXLQ6P6.png', CAST(0x0000A55F00000000 AS DateTime), 7, 7, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1208, N'Assassins Creed IV Black Flag', N'https://arcadia.cr/wp-content/uploads/2016/11/385118_front.jpg', CAST(0x0000A2B800000000 AS DateTime), 8, 8, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1210, N'CastleStorm', N'https://images-na.ssl-images-amazon.com/images/I/51PhNKCtNtL._QL40_SX400_.jpg', CAST(0x00008EAC00000000 AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1211, N'Chariot', N'https://cdn.highdefdigest.com/uploads/2014/10/21/195/Chariot_Xbox_One.jpg', CAST(0x0000000000000000 AS DateTime), 7, 7, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1212, N'Child of light', N'https://cdn.awsli.com.br/600x450/487/487154/produto/26958916/e3522619fa.jpg', CAST(0x0000A1DC00000000 AS DateTime), 8, 8, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1213, N'Costume Quest 2', N'https://http2.mlstatic.com/costume-quest-2-xbox-one-codigo-25-digitos-D_NQ_NP_649011-MLB26472901765_', CAST(0x0000000000000000 AS DateTime), 7, 53, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1214, N'Crimson Dragon', N'http://www.goblin.si/images/xbox-one-igre/crimson-dragon-xbox-one.jpg', CAST(0x0000000000000000 AS DateTime), 7, 1093, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1215, N'D4: dark Dreams Dont''t die', N'http://assets2.ignimgs.com/2013/06/10/d4xboxonebox-tempearlyjpg-30b7d6_160w.jpg', CAST(0x0000A43200000000 AS DateTime), 7, 7, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1216, N'DC Universe online', N'https://static.pelando.com.br/live/threads/thread_large/default/183690_1.jpg', CAST(0x0000000000000000 AS DateTime), 1095, 1095, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1225, N'Goat Simulator', N'https://images-na.ssl-images-amazon.com/images/I/81EO8QpEAOL._SX342_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 7, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1226, N'Hand of fate', N'https://m.media-amazon.com/images/M/MV5BMWZhOTY3ODQtNDkxMS00N2VmLTlhZjktN2I2Zjk5NTBmMDZmXkEyXkFqcGde', CAST(0x0000000000000000 AS DateTime), 1096, 1096, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1228, N'How to survive: Storm Warning Edition', N'https://http2.mlstatic.com/how-to-survive-storm-warning-edition-xbox-one-codigo-25-D_NQ_NP_794890-ML', CAST(0x0000000000000000 AS DateTime), 7, 7, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1235, N'Rayman Legends', N'https://images-na.ssl-images-amazon.com/images/I/81l1LvncBnL._SL1500_.jpg', CAST(0x0000A46300000000 AS DateTime), 8, 8, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1236, N'So many me', N'/', CAST(0x0000000000000000 AS DateTime), 1110, 1111, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1237, N'Strike suit zero', N'http://i.jeuxactus.com/datas/jeux/s/t/strike-suit-zero/xl/strike-suit-zero-jaquette-5331ac6115369.jp', CAST(0x00008EAC00000000 AS DateTime), 1114, 1114, 1, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1238, N'Super time force', N'https://images-eds-ssl.xboxlive.com/image?url=8Oaj9Ryq1G1_p3lLnXlsaZgGzAie6Mnu24_PawYuDYIoH77pJ.X5Z.', CAST(0x0000000000000000 AS DateTime), 1118, 1118, 6, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1241, N'Valiant Hearts: The great war', N'https://images-na.ssl-images-amazon.com/images/I/714VzXEytPL._AC_SL1500_.jpg', CAST(0x0000A45500000000 AS DateTime), 8, 8, 4, 4, 7, 3, 6, 3, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1245, N'Rainbow Six Siege', N'https://img.ibxk.com.br/2015/09/11/11100401777290.jpg', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, 4, 7, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1246, N'God of war 3 remastered', N'https://http2.mlstatic.com/S_729321-MLB26419265280_112017-O.jpg', CAST(0x0000A7A200000000 AS DateTime), 4, 4, 4, 4, 5, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1247, N'Uncharted 4', N'https://static.raru.co.za/cover/2015/09/01/2997656-l.jpg?v=1441093292', CAST(0x0000A6FF00000000 AS DateTime), 4, 4, 4, 3, 5, 7, 7, 4, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1249, N'Skyforge', N'https://2images.cgames.de/images/gsgp/207/skyforge_2792521.jpg', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 4, 7, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1251, N'Paladins', N'https://m.media-amazon.com/images/M/MV5BMzI3ZjY0ZGMtMTFhOC00MDBmLTgzNjEtOTA4NTQzYzFiNmM3XkEyXkFqcGde', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 4, 3, 7, 7, 3, N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1252, N'Neverwinter', N'https://m.media-amazon.com/images/M/MV5BZDhhODQ5NDEtMWNiMC00OTY0LTg0MzItMGRmZTdjNjU0YmRmXkEyXkFqcGde', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 4, 7, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1253, N'Abzû', N'https://www.wog.ch/nas/cover_xl/p4/ps4_abzu.jpg', CAST(0x0000A76C00000000 AS DateTime), 50, 50, 4, 4, 5, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1254, N'Kingdom Hearts HD 2.8', N'https://m.media-amazon.com/images/M/MV5BYzhjNWRlYTgtZGVmNi00M2RlLTkzZWMtODVjMzgzNDRlY2E2XkEyXkFqcGde', CAST(0x0000000000000000 AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1255, N'Grim Fandango', N'https://lh5.ggpht.com/r0Fav5XfYd2VsRDW_5o26ISUFH7CWpji0wapymvHT91mWETK3hF0d-NH63dO35js3bXaTLZjUJ5j7l', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 4, 7, 2, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1256, N'Firewatch', N'https://cdn7.bigcommerce.com/s-m4soz87148/images/stencil/1280x1280/products/234/496/71u2bmQWyXL__428', CAST(0x0000A71500000000 AS DateTime), 50, 50, 4, 4, 4, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1257, N'Journey', N'http://www.mobygames.com/images/covers/l/476189-atelier-firis-the-alchemist-and-the-mysterious-journ', CAST(0x0000A6DC00000000 AS DateTime), 4, 71, 4, 4, 4, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1258, N'Lego Batman 3', N'https://images-na.ssl-images-amazon.com/images/I/81PQp2MoyPL._SX342_.jpg', CAST(0x0000A7AB00000000 AS DateTime), 29, 40, 4, 4, 7, 2, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1259, N'Doom', N'https://cdn.awsli.com.br/600x450/347/347499/produto/11361420/15c89b9ba8.jpg', CAST(0x0000A7BD00000000 AS DateTime), 12, 12, 5, 4, 5, 2, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1260, N'Grow up', N'https://cdn.awsli.com.br/600x450/487/487154/produto/26647771/24e3fb26ff.jpg', CAST(0x0000A7C600000000 AS DateTime), 8, 8, 4, 4, 3, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1262, N'Killing floor 2', N'https://s1.thcdn.com/productimg/600/600/11295701-3184416646966866.jpg', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 4, 3, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1263, N'Neon chrome', N'https://cdn.releases.com/img/image/bf864198-0bc1-495d-8ac1-c88d09ce32d3.jpg/300', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 4, 4, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1264, N'Spy chameleon', N'http://iv1.lisimg.com/image/15837134/425full-spy-chameleon-cover.jpg', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, 4, 3, 7, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1266, N'Runbow', N'https://s3.amazonaws.com/xboxpower-wp/wp-content/uploads/2017/10/24005657/RunbowSaturaSpaceAdventure', CAST(0x0000000000000000 AS DateTime), 1107, 1107, 6, 4, 7, 7, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1268, N'Game of thrones', N'http://www.nerdbite.com/wp-content/uploads/2015/08/4319402_sa.jpg', CAST(0x0000A7A300000000 AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1269, N'Back to the futere', N'https://vignette.wikia.nocookie.net/bttf/images/8/8c/Bttf_msx.png/revision/latest?cb=20170318135913', CAST(0x0000000000000000 AS DateTime), 37, 37, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1270, N'Day of the tentacle remastered', N'https://ps4gamepkgdownload.com/wp-content/uploads/2018/06/Day-Of-Tentacle-Remastered.png', CAST(0x0000000000000000 AS DateTime), 50, 50, 1, 4, 7, 3, 7, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1271, N'Bayoneta', N'https://http2.mlstatic.com/bayonetta-xbox-360-D_NQ_NP_794911-MLB27150452904_042018-F.jpg', CAST(0x0000A89D00000000 AS DateTime), 1, 64, 4, 4, 7, 3, 1, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1272, N'Slime rancher', N'https://cdn.awsli.com.br/1000x1000/487/487154/produto/26357952/2ab6449025.jpg', CAST(0x0000000000000000 AS DateTime), 1109, 1109, 6, 4, 7, 3, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1273, N'Sonic Mania', N'https://pbs.twimg.com/media/C7EraiOU8AEvBP2.jpg:large', CAST(0x0000A7E100000000 AS DateTime), 1, 1, 4, 4, 5, 2, 6, 3, N'')
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1274, N'Assassins Creed Origins', N'https://images.tcdn.com.br/img/img_prod/575920/assassin_s_creed_origins_xbox_one_274_1_2017071214320', NULL, 8, 8, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1275, N'Assassin''s Creed Brotherhood', N'https://media.takealot.com/covers_tsins/11422365/11422365-1-zoom.jpg', NULL, 8, 8, 4, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1276, N'Assassin''s Creed Revelations', N'https://upload.wikimedia.org/wikipedia/pt/thumb/d/d9/Assassins_Creed_Revelations_Cover.jpg/200px-Ass', NULL, 8, 8, 4, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1277, N'Banjo-Kazooin: Nuts & Bolts', N'https://images-na.ssl-images-amazon.com/images/I/81PdXexRx5L._AC_SX215_.jpg', NULL, 7, 47, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1278, N'Batman: Arkham Origins', N'https://i.pinimg.com/originals/61/3d/06/613d0698f8a723a6eafec1a607269f8a.jpg', NULL, 29, 29, 4, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1279, N'Borderlands', N'https://static.raru.co.za/cover/2015/07/20/2860334-l.jpg?v=1437388088', NULL, 50, 79, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1280, N'Call of Duty 3', N'https://vignette.wikia.nocookie.net/egamia/images/3/37/COD_3box.jpg/revision/latest?cb=2006101306324', NULL, 59, 1122, 4, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1281, N'Call of Duty 4: Modern Warfare', N'https://http2.mlstatic.com/call-of-duty-4-modern-warfare-game-of-the-year-edition-D_NQ_NP_336825-MLB', NULL, 59, 1123, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1282, N'Deus Ex: Human Revolution', N'https://http2.mlstatic.com/deus-ex-human-revolution-xbox-360-ntsc-lacrado-D_NQ_NP_928111-MLB20485403', NULL, 9, 33, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1283, N'DiRT', N'https://wiki.dolphin-emu.org/images/8/8b/Dirt_2_Cover.jpg', NULL, 1124, 1124, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1284, N'DiRT 3', N'http://www.gamer.lv/image/data/xbox/dirt3-cover-x360-eu-1.jpg', NULL, 1124, 1124, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1285, N'DiRT Showdown', N'https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Colin_McRae_Dirt_-_cover.png/220px-Colin_McRae_', NULL, 1124, 1124, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1286, N'DuckTales Remastered', N'https://s3.amazonaws.com/comparegame/thumbnails/38270/large.jpg', NULL, 32, 32, 6, NULL, NULL, NULL, 5, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1287, N'Dust: An Elysian Tail', N'https://gbhbl.com/wp-content/uploads/2013/12/Dust.jpg', NULL, 7, 7, 4, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1288, N'FIFA 17', N'http://thesportek.com/wp-content/uploads/2017/12/FIFA-17-release-date-cover-details-196x3001.jpg', NULL, 3, 3, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1289, N'FIFA 18', N'https://cf2.s3.souqcdn.com/item/2017/09/24/23/95/03/06/item_XL_23950306_35472946.jpg', NULL, 3, 3, 5, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1290, N'Final Fantasy XV', N'https://i.pinimg.com/originals/a0/59/72/a059720353915acfe417908e46ff38bf.jpg', NULL, 9, 9, 6, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1291, N'Forza Horizon 3', N'https://i.pinimg.com/originals/9e/54/bb/9e54bb4ba3bc19fcc09242760c1961c5.png', CAST(0x0000A8A600000000 AS DateTime), 7, 1125, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1292, N'Gears of War 4', N'https://static.raru.co.za/cover/2016/06/09/4766812-l.jpg?v=1480306646', CAST(0x0000A85A00000000 AS DateTime), 7, 1126, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1293, N'Gears of War: Judgment', N'https://4.bp.blogspot.com/-oKofrfgTTF4/V_UUZ0ncZdI/AAAAAAAACEI/BGLnC8y3dfoBVo0R-067q0yWtvnR_D_KgCLcB', CAST(0x0000A58800000000 AS DateTime), 7, 35, 4, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1294, N'Gears of War: Ultimate Edition', N'https://cdn.awsli.com.br/600x700/173/173401/produto/6005606/c66d9a1176.jpg', NULL, 7, 1126, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1295, N'Gone Home', N'/', CAST(0x0000A82F00000000 AS DateTime), 1090, 1127, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1296, N'Halo 5: Guardians', N'https://tesco.scene7.com/is/image/tesco/490-6326_PI_66650MN', CAST(0x0000A7FF00000000 AS DateTime), 7, 27, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1297, N'Injustice: Gods Among Us', N'http://www.zoommobilegaming.com/inetlocate_upload/25126/360_injustice_godsamongus.jpg', CAST(0x0000000000000000 AS DateTime), 29, 28, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1298, N'Joy Ride Turbo', N'', CAST(0x0000000000000000 AS DateTime), 7, 48, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1299, N'Lego Batman', N'https://gamefaqs.akamaized.net/box/6/1/8/84618_front.jpg', CAST(0x0000000000000000 AS DateTime), 29, 40, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1300, N'Lego Marvel Super Heroes 2', N'https://i.annihil.us/u/prod/marvel/i/mg/6/10/591e01b80d5f2/portrait_marvelous.jpg', CAST(0x0000A85200000000 AS DateTime), 29, 40, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1301, N'Life is Strange: Before the Storm', N'https://upload.wikimedia.org/wikipedia/pt/thumb/5/5f/LIS_Before_the_Storm_capa.jpg/260px-LIS_Before_', CAST(0x0000A87400000000 AS DateTime), 9, 1128, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1302, N'Mad Max', N'https://preybox.com/wp-content/uploads/2015/09/mad-max-box.jpg', CAST(0x0000000000000000 AS DateTime), 29, 1129, 6, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1303, N'Metro: Last Light Redux', N'https://images-na.ssl-images-amazon.com/images/I/51eDtq6HLaL._SY445_.jpg', CAST(0x0000000000000000 AS DateTime), 1130, 1131, 6, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1304, N'Middle-earth: Shadow of Mordor', N'https://images.livrariasaraiva.com.br/imagemnet/imagem.aspx/?pro_id=8073916&qld=90&l=430&a=-1', CAST(0x0000A4D900000000 AS DateTime), 29, 1132, 4, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1305, N'Mirror''s Edge', N'https://images-na.ssl-images-amazon.com/images/I/71-2qBrUSlL._AC_SL1500_.jpg', CAST(0x0000000000000000 AS DateTime), 3, 1089, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1306, N'Pac-Man Championship Edition DX', N'https://ips.pepitastore.com/storefront/img/assets/2072312/image/afa41dfcaf6cd6f50284507b4c492843.jpg', CAST(0x0000000000000000 AS DateTime), 60, 60, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1307, N'Peggle', N'https://e.snmc.io/lk/g/x/8a9df7d54f95a52e9680a2753789dee8/5277640', CAST(0x0000000000000000 AS DateTime), 1133, 1133, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1308, N'ReCore', N'https://images-na.ssl-images-amazon.com/images/I/91Fyb8k8ljL._SL1500_.jpg', CAST(0x0000000000000000 AS DateTime), 7, 1134, 6, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1309, N'ScreamRide', N'https://i.ebayimg.com/images/i/112857612724-0-1/s-l1000.jpg', CAST(0x0000000000000000 AS DateTime), 7, 1135, 6, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1310, N'South Park: The Stick of Truth', N'https://http2.mlstatic.com/south-park-the-stick-of-truth-xbox-360-original-D_NQ_NP_984847-MLB2713774', CAST(0x0000A48D00000000 AS DateTime), 8, 1136, 4, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1311, N'Spelunky', N'https://www.pursesavingdeals.com/wp-content/uploads/2018/04/spelunky-xbox-360-download-code.jpg', CAST(0x0000000000000000 AS DateTime), 7, 1137, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1312, N'Sunset Overdrive', N'https://a-static.mlcdn.com.br/1500x1500/game-sunset-overdrive-day-one-xbox-one-microsoft/maurospbrga', CAST(0x0000000000000000 AS DateTime), 7, 1138, 6, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1313, N'Super Meat Boy', N'https://images-na.ssl-images-amazon.com/images/I/719cnsBXV5L.jpg', CAST(0x0000000000000000 AS DateTime), 7, 1139, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1314, N'Tom Clancy''s Ghost Recon Advanced Warfighter 2', N'https://52f4e29a8321344e30ae-0f55c9129972ac85d6b1f4e703468e6b.ssl.cf2.rackcdn.com/products/pictures/', CAST(0x0000000000000000 AS DateTime), 8, 8, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1315, N'WWE 2K16', N'https://cf1.s3.souqcdn.com/item/2015/10/08/92/22/88/8/item_XL_9222888_9884098.jpg', CAST(0x0000000000000000 AS DateTime), 50, 1140, 6, NULL, NULL, NULL, 6, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1316, N'Yaris', N'/', CAST(0x0000000000000000 AS DateTime), 1141, 1142, 6, NULL, NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1317, N'Pro Evoluion Soccer 2013', N'http://imshopping.rediff.com/imgshop/300-400/shopping/pixs/12564/p/Pr_12129107._pro-evolution-pes-so', CAST(0x0000000000000000 AS DateTime), 36, 36, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1318, N'Sleeping Dogs', N'https://m.media-amazon.com/images/M/MV5BM2E0MDQyYWUtMGQ0YS00MDg2LWFjYjgtOWI3MjZlYWNmMGMyXkEyXkFqcGde', CAST(0x0000A20C00000000 AS DateTime), 9, 1143, 4, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1319, N'Closure', N'https://privatestockhair.com/wp-content/uploads/2018/06/silk-closure-654x800-kinky-straight-silk-.jp', CAST(0x0000000000000000 AS DateTime), 1144, 1144, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1320, N'Malicious', N'http://1.bp.blogspot.com/-EShn_NMBXfs/UL4co7d2klI/AAAAAAAAJXA/NRoKTVaFkRs/s1600/malicious_psn1boxart', CAST(0x0000000000000000 AS DateTime), 1145, 1145, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1321, N'The Cave', N'https://images-na.ssl-images-amazon.com/images/I/71otzdghvwL._SX679_.jpg', CAST(0x0000000000000000 AS DateTime), 53, 53, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1322, N'Zombie Tycoon 2', N'https://i2.wp.com/megamecodes.com/wp-content/uploads/2015/06/a8bdea1f-cb71-45f1-b83e-9f9764024290.jp', CAST(0x0000000000000000 AS DateTime), 1107, 1107, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1323, N'Knytt Underground', N'https://s3.amazonaws.com/prod-media.gameinformer.com/styles/review_summary_game_cover/s3/legacy-boxa', CAST(0x0000000000000000 AS DateTime), 1146, 1146, 6, NULL, NULL, NULL, 3, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1324, N'Deus Ex: Human Revolution', N'https://upload.wikimedia.org/wikipedia/pt/thumb/e/ed/Deus_Ex_Human_Revolution_capa.png/270px-Deus_Ex', CAST(0x0000000000000000 AS DateTime), 9, 33, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1325, N'Ratchet & Clank: All 4 One', N'https://vignette.wikia.nocookie.net/ratchet/images/4/4f/Sheepinator_upgrade.jpg/revision/latest?cb=2', CAST(0x0000000000000000 AS DateTime), 13, 1138, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1326, N'Labyrinth Legends', N'http://images.pushsquare.com/games/psvita/dynasty_warriors_8_xtreme_legends_complete_edition/cover_l', CAST(0x0000000000000000 AS DateTime), 1147, 1147, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1327, N'Resident Evil: The Darkside Chronicles', N'https://http2.mlstatic.com/S_610542-MLC25939894237_092017-O.jpg', CAST(0x0000000000000000 AS DateTime), 32, 32, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1328, N'XCOM: Enemy Unknown', N'https://images-na.ssl-images-amazon.com/images/G/01/aplusautomation/vendorimages2KGMKT_XCOM_EW_PS3-w', CAST(0x0000000000000000 AS DateTime), 50, 50, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1329, N'ICO', N'https://img00.deviantart.net/5558/i/2004/326/9/a/ico_box_art_concept_by_rurounikjs.jpg', CAST(0x0000A28200000000 AS DateTime), 4, 1148, 4, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1330, N'LittleBigPlanet Karting', N'https://i.ebayimg.com/thumbs/images/g/MpQAAOSwZ8ZW5X46/s-l225.jpg', CAST(0x0000000000000000 AS DateTime), 4, 61, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1331, N'Jet Set Radio', N'https://i.pinimg.com/736x/6f/7d/b1/6f7db13fd5cc191dd59a9d15ee551c2f--beats-by-jet-set.jpg', CAST(0x0000000000000000 AS DateTime), 1, 1, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1332, N'Saints Row: The Third', N'https://c.76.my/Malaysia/ps3-saints-row-pre-owned-gr31-1712-20-F694741_1.jpg', CAST(0x0000000000000000 AS DateTime), 1130, 1150, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1333, N'Shadow of Colossus', N'https://cdn.shopify.com/s/files/1/1612/9675/products/riosgames-ps3-shadow-of-the-colossus-ps2-classi', CAST(0x0000000000000000 AS DateTime), 4, 1148, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1334, N'The Last of Us', N'https://images-na.ssl-images-amazon.com/images/I/71SKIHikwIL._AC_SX430_.jpg', CAST(0x0000A29B00000000 AS DateTime), 4, 69, 4, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1335, N'Kingdom Hearts 358/2 Days', N'https://vignette.wikia.nocookie.net/disney/images/7/74/Kingdom_Hearts_358-2_Days_Manga_5.png/revisio', CAST(0x0000000000000000 AS DateTime), 9, 9, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1336, N'Kingdom Hearts Final Mix', N'https://gamefaqs.akamaized.net/box/8/6/4/437864_front.jpg', CAST(0x0000A2FE00000000 AS DateTime), 9, 9, 4, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1337, N'Kingdom Hearts Re:Chain of Memories', N'https://upload.wikimedia.org/wikipedia/en/thumb/c/c7/Kingdom_Hearts_HD_2.8_box_art.jpg/220px-Kingdom', CAST(0x0000000000000000 AS DateTime), 9, 9, 6, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1338, N'God of War III Remastered', N'https://images-na.ssl-images-amazon.com/images/I/916ba5gWJBL._SX425_.jpg', CAST(0x0000A7A200000000 AS DateTime), 4, 4, 4, NULL, NULL, NULL, 2, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1339, N'Tales from the Borderlands', N'https://images-na.ssl-images-amazon.com/images/I/81OKJYmDghL._AC_SX215_.jpg', CAST(0x0000000000000000 AS DateTime), 50, 37, 6, NULL, NULL, NULL, 7, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1340, N'Kingdom Hearts Final Mix', N'https://images.livrariasaraiva.com.br/imagemnet/imagem.aspx/?pro_id=9403192&qld=90&l=430&a=-1', CAST(0x0000A89100000000 AS DateTime), 9, 9, 4, NULL, NULL, NULL, 7, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1341, N'Hellblade: Senua''s Sacrifice', N'https://http2.mlstatic.com/S_643204-MLB26562717383_122017-O.jpg', CAST(0x0000A8C700000000 AS DateTime), 52, 52, 4, NULL, NULL, NULL, 7, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1342, N'99vidas', N'', CAST(0x0000A90D00000000 AS DateTime), 1152, 1152, 4, NULL, NULL, NULL, 7, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1343, N'Hue', N'', CAST(0x0000000000000000 AS DateTime), 1153, 1153, 6, NULL, NULL, NULL, 7, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1344, N'Ratchet & Clank', N'https://i.pinimg.com/originals/cf/df/4c/cfdf4c92be8bc75a10ac3df3e2e6cbd8.jpg', CAST(0x0000000000000000 AS DateTime), 4, 1138, 5, NULL, NULL, NULL, 7, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1345, N'Bayonetta 2', N'https://static3.tcdn.com.br/img/img_prod/187970/bayonetta_bayonetta_2_switch_15313_1_20180601211241.', CAST(0x0000A8CC00000000 AS DateTime), 1, 64, 4, NULL, NULL, NULL, 8, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1346, N'Lego City Undercover', N'https://www.discoazul.pt/uploads/media/images/lego-city-undercover-switch-1.jpg', CAST(0x0000A8FD00000000 AS DateTime), 29, 37, 4, NULL, NULL, NULL, 8, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1347, N'The Legend of Zelda Breath of the Wild', N'http://literaturaempauta.com.br/wp-content/uploads/2018/01/Breath-of-the-Wild-Capa-do-Jogo.jpg', CAST(0x0000A85B00000000 AS DateTime), 1154, 1154, 4, NULL, NULL, NULL, 8, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1348, N'Super Mario Odyssey', N'https://i.pinimg.com/originals/e3/91/52/e39152dc1f2daf704e568d71c4cbbbf3.png', CAST(0x0000A85B00000000 AS DateTime), 1154, 1154, 4, NULL, NULL, NULL, 8, NULL, NULL)
INSERT [dbo].[jogos] ([jogo_id], [jogo_nome], [jogo_capa], [jogo_dt], [jogo_publisher], [jogo_desenvolvedora], [pro_id], [loc_id], [jogo_avaliacao], [jogo_status], [pla_id], [mid_id], [jogo_comentario]) VALUES (1349, N'Mario Kart 8', N'https://m.xcite.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/m/a/mario_k', CAST(0x0000000000000000 AS DateTime), 1154, 1154, 5, NULL, NULL, NULL, 8, NULL, NULL)
SET IDENTITY_INSERT [dbo].[jogos] OFF
/****** Object:  StoredProcedure [dbo].[SP_EMPRESA_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_EMPRESA_SALVAR] (
	-- Add the parameters for the stored procedure here
	@emp_id int = 0,
	@emp_nome VARCHAR(100),	 
	@emp_logo VARCHAR(100) = ''	
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @emp_id <> 0
		BEGIN
			UPDATE EMPRESA
			SET emp_nome = @emp_nome,
				emp_logo = @emp_logo
			WHERE emp_id = @emp_id
		END
	
	ELSE
		BEGIN
			INSERT INTO EMPRESA(emp_nome,emp_logo)
			VALUES(@emp_nome,@emp_logo)	
			
			SELECT @emp_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM EMPRESA WHERE emp_id = @emp_id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PROGRESSO_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_PROGRESSO_SALVAR] (
	-- Add the parameters for the stored procedure here
	@pro_id int = 0,
	@pro_nome VARCHAR(100),	 
	@pro_logo VARCHAR(100) = ''	
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @pro_id <> 0
		BEGIN
			UPDATE PROGRESSO
			SET pro_nome = @pro_nome,
				pro_logo = @pro_logo
			WHERE pro_id = @pro_id
		END
	
	ELSE
		BEGIN
			INSERT INTO PROGRESSO(PRO_NOME,PRO_logo)
			VALUES(@pro_nome,@pro_logo)	
			
			SELECT @pro_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM PROGRESSO WHERE pro_id = @pro_id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PLATAFORMA_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_PLATAFORMA_SALVAR] (
	-- Add the parameters for the stored procedure here
	@pla_id int = 0,
	@pla_nome VARCHAR(100),	 
	@pla_logo VARCHAR(100) = '',
	@pla_sigla VARCHAR(50)	 
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @pla_id <> 0
		BEGIN
			UPDATE PLATAFORMA
			SET pla_nome = @pla_nome,
				pla_logo = @pla_logo,
				pla_sigla = @pla_sigla
			WHERE pla_id = @pla_id
		END
	
	ELSE
		BEGIN
			INSERT INTO PLATAFORMA(PLA_NOME,PLA_logo, PLA_SIGLA)
			VALUES(@pla_nome,@pla_logo,@pla_sigla)	
			
			SELECT @pla_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM PLATAFORMA WHERE pla_id = @pla_id
END
GO
/****** Object:  StoredProcedure [dbo].[SP_JOGO_SALVAR]    Script Date: 07/05/2018 16:06:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_JOGO_SALVAR] (
	-- Add the parameters for the stored procedure here
	@jogo_id int = 0,
	@jogo_nome VARCHAR(100),
	@pla_id int, 
	@jogo_publisher int, 
	@jogo_desenvolvedora int, 
	@pro_id int, 
	@jogo_capa VARCHAR(100) = '',
	@jogo_dt DATETIME = null	
	)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    IF @jogo_id <> 0
		BEGIN
			UPDATE jogos
			SET jogo_nome = @jogo_nome,
				pla_id = @pla_id,
				jogo_publisher = @jogo_publisher,
				jogo_desenvolvedora = @jogo_desenvolvedora,
				pro_id = @pro_id,
				jogo_capa = @jogo_capa,
				jogo_dt = @jogo_dt
			WHERE jogo_id = @jogo_id
		END
	
	ELSE
		BEGIN
			INSERT INTO jogos(jogo_nome,pla_id,jogo_publisher,jogo_desenvolvedora,pro_id,jogo_capa,jogo_dt)
			VALUES(@jogo_nome,@pla_id,@jogo_publisher,@jogo_desenvolvedora,@pro_id,@jogo_capa,@jogo_dt)	
			
			SELECT @jogo_id = SCOPE_IDENTITY()		
		END
		
	SELECT * FROM jogos WHERE jogo_id = @jogo_id
END
GO
/****** Object:  Table [dbo].[EMPRESTIMO]    Script Date: 07/05/2018 16:06:02 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_AVALIACAO_AVALIACAO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[AVALIACAO]  WITH CHECK ADD  CONSTRAINT [FK_AVALIACAO_AVALIACAO] FOREIGN KEY([AVA_ID])
REFERENCES [dbo].[AVALIACAO] ([AVA_ID])
GO
ALTER TABLE [dbo].[AVALIACAO] CHECK CONSTRAINT [FK_AVALIACAO_AVALIACAO]
GO
/****** Object:  ForeignKey [FK_EMPRESTIMO_EMPRESTIMO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[EMPRESTIMO]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESTIMO_EMPRESTIMO] FOREIGN KEY([JOGO_ID])
REFERENCES [dbo].[jogos] ([jogo_id])
GO
ALTER TABLE [dbo].[EMPRESTIMO] CHECK CONSTRAINT [FK_EMPRESTIMO_EMPRESTIMO]
GO
/****** Object:  ForeignKey [FK_EMPRESTIMO_PESSOA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[EMPRESTIMO]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESTIMO_PESSOA] FOREIGN KEY([PESS_ID])
REFERENCES [dbo].[PESSOA] ([PESS_ID])
GO
ALTER TABLE [dbo].[EMPRESTIMO] CHECK CONSTRAINT [FK_EMPRESTIMO_PESSOA]
GO
/****** Object:  ForeignKey [FK_jogos_AVALIACAO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_AVALIACAO] FOREIGN KEY([jogo_avaliacao])
REFERENCES [dbo].[AVALIACAO] ([AVA_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_AVALIACAO]
GO
/****** Object:  ForeignKey [FK_jogos_DESENVOLVEDORA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_DESENVOLVEDORA] FOREIGN KEY([jogo_desenvolvedora])
REFERENCES [dbo].[EMPRESA] ([EMP_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_DESENVOLVEDORA]
GO
/****** Object:  ForeignKey [FK_jogos_LOCALIZACAO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_LOCALIZACAO] FOREIGN KEY([loc_id])
REFERENCES [dbo].[LOCALIZACAO] ([LOC_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_LOCALIZACAO]
GO
/****** Object:  ForeignKey [FK_jogos_MIDIA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_MIDIA] FOREIGN KEY([mid_id])
REFERENCES [dbo].[MIDIA] ([MID_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_MIDIA]
GO
/****** Object:  ForeignKey [FK_jogos_PLATAFORMA]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_PLATAFORMA] FOREIGN KEY([pla_id])
REFERENCES [dbo].[PLATAFORMA] ([PLA_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_PLATAFORMA]
GO
/****** Object:  ForeignKey [FK_jogos_PROGRESSO]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_PROGRESSO] FOREIGN KEY([pro_id])
REFERENCES [dbo].[PROGRESSO] ([PRO_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_PROGRESSO]
GO
/****** Object:  ForeignKey [FK_jogos_PUBLISHER]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_PUBLISHER] FOREIGN KEY([jogo_publisher])
REFERENCES [dbo].[EMPRESA] ([EMP_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_PUBLISHER]
GO
/****** Object:  ForeignKey [FK_jogos_STATUS]    Script Date: 07/05/2018 16:06:02 ******/
ALTER TABLE [dbo].[jogos]  WITH CHECK ADD  CONSTRAINT [FK_jogos_STATUS] FOREIGN KEY([jogo_status])
REFERENCES [dbo].[STATUS] ([STA_ID])
GO
ALTER TABLE [dbo].[jogos] CHECK CONSTRAINT [FK_jogos_STATUS]
GO
