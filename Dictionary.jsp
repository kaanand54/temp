<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dictionary.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Dictionary</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>
    <%
    DummyDB db = new DummyDB();
    %>>
    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-6">
					<img alt="Bootstrap Image Preview" style="height: 200px;width: 300px" src="https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/10369569_345297092296037_1553020004398161745_n.jpg?oh=81c413f0aea08631e37240f4bd18bdd2&oe=587DDFB3" class="img-circle">
				</div>
				<div class="col-md-6">
				<h1> Dictionary</h1>
				</div>
			</div>
			<div align="center">
			<form role="form" class="form-inline" >
				<div class="form-group">
					<input type="text" placeholder="start typing the word.........." size="55" style="align: center" class="form-control" name="country" id="exampleInputEmail1" >
						<button type="submit"  class="btn btn-default">
							Search
						</button>
				</div>
			</form>
			
			
			
			<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			
			
		
<%
	
    //System.out.println("hi");

	String query =request.getParameter("country");
	if(query!=null  &&  query.length()!=0  ){
	
	List<String> countries = db.getData(query);

	Iterator<String> iterator = countries.iterator();
	boolean flag=true;
	%>
	<h2>
				Definitions of <i style="color: blue"><%=query %></i>
	</h2>
	<%
	while(iterator.hasNext()) {
		String country = (String)iterator.next();
		if(flag){
		%>
		   <div class="panel-footer">
					<%=country %>
				</div>  
		<%}else{
			
			%>
			<div class="panel-body">
					<%=country %>
				</div>
			<%
			
		}flag=!flag;
	}
    }
	
%></div>
	</div>
</div>
			
			
			
			</div>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>
