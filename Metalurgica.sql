USE [master]
GO
/****** Object:  Database [Metalurgica]    Script Date: 29/09/2021 23:55:36 ******/
CREATE DATABASE [Metalurgica]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Metalurgica', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.PEDROEMANOEL\MSSQL\DATA\Metalurgica.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Metalurgica_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.PEDROEMANOEL\MSSQL\DATA\Metalurgica_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Metalurgica] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Metalurgica].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Metalurgica] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Metalurgica] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Metalurgica] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Metalurgica] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Metalurgica] SET ARITHABORT OFF 
GO
ALTER DATABASE [Metalurgica] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Metalurgica] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Metalurgica] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Metalurgica] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Metalurgica] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Metalurgica] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Metalurgica] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Metalurgica] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Metalurgica] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Metalurgica] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Metalurgica] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Metalurgica] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Metalurgica] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Metalurgica] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Metalurgica] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Metalurgica] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Metalurgica] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Metalurgica] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Metalurgica] SET  MULTI_USER 
GO
ALTER DATABASE [Metalurgica] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Metalurgica] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Metalurgica] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Metalurgica] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Metalurgica] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Metalurgica] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Metalurgica] SET QUERY_STORE = OFF
GO
USE [Metalurgica]
GO
/****** Object:  Table [dbo].[Catalogos]    Script Date: 29/09/2021 23:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalogos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nchar](300) NOT NULL,
	[Setor] [nchar](100) NULL,
	[Imagem] [nchar](500) NULL,
	[IDMaterial] [int] NULL,
	[Detalhes] [nchar](500) NULL,
 CONSTRAINT [PK_Catalogos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 29/09/2021 23:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](80) NOT NULL,
	[QuantidadeClientes] [float] NOT NULL,
	[Cidade] [nvarchar](100) NOT NULL,
	[Estado] [nvarchar](3) NOT NULL,
	[Imagem] [nchar](100) NULL,
 CONSTRAINT [PK__Clientes__3214EC27F40A1719] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contatos]    Script Date: 29/09/2021 23:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contatos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nchar](100) NOT NULL,
	[Email] [nchar](100) NOT NULL,
	[Menssagem] [nchar](1000) NOT NULL,
 CONSTRAINT [PK_Contatos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materiais]    Script Date: 29/09/2021 23:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materiais](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DescricaoMaterial] [nchar](100) NOT NULL,
	[Imagem] [nchar](500) NULL,
 CONSTRAINT [PK_Materiais] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicos]    Script Date: 29/09/2021 23:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NomeServico] [nchar](200) NOT NULL,
	[TipoServico] [nchar](100) NULL,
	[PrazoServico] [nchar](100) NULL,
 CONSTRAINT [PK_Servicos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catalogos] ON 

INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (1, N'Arame recozido                                                                                                                                                                                                                                                                                              ', N'LUVAS                                                                                               ', N'https://www.taqi.com.br/ccstore/v1/images/?source=/file/v2890882166666697331/products/047378.00-arame-recozido-gerdau-16-mm-rolo-1kg.jpg&height=1000&width=1000&quality=1.0                                                                                                                                                                                                                                                                                                                                         ', 1, N'Oferece elevado grau de maleabilidade, facilitando seu trabalho em amarrações de armaduras de concreto armado. É produzido de acordo com a norma ABNT NBR 5589, proporcionando resistência à tração de até 40 kgf/mm². Temos também a opção de arame recozido torcido, ainda mais fácil de trabalhar, pois já vem torcido do jeito que você precisa para otimizar a amarração dos elementos.                                                                                                                        ')
INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (2, N'Barra chata                                                                                                                                                                                                                                                                                                 ', N'PRENSAS                                                                                             ', N'http://d3ugyf2ht6aenh.cloudfront.net/stores/958/831/products/7354095361-aco-5160-tira-20ba4fa6dabd04a30d15928493466082-640-0.jpg                                                                                                                                                                                                                                                                                                                                                                                    ', 3, N'Este produto é extremamente versátil, sendo empregado principalmente em grades e portões, esquadrias, máquinas, implementos agrícolas e rodoviários, e na indústria mecânica em geral                                                                                                                                                                                                                                                                                                                               ')
INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (4, N'Chapa                                                                                                                                                                                                                                                                                                       ', N'AUTOMOVEIS                                                                                          ', N'https://casaserralheiro.com.br/wp-content/uploads/2013/06/chapa-preta-lisa.png                                                                                                                                                                                                                                                                                                                                                                                                                                      ', 1, N'Não pintar antes de ter certeza que a peça encaixa no veículo. Sugerimos colocar a peça primeiro antes de pintar. Se ficar bom, retire a peça e pinte em seguida. Peças para pintar, que foram pintadas, não podem ser devolvidas.                                                                                                                                                                                                                                                                                  ')
INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (5, N'vergalhao                                                                                                                                                                                                                                                                                                   ', N'CONSTRUCAO                                                                                          ', N'https://acomais.com.br/wp-content/uploads/2020/03/vergalh%C3%A3o-ca-50.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                          ', 2, N'O Vergalhão CA50 Soldável de 12 metros, ou barra de aço da METALIZZA é o produto ideal para montar as armaduras que darão suporte para as estruturas de concreto da construção. São essas barras que ficam no interior das lajes, vigas, fundações e colunas/pilares que sustentam todo o peso das casas e edifícios.                                                                                                                                                                                               ')
INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (6, N'Cilindros Pneumáticos                                                                                                                                                                                                                                                                                       ', N'CILINDROS                                                                                           ', N'https://images.tcdn.com.br/img/img_prod/638163/2487_0_20200115122615.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                            ', 3, N'istemas com tamanho reduzido e maior desempenho: com o cilindro compacto ADN-S isso é possível! Extremamente pequeno e leve, oferece desempenho excelente em movimentos pequenos. Isso é garantido pelo corpo de tamanho reduzido em peça única                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (7, N'Tubos                                                                                                                                                                                                                                                                                                       ', N'CILINDROS                                                                                           ', N'https://img.freepik.com/vetores-gratis/pilha-de-tubos-de-aco-isolado_107791-2960.jpg?size=626&ext=jpg                                                                                                                                                                                                                                                                                                                                                                                                               ', 3, N'Utilizados pelas indústrias automotiva, moveleira, de construção civil, serralheria, dentre outras, os tubos com costura apresentam grande variedade de formatos, visando atender às demandas específicas de cada cliente e projeto. Os tubos são soldados pelo processo ERW (HFIW) utilizando matérias-primas de aço carbono laminadas a frio e quente e são aptos para receberem uma camada de pintura.                                                                                                           ')
INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (8, N'Metalon                                                                                                                                                                                                                                                                                                     ', N'PRENSAS                                                                                             ', N'https://acomais.com.br/wp-content/uploads/2020/12/Tubo_Metalon.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                                  ', 1, N'A barra de latão é variada da liga metálica, composta por cobre e zinco, sendo que a quantidade de zinco é determinante para tornar prático e fácil processo de fundição do latão. Se um nível maior de resistência é exigido desta barra outros metais podem ser acrescentados a sua composição, como por exemplo o níquel, o chumbo e o estanho.
                                                                                                                                                                ')
INSERT [dbo].[Catalogos] ([ID], [Nome], [Setor], [Imagem], [IDMaterial], [Detalhes]) VALUES (9, N'Cabo de Aço                                                                                                                                                                                                                                                                                                 ', N'CABOS                                                                                               ', N'https://cdn.leroymerlin.com.br/products/cabo_de_aco_1_4_ate_2416kg_por_metro_vonder_90066004_30cf_600x600.jpg                                                                                                                                                                                                                                                                                                                                                                                                       ', 3, N'Cabo de aço 1/8" revestido suporta até 100kg. Sua construção 6x7 destaca-se pela resistência a corrosão/ferrugem. Possui alma de fibra que garante maior flexibilidade ao cabo. Categoria de resistência do cabo de aço:1770 N/mm²                                                                                                                                                                                                                                                                                  ')
SET IDENTITY_INSERT [dbo].[Catalogos] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([ID], [Nome], [QuantidadeClientes], [Cidade], [Estado], [Imagem]) VALUES (1, N'AutoTravi', 15000, N'Sao Paulo', N'SP', N'AutoTravi.jpg                                                                                       ')
INSERT [dbo].[Clientes] ([ID], [Nome], [QuantidadeClientes], [Cidade], [Estado], [Imagem]) VALUES (3, N'Delikato Móveis', 200, N'Votuporanga', N'SP', N'Delikato Móveis.jpg                                                                                 ')
INSERT [dbo].[Clientes] ([ID], [Nome], [QuantidadeClientes], [Cidade], [Estado], [Imagem]) VALUES (4, N'Outlet Móveis', 150, N'Votuporanga', N'SP', N'Outlet Móveis.jpg                                                                                   ')
INSERT [dbo].[Clientes] ([ID], [Nome], [QuantidadeClientes], [Cidade], [Estado], [Imagem]) VALUES (5, N'Chevrolet', 25000, N'Rio de Janeiro', N'RJ', N'Chevrolet.jpg                                                                                       ')
INSERT [dbo].[Clientes] ([ID], [Nome], [QuantidadeClientes], [Cidade], [Estado], [Imagem]) VALUES (7, N'facchini', 2400, N'Votuporanga', N'SP', N'facchini.jpg                                                                                        ')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Materiais] ON 

INSERT [dbo].[Materiais] ([ID], [DescricaoMaterial], [Imagem]) VALUES (1, N'Metal                                                                                               ', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMV6eDJ8WaNtFhW2CQA-pVfSeSCBKQnAMSQ6NH3rOkqSUOedYwTdcDsVe6AIQGgNlxepk&usqp=CAU                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[Materiais] ([ID], [DescricaoMaterial], [Imagem]) VALUES (2, N'Latao                                                                                               ', N'https://www.srmetais.com.br/arquivos/LoginID_353/Blog/latao2-7635.jpg                                                                                                                                                                                                                                                                                                                                                                                                                                               ')
INSERT [dbo].[Materiais] ([ID], [DescricaoMaterial], [Imagem]) VALUES (3, N'aço                                                                                                 ', N'https://acomais.com.br/wp-content/uploads/2020/07/Barras-de-a%C3%A7o-tipos-e-aplica%C3%A7%C3%B5es.jpg                                                                                                                                                                                                                                                                                                                                                                                                               ')
INSERT [dbo].[Materiais] ([ID], [DescricaoMaterial], [Imagem]) VALUES (4, N'cobre                                                                                               ', N'https://www.noticiasdemineracao.com/w-images/3302817c-a82c-4a33-9681-3fe94de302bf/1/Cobre-480x385.jpg                                                                                                                                                                                                                                                                                                                                                                                                               ')
SET IDENTITY_INSERT [dbo].[Materiais] OFF
GO
SET IDENTITY_INSERT [dbo].[Servicos] ON 

INSERT [dbo].[Servicos] ([ID], [NomeServico], [TipoServico], [PrazoServico]) VALUES (1, N'Corte a fio                                                                                                                                                                                             ', N'Corte                                                                                               ', N'7 Dias                                                                                              ')
INSERT [dbo].[Servicos] ([ID], [NomeServico], [TipoServico], [PrazoServico]) VALUES (2, N'Peças técnicas                                                                                                                                                                                          ', N'Torneamento                                                                                         ', N'Variavel                                                                                            ')
INSERT [dbo].[Servicos] ([ID], [NomeServico], [TipoServico], [PrazoServico]) VALUES (3, N'Acessórios especiais para moldes, matrizes e dispositivos                                                                                                                                               ', N'Torneamento                                                                                         ', N'Variavel                                                                                            ')
INSERT [dbo].[Servicos] ([ID], [NomeServico], [TipoServico], [PrazoServico]) VALUES (4, N'Fabricação de moldes e matrizes                                                                                                                                                                         ', N'Moldes                                                                                              ', N'Variavel                                                                                            ')
INSERT [dbo].[Servicos] ([ID], [NomeServico], [TipoServico], [PrazoServico]) VALUES (5, N'Manutenção e conserto de moldes                                                                                                                                                                         ', N'Manutenção                                                                                          ', N'Variavel                                                                                            ')
INSERT [dbo].[Servicos] ([ID], [NomeServico], [TipoServico], [PrazoServico]) VALUES (6, N'Fabricação de dispositivos                                                                                                                                                                              ', N'Dispositivos                                                                                        ', N'2 Meses                                                                                             ')
INSERT [dbo].[Servicos] ([ID], [NomeServico], [TipoServico], [PrazoServico]) VALUES (7, N'Projetos especiais                                                                                                                                                                                      ', N'Torneamento                                                                                         ', N'Variavel                                                                                            ')
SET IDENTITY_INSERT [dbo].[Servicos] OFF
GO
ALTER TABLE [dbo].[Catalogos]  WITH CHECK ADD  CONSTRAINT [FK_Catalogos_Materiais] FOREIGN KEY([IDMaterial])
REFERENCES [dbo].[Materiais] ([ID])
GO
ALTER TABLE [dbo].[Catalogos] CHECK CONSTRAINT [FK_Catalogos_Materiais]
GO
USE [master]
GO
ALTER DATABASE [Metalurgica] SET  READ_WRITE 
GO
