<%@page import="java.util.HashMap"%>
<%
    HashMap hm=(HashMap)session.getAttribute("hm");
    if(hm!=null){
        
    
    %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<title>Branch</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style1.css" rel="stylesheet">
<link href="css/bootstrap-table.css" rel="stylesheet">
</head>

<body style="background-color: gainsboro">
	
		
	<br><br>
        <div class="container-fluid">
          
            
             <div class="text-center">
                <div class="btn-group" role="group"  >
  <a href="#" data-target="#signin" data-toggle="modal" type="button" class="btn btn-primary">+ Add Branch</a>
                </div>
           
   
        
               
          </div> 
          <br><br>  
                      <div class="panel panel-warning">
                   <div class="panel-heading">
    <h4 class="panel-title text-center"></h4> 
                </div>
                </div>
         
            
<br><br>
         <div class="row">
        <div class="col-md-12">
        
          
 <div class="panel panel-primary">
      
<div class="panel-heading"><h3 class="panel-title">
        Total Branch<span class="badge"></span> 
                     </h3>
</div>

        <div class="panel-heading"><h3 class="panel-title">
        Total Branch<span class="badge">0</span>
                     </h3>
</div>    
       
    <div class="panel-body">
   
  <table data-toggle="table" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
                <thead>
                <tr>
                    
                    <th data-field="EID" data-sortable="true">#</th>
                   <th data-field="name"  data-sortable="true">Branch Name</th>						       
                    <th data-field="Email" data-sortable="true">Semester</th>
                   <th data-field="Phone" data-sortable="true">Status</th>
                   <th data-field="action" data-sortable="true">action</th>
                  
                  
               </tr>
		 </thead>
                 <tbody>  
                        
                       
                         
          <tr>
              
               <td></td>  
                <td>-</td>    
                 <td>-</td>    
                  <td></td>      
 <td><p><a href="ViewEmpDetailsProcess.jsp?eid=" class="btn btn-primary" role="button">Edit</a>
    <a href="DeleteEmpProcess.jsp?eid=" class="btn btn-primary" role="button">Delete</a></p>
     </td>
                   </tr>
           
           
            
 </tbody>
     </table>
  </div>
 </div>
            
            
        </div>
     </div>
           <!-- MODAL FOR SIGN IN -->
           <div class="modal" id="signin" tabindex="-1" data-backdrop="static"><!--data-keyboard="false" for prevent esc button to dissmiss -->
    <div class="modal-dialog">
       <div class="modal-content">
        <div class="modal-header">
     <button class="close" data-dismiss="modal">&times;</button>
     <h3 class="modal-title">Add</h3>
    </div>
           <form action="addbranch.jsp"   method="post" role="form">
           <div class="modal-body">
              
                        <div class="form-group">
                         <label>Branch</label>
                                    <input type ="text" name="branch" class="form-control" placeholder="Branch" required>
                            </div>

                            <div class="form-group">
                                    <label>Semester</label>
                                    <input type ="text" name="semester" class="form-control" placeholder="Semester" required>
                            </div>
                            <div class="form-group">
                                    <label>Status</label>
                                    <!--Blue select-->
<select class="form-control dropdown-primary">
  <option value="Active">Active</option>
  <option value="In Active">In Active</option>
  
</select>

<!--/Blue select-->
                            </div>
        
              
               
           </div>
           <div class="modal-footer">
               <button type="submit" class="btn btn-primary pull-left">ADD</button>
               <button type="reset" class="btn btn-default pull-left">Reset</button>
     <div class="form-group pull-right">
          
    
            
           </div>
            </form>
          
           
    </div> 
        
    </div>
</div>
        </div>
        
       <script>
        $(document).ready(function() {
$('.mdb-select').materialSelect();
});
       </script>
 <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-table.js"></script>
		
</body>

</html>
<% }else{
session.setAttribute("msg","Please !! Login First!!!");
response.sendRedirect("home.jsp");
}
%>