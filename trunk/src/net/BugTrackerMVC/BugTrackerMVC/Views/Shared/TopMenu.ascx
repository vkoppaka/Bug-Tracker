<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace="Helpers" %>
<div id="loginmenucontainer">
    <%-- renders a login link or the username and a logout link --%>
    <%= Html.LoginLink() %>
</div>
<div id="menucontainer">
    <ul id="menu">
        <%= Html.MenuItem("Home", "Index", "Home") %>
        <%= Html.MenuItem("About Us", "About", "Home")%>
    </ul>
</div>
