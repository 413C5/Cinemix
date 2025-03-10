﻿<%@ Page Title="Reserva Boletos" Language="C#" MasterPageFile="~/MasterPageCinemix.master" AutoEventWireup="true" CodeFile="ReservaBoletos.aspx.cs" Inherits="CompraBoletos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h1>Reserva de boletos</h1>
    <table id="infoReserva">
        <tr>
            <td rowspan="3">
                <asp:Image ID="imgPelicula" runat="server"></asp:Image>
            </td>
            <td colspan="2" id="tituloPelicula">
                <asp:Label ID="lblPelicula" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblClasificacion" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblDuracion" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RadioButtonList ID="radHorarios" runat="server" RepeatDirection="Horizontal" CssClass="aspRad"></asp:RadioButtonList>
            </td>
        </tr>
    </table>
    <div id="divReserva">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table id="tablaCompra">
                    <tr>
                        <td>Adulto  $70</td>
                        <td>
                            <asp:TextBox ID="txtBolAdulto" runat="server" Width="25px" Enabled="False"></asp:TextBox></td>
                        <td>
                            <asp:Button ID="btnMasAdulto" runat="server" Text="+" OnClick="btnIncrementa" />
                            <asp:Button ID="btnMenosAdulto" runat="server" Text="-" OnClick="btnDecrementa" /></td>
                        <td rowspan="3">
                            <asp:Panel ID="pnlReserva" runat="server" CssClass="aspPanelReserva" Visible="False">
                                <asp:Label ID="lblInfoReserva" runat="server" CssClass="aspInfoReserva">
                                </asp:Label>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td>Niños   $54</td>
                        <td>
                            <asp:TextBox ID="txtBolNiño" runat="server" Width="25px" Enabled="False"></asp:TextBox></td>
                        <td>
                            <asp:Button ID="btnMasNiño" runat="server" Text="+" OnClick="btnIncrementa" />
                            <asp:Button ID="btnMenosNiño" runat="server" Text="-" OnClick="btnDecrementa" /></td>
                    </tr>
                    <tr>
                        <td>3a Edad $50</td>
                        <td>
                            <asp:TextBox ID="txtBol3aEdad" runat="server" Width="25px" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnMas3aEdad" runat="server" Text="+" OnClick="btnIncrementa" />
                            <asp:Button ID="btnMenos3aEdad" runat="server" Text="-" OnClick="btnDecrementa" /></td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <table id="tablaReserva">
            <tr>
                <td>
                    <asp:Button ID="btnReserva" runat="server" Text="Reserva" OnClick="btnReserva_Click" CssClass="aspBtnReserva" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

