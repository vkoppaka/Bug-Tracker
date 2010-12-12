<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<h2>
    Quick Links</h2>
<ul id="sidenav">
    <li><a href="/Bug/Create">Add New Bug</a></li>
    <li><a href="/Bug/">Bug List</a></li>
    <li><a href="/Project/">Project List</a></li>
    <li><a href="#">User List</a></li>
    <li>
        <%: Html.ActionLink("Bug Status Management","Index","BugStatus",new {area="Admin"},null) %></li>
    <li><a href="/AccessLevel/">Access Level List</a></li>
</ul>
<h3>
    About Bug Tracker</h3>
<p>
    Bug Tracker is developed using ASP.NET MVC.
    <br />
    For More information on ASP.NET MVC visit-<a href="http://www.asp.net/mvc/">ASP.NET
        MVC</a>
</p>
