﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IList<DomainModel.Database.BugStatus>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<h2>Bug Status List</h2>
	<% Html.Telerik().Grid(Model)
		   .Name("BugStatusList")
		   .Sortable()
		   .Pageable()
		   .Filterable()
		   .Groupable()
		   .Render();
			%>
</asp:Content>
