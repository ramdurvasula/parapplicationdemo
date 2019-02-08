<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
  <script> 
  $(document).ready(function() {
    $('#example').DataTable( {
        columnDefs: [ {
            orderable: false,
            className: 'select-checkbox',
            targets:   0
        } ],
        select: {
            style:    'os',
            selector: 'td:first-child'
        },
        order: [[ 1, 'asc' ]]
    } );
} );
  </script>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
  <h3>Area and Product Information</h3>
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="areaName">Area Name:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="areaName" placeholder="Enter area name" name="areaName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="productName">Product Name:</label>
      <div class="col-sm-4">
        <input type="email" class="form-control" id="productName" placeholder="Enter product name" name="productName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="details" >Area Details:</label>
      <div class="col-sm-4">          
        	  <select id="Areainfo" name="Areainfo" class="form-control">
			  	<option value=""></option>
				<option value="PropertyandCasualty">Property and Casualty</option>
				<option value="GeneralFinancialServices">General Financial Services</option>
				<option value="DataInformationStrategy">Data Information Strategy</option>
				<option value="CustomerCommunication">Customer Communication</option>
				<option value="Tobeadded1">To be added1</option>
				<option value="Tobeadded2">To be added2</option>
			</select>
		<span id="Areainfomsg"></span>
      </div>
    </div>
        <div class="form-group">
      <label class="control-label col-sm-2" for="details">Product Details:</label>
      <div class="col-sm-4">          
        	  <select id="Areainfo" name="Areainfo" class="form-control">
			  	<option value=""></option>
				<option value="Auto">Auto</option>
				<option value="Credit Card">Credit Card</option>
				<option value="Associate">Associate</option>
				<option value="Register">Register</option>
				<option value="Tobeadded1">To be added1</option>
				<option value="Tobeadded2">To be added2</option>
			</select>
		<span id="Areainfomsg"></span>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
    </div>
<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th></th>
                <th>Area</th>
                <th>Product</th>
            </tr>
        </thead>
         <tbody>
            <tr>
                <td></td>
                <td>Property and Casualty</td>
                <td>Auto</td>
            </tr>
            <tr>
                <td></td>
                <td>General Financial Services</td>
                <td>Credit Card</td>
            </tr>
            <tr>
                <td></td>
                <td>Data Information Strategy</td>
                <td>Associate</td>
            </tr>
            <tr>
                <td></td>
                <td>Customer Communication</td>
                <td>Register</td>
            </tr>
        </tbody>
        
    </table>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="button" class="btn btn-default">Edit</button>
        <button type="button" class="btn btn-default">Delete</button>
      </div>
    </div>               
  </form>
</div>

</body>
</html>
