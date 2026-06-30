<%@page import="beans.MovieBean"%>

<jsp:useBean id="movieBean" class="beans.MovieBean" scope="page" />

<%
    int movieId = Integer.parseInt(request.getParameter("movieId"));
    movieBean.loadMovie(movieId);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Selected Movie Record</title>
</head>

<body>

<h1>CSD430 Movie Database</h1>

<h2>Selected Movie Record</h2>

<p>
The table below displays the complete movie record selected from the
jordan_movies_data table in the CSD430 database.
</p>

<table border="1" cellpadding="8" cellspacing="0">

    <tr>
        <th>Movie ID</th>
        <th>Title</th>
        <th>Genre</th>
        <th>Release Year</th>
        <th>Rating</th>
        <th>Director</th>
    </tr>

    <tr>
        <td><%= movieBean.getMovieId() %></td>
        <td><%= movieBean.getTitle() %></td>
        <td><%= movieBean.getGenre() %></td>
        <td><%= movieBean.getReleaseYear() %></td>
        <td><%= movieBean.getRating() %></td>
        <td><%= movieBean.getDirector() %></td>
    </tr>

</table>

<br><br>

<a href="index.jsp">Return to Movie Selection</a>

</body>
</html>