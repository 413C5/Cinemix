<%@ Page Title="Acerca De" Language="C#" MasterPageFile="~/MasterPageCinemix.master" AutoEventWireup="true" CodeFile="AcercaDe.aspx.cs" Inherits="AcercaDe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Sobre Cinemix</h2>
    <p class="parrafos">
        Cinemix es un proyecto para la materia de <b>Soluciones de Programación Móvil</b> en la <b>Universidad del Valle de Mexico</b>.
        En este proyecto se está desarrollando una aplicación ASP.NET en la cual se aplican distintos conceptos de este framework.<br />
        <br />

        Cinemix incorpora el uso de bases de datos con Entity Framework y LINQ para demostrar como se puede aplicar a un ejemplo de un sitio
        web de un cine ficticio en el cual se muestra su cartelera de peliculas y la posibilidad de reservar boletos.<br />
        <br />
    </p>
    <h3>Integrantes de desarrollo</h3>
    <table id="tablaAcerca">
        <tr>
            <td>
                <img src="Imagenes/hombre.png" /></td>
            <td rowspan="2"></td>
        </tr>
        <tr>
            <td>Alejandro González Zárate</td>
        </tr>
        <tr>
            <td rowspan='2' colspan='1'>
                <img src="Imagenes/logo_uvm.png" /></td>
            <td>
                <img src="Imagenes/hombre.png" /></td>
        </tr>
        <tr>
            <td>Marco Antonio García Hernández</td>
        </tr>
        <tr>
            <td>
                <img src="Imagenes/hombre.png" /></td>
            <td rowspan="2"></td>
        </tr>
        <tr>
            <td>Matías Julián Pérez May</td>
        </tr>
    </table>
</asp:Content>

