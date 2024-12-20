USE [BdAndreaExpress]
GO
/****** Object:  Table [dbo].[TbAutobus]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbAutobus](
	[idAutobus] [int] IDENTITY(1,1) NOT NULL,
	[idTipoModelo] [int] NOT NULL,
	[idTipoMarca] [int] NOT NULL,
	[idChofer] [int] NOT NULL,
	[numeroIdentificacion] [varchar](50) NOT NULL,
	[capacidad] [float] NOT NULL,
	[combustible] [varchar](50) NOT NULL,
	[añoFabricacion] [varchar](25) NOT NULL,
	[placa] [varchar](10) NOT NULL,
 CONSTRAINT [PK_TbAutobus] PRIMARY KEY CLUSTERED 
(
	[idAutobus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbBoleto]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbBoleto](
	[idBoleto] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[numeroBoleta] [varchar](50) NOT NULL,
	[tipoPago] [varchar](50) NOT NULL,
	[origen] [varchar](50) NOT NULL,
	[destino] [varchar](50) NOT NULL,
	[asiento] [varchar](50) NOT NULL,
	[horaSalida] [varchar](50) NOT NULL,
	[fechaSalida] [varchar](50) NOT NULL,
	[vendedor] [varchar](50) NOT NULL,
	[cliente] [varchar](50) NOT NULL,
	[dni] [varchar](8) NOT NULL,
	[placa] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbBoleto] PRIMARY KEY CLUSTERED 
(
	[idBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbChofer]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbChofer](
	[idChofer] [int] IDENTITY(1,1) NOT NULL,
	[nombreChofer] [varchar](50) NOT NULL,
	[edad] [float] NOT NULL,
	[direccion] [varchar](25) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[licenciaConducir] [varchar](50) NOT NULL,
	[fechaContra] [date] NOT NULL,
 CONSTRAINT [PK_TbChofer] PRIMARY KEY CLUSTERED 
(
	[idChofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbCliente]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbCliente](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[dni] [char](8) NOT NULL,
 CONSTRAINT [PK_TbCliente] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbEmpleado]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbEmpleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[dni] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[nivelEducacion] [varchar](50) NOT NULL,
	[telefono] [varchar](9) NOT NULL,
	[email] [varchar](50) NULL,
	[fechaIngreso] [varchar](50) NOT NULL,
	[estadoCivil] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbEmpleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPasajes]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPasajes](
	[idPasaje] [int] IDENTITY(1,1) NOT NULL,
	[idBoleto] [int] NOT NULL,
	[idRuta] [int] NOT NULL,
	[idChofer] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
 CONSTRAINT [PK_TbPasajes] PRIMARY KEY CLUSTERED 
(
	[idPasaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbPermiso]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbPermiso](
	[idPermiso] [int] NOT NULL,
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[operacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbPermiso] PRIMARY KEY CLUSTERED 
(
	[idPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbReporteVentas]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbReporteVentas](
	[idReporte] [int] IDENTITY(1,1) NOT NULL,
	[fechaVenta] [date] NOT NULL,
	[tipoOperacion] [varchar](50) NOT NULL,
	[monto] [float] NOT NULL,
	[producto] [varchar](50) NOT NULL,
	[precio] [float] NOT NULL,
	[importe] [float] NOT NULL,
	[idBoleto] [int] NULL,
 CONSTRAINT [PK_TbReportesVentas] PRIMARY KEY CLUSTERED 
(
	[idReporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbRuta]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbRuta](
	[idRuta] [int] IDENTITY(1,1) NOT NULL,
	[origen] [varchar](50) NOT NULL,
	[horarios] [varchar](50) NOT NULL,
	[tarifas] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbRuta] PRIMARY KEY CLUSTERED 
(
	[idRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTipoMarca]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTipoMarca](
	[idTipoMarca] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbTipoMarca] PRIMARY KEY CLUSTERED 
(
	[idTipoMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbTipoModelo]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbTipoModelo](
	[idTipoModelo] [int] IDENTITY(1,1) NOT NULL,
	[modelo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbTipoModelo] PRIMARY KEY CLUSTERED 
(
	[idTipoModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TbUsuario]    Script Date: 10/07/2024 11:31:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TbUsuario](
	[idUsuario] [int] NOT NULL,
	[nombreUsuario] [varchar](50) NOT NULL,
	[contraseña] [varchar](50) NOT NULL,
	[rol] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TbUsuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TbAutobus]  WITH CHECK ADD  CONSTRAINT [FK_TbAutobus_TbChofer] FOREIGN KEY([idChofer])
REFERENCES [dbo].[TbChofer] ([idChofer])
GO
ALTER TABLE [dbo].[TbAutobus] CHECK CONSTRAINT [FK_TbAutobus_TbChofer]
GO
ALTER TABLE [dbo].[TbAutobus]  WITH CHECK ADD  CONSTRAINT [FK_TbAutobus_TbTipoMarca] FOREIGN KEY([idTipoMarca])
REFERENCES [dbo].[TbTipoMarca] ([idTipoMarca])
GO
ALTER TABLE [dbo].[TbAutobus] CHECK CONSTRAINT [FK_TbAutobus_TbTipoMarca]
GO
ALTER TABLE [dbo].[TbAutobus]  WITH CHECK ADD  CONSTRAINT [FK_TbAutobus_TbTipoModelo] FOREIGN KEY([idTipoModelo])
REFERENCES [dbo].[TbTipoModelo] ([idTipoModelo])
GO
ALTER TABLE [dbo].[TbAutobus] CHECK CONSTRAINT [FK_TbAutobus_TbTipoModelo]
GO
ALTER TABLE [dbo].[TbBoleto]  WITH CHECK ADD  CONSTRAINT [FK_TbBoleto_TbUsuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[TbUsuario] ([idUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TbBoleto] CHECK CONSTRAINT [FK_TbBoleto_TbUsuario]
GO
ALTER TABLE [dbo].[TbEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_TbEmpleado_TbUsuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[TbUsuario] ([idUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TbEmpleado] CHECK CONSTRAINT [FK_TbEmpleado_TbUsuario]
GO
ALTER TABLE [dbo].[TbPasajes]  WITH CHECK ADD  CONSTRAINT [FK_TbPasajes_TbBoleto] FOREIGN KEY([idBoleto])
REFERENCES [dbo].[TbBoleto] ([idBoleto])
GO
ALTER TABLE [dbo].[TbPasajes] CHECK CONSTRAINT [FK_TbPasajes_TbBoleto]
GO
ALTER TABLE [dbo].[TbPasajes]  WITH CHECK ADD  CONSTRAINT [FK_TbPasajes_TbChofer] FOREIGN KEY([idChofer])
REFERENCES [dbo].[TbChofer] ([idChofer])
GO
ALTER TABLE [dbo].[TbPasajes] CHECK CONSTRAINT [FK_TbPasajes_TbChofer]
GO
ALTER TABLE [dbo].[TbPasajes]  WITH CHECK ADD  CONSTRAINT [FK_TbPasajes_TbCliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[TbCliente] ([idCliente])
GO
ALTER TABLE [dbo].[TbPasajes] CHECK CONSTRAINT [FK_TbPasajes_TbCliente]
GO
ALTER TABLE [dbo].[TbPasajes]  WITH CHECK ADD  CONSTRAINT [FK_TbPasajes_TbRuta] FOREIGN KEY([idRuta])
REFERENCES [dbo].[TbRuta] ([idRuta])
GO
ALTER TABLE [dbo].[TbPasajes] CHECK CONSTRAINT [FK_TbPasajes_TbRuta]
GO
ALTER TABLE [dbo].[TbPermiso]  WITH CHECK ADD  CONSTRAINT [FK_TbPermiso_TbUsuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[TbUsuario] ([idUsuario])
GO
ALTER TABLE [dbo].[TbPermiso] CHECK CONSTRAINT [FK_TbPermiso_TbUsuario]
GO
ALTER TABLE [dbo].[TbReporteVentas]  WITH CHECK ADD  CONSTRAINT [FK_TbReporteVentas_TbBoleto] FOREIGN KEY([idBoleto])
REFERENCES [dbo].[TbBoleto] ([idBoleto])
GO
ALTER TABLE [dbo].[TbReporteVentas] CHECK CONSTRAINT [FK_TbReporteVentas_TbBoleto]
GO
