<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://unpkg.com/tailwindcss@2.2.4/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
	
	<%
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	<div class="h-screen flex">
    	<div class="flex w-1/2 bg-gradient-to-tr from-blue-800 to-purple-700 i justify-around items-center">
        	<div>
            	<h1 class="text-white font-bold text-4xl font-sans">Welcome ${username}</h1>
            	<p class="text-white mt-1">The most popular peer to peer lending at SEA</p>
            	<form action="Logout">
					<button type="submit" class="block w-28 bg-white text-indigo-800 mt-4 py-2 rounded-2xl font-bold mb-2" >Logout</button>
				</form>
            	
       	 	</div>
    	</div>
    	<div class="flex w-1/2 justify-center items-center bg-white">
    		
    	</div>
    </div>>	
</body>
</html>