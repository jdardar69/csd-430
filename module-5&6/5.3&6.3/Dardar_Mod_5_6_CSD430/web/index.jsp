<%@page import="java.util.ArrayList"%>
<%@page import="beans.MovieBean"%>

<jsp:useBean id="movieBean" class="beans.MovieBean" scope="page" />

<%
    ArrayList<Integer> movieIds = movieBean.getMovieIds();
%>

<!DOCTYPE html>
<html>
<head>
    <title>CSD430 Movie Database</title>
</head>

<body>

<h1>CSD430 Movie Database</h1>

<h2>Modules 5.3 & 6.3 Project Part 1</h2>

<h3>Jordan Dardar</h3>

<p>
This application demonstrates the use of a JavaBean, JDBC, JSP, and MySQL.
Select a Movie ID from the list below to display the corresponding movie record stored in the CSD430 database.
</p>

<form action="displayMovie.jsp" method="post">

    <label for="movieId">Select Movie ID:</label>

    <select name="movieId" id="movieId">
        <%
            for(Integer id : movieIds){
        %>
            <option value="<%=id%>"><%=id%></option>
        <%
            }
        %>
    </select>

    <br><br>

    <input type="submit" value="Display Movie">

</form>

</body>
</html>