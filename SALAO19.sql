USE [master]
GO
/****** Object:  Database [SALAO2019]    Script Date: 23/06/2019 23:59:37 ******/
CREATE DATABASE [SALAO2019]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SALAO2019', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SALAO2019.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SALAO2019_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SALAO2019_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SALAO2019] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SALAO2019].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SALAO2019] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SALAO2019] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SALAO2019] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SALAO2019] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SALAO2019] SET ARITHABORT OFF 
GO
ALTER DATABASE [SALAO2019] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SALAO2019] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SALAO2019] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SALAO2019] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SALAO2019] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SALAO2019] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SALAO2019] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SALAO2019] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SALAO2019] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SALAO2019] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SALAO2019] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SALAO2019] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SALAO2019] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SALAO2019] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SALAO2019] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SALAO2019] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SALAO2019] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SALAO2019] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SALAO2019] SET  MULTI_USER 
GO
ALTER DATABASE [SALAO2019] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SALAO2019] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SALAO2019] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SALAO2019] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SALAO2019] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SALAO2019] SET QUERY_STORE = OFF
GO
USE [SALAO2019]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/06/2019 23:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](35) NOT NULL,
	[aniversario] [datetime] NULL,
	[telefone] [varchar](35) NULL,
	[celular] [varchar](35) NULL,
	[endereco] [varchar](150) NULL,
	[numero] [varchar](25) NULL,
	[bairro] [varchar](50) NULL,
	[cidade] [varchar](25) NULL,
	[uf] [varchar](2) NULL,
	[cep] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 23/06/2019 23:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nomeProd] [varchar](45) NULL,
	[linha] [varchar](30) NULL,
	[marca] [varchar](30) NULL,
	[quantidade] [int] NULL,
	[valorProd] [float] NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servico]    Script Date: 23/06/2019 23:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[valorServ] [float] NOT NULL,
 CONSTRAINT [PK_Servico] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 23/06/2019 23:59:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venda](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [datetime] NOT NULL,
	[cliente] [int] NOT NULL,
	[servico] [int] NOT NULL,
	[produto] [int] NOT NULL,
	[quantidade] [int] NOT NULL,
 CONSTRAINT [PK_Servico_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([id], [nome], [aniversario], [telefone], [celular], [endereco], [numero], [bairro], [cidade], [uf], [cep]) VALUES (1, N'teste', CAST(N'1753-01-01T00:00:00.000' AS DateTime), N'00000000000', N'00000000', N'teste', N'000', N'teste', N'teste', N'te', 0)
INSERT [dbo].[Cliente] ([id], [nome], [aniversario], [telefone], [celular], [endereco], [numero], [bairro], [cidade], [uf], [cep]) VALUES (2, N'Clarice Tânia Nascimento', CAST(N'1940-08-18T00:00:00.000' AS DateTime), N'1838122227', N'18988961964', N'Rua Diogo Hernandez', N'793', N'Jardim Eldorado', N'Assis', N'SP', 19803400)
INSERT [dbo].[Cliente] ([id], [nome], [aniversario], [telefone], [celular], [endereco], [numero], [bairro], [cidade], [uf], [cep]) VALUES (3, N'Bento José Lopes', CAST(N'1966-02-22T00:00:00.000' AS DateTime), N'1828266852', N'18999091444', N'Rua Sebastião da Silva Leite', N'433', N'Vila Rosangela', N'Assis', N'SP', 19814370)
INSERT [dbo].[Cliente] ([id], [nome], [aniversario], [telefone], [celular], [endereco], [numero], [bairro], [cidade], [uf], [cep]) VALUES (4, N'Sabrina Patrícia Ramos', CAST(N'1958-02-27T00:00:00.000' AS DateTime), N'1839569840', N'18985592115', N'Rua Viriato Corrêa', N'726', N'Vila Ribeiro', N'Assis', N'SP', 19802162)
INSERT [dbo].[Cliente] ([id], [nome], [aniversario], [telefone], [celular], [endereco], [numero], [bairro], [cidade], [uf], [cep]) VALUES (5, N'Silvana Ester Ribeiro', CAST(N'1967-07-10T00:00:00.000' AS DateTime), N'1836622821', N'18986969934', N'Rua Antonio da Silva Vieira', N'493', N'Centro', N'Cândido Mota', N'SP', 19880970)
INSERT [dbo].[Cliente] ([id], [nome], [aniversario], [telefone], [celular], [endereco], [numero], [bairro], [cidade], [uf], [cep]) VALUES (6, N'Jennifer Stefany Assunção', CAST(N'1997-04-25T00:00:00.000' AS DateTime), N'1827484981', N'18982243634', N'Rua Antonio da Silva Vieira', N'336', N'Centro', N'Cândido Mota', N'SP', 19880970)
INSERT [dbo].[Cliente] ([id], [nome], [aniversario], [telefone], [celular], [endereco], [numero], [bairro], [cidade], [uf], [cep]) VALUES (7, N'Beatriz Cláudia Fogaça', CAST(N'1991-03-10T00:00:00.000' AS DateTime), N'1836090952', N'18999564946', N'Rua Querino Leme da Silva', N'702', N'Santa Cruz da Boa Vista', N'Maracaí', N'SP', 19840971)
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (1, N'teste', N'teste', N'teste', 0, 0)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (2, N'Máscara de Hidratação Inoar - 1000g', N'Mask', N'Inoar', 9, 62.900001525878906)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (3, N'Máscara de Reconstrução L''Oréal - 500g', N'Expert Absolut Repair', N'L''Oréal Professionnel', 5, 265.89999389648438)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (4, N'Shampoo Inoar - 1000ml', N'Argan Oil System', N'Inoar', 12, 53.900001525878906)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (5, N'Shampoo Redken - 1000ml', N'All Soft', N'Redken', 12, 268.89999389648438)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (6, N'Condicionador L''Oréal - 1500ml', N'Expert Absolut Repair', N'L''Oréal Professionnel', 3, 351.89999389648438)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (7, N'Condicionador Inoar - 1000ml', N'Argan Oil System', N'Inoar', 12, 53.900001525878906)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (8, N'Shampoo Neutro Inoar - 1000ml', N'Herbal Solution', N'Inoar', 12, 37.900001525878906)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (9, N'Shampoo Alfaparf - 1000ml', N'Semi di Lino Diamante', N'Alfaparf', 12, 130.89999389648438)
INSERT [dbo].[Produto] ([id], [nomeProd], [linha], [marca], [quantidade], [valorProd]) VALUES (10, N'Condicionador Redken - 1000ml', N'All Soft', N'Redken', 12, 283.89999389648438)
SET IDENTITY_INSERT [dbo].[Produto] OFF
SET IDENTITY_INSERT [dbo].[Servico] ON 

INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (1, N'teste', 0)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (2, N'Corte Masculino', 40)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (3, N'Corte Feminino', 75)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (4, N'Escova', 50)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (5, N'Penteado', 80)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (6, N'Penteado Noiva', 200)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (7, N'Hidratação', 60)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (8, N'Tintura', 80)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (9, N'Escova definitiva', 450)
INSERT [dbo].[Servico] ([id], [descricao], [valorServ]) VALUES (10, N'Alisamento Fotônico', 500)
SET IDENTITY_INSERT [dbo].[Servico] OFF
SET IDENTITY_INSERT [dbo].[Venda] ON 

INSERT [dbo].[Venda] ([id], [data], [cliente], [servico], [produto], [quantidade]) VALUES (1, CAST(N'1753-01-01T22:23:42.000' AS DateTime), 1, 1, 1, 0)
INSERT [dbo].[Venda] ([id], [data], [cliente], [servico], [produto], [quantidade]) VALUES (2, CAST(N'2019-06-23T22:57:51.213' AS DateTime), 4, 7, 6, 1)
INSERT [dbo].[Venda] ([id], [data], [cliente], [servico], [produto], [quantidade]) VALUES (3, CAST(N'2019-06-23T22:59:54.173' AS DateTime), 2, 3, 2, 1)
SET IDENTITY_INSERT [dbo].[Venda] OFF
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Cliente] FOREIGN KEY([cliente])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Cliente]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Produto] FOREIGN KEY([produto])
REFERENCES [dbo].[Produto] ([id])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Produto]
GO
ALTER TABLE [dbo].[Venda]  WITH CHECK ADD  CONSTRAINT [FK_Venda_Servico] FOREIGN KEY([servico])
REFERENCES [dbo].[Servico] ([id])
GO
ALTER TABLE [dbo].[Venda] CHECK CONSTRAINT [FK_Venda_Servico]
GO
USE [master]
GO
ALTER DATABASE [SALAO2019] SET  READ_WRITE 
GO
