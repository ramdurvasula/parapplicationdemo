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
  <h3>Recruiter Information</h3>
  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="recruiterName">Name:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="recuiterName" placeholder="Enter recruiter name" name="recruiterName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-4">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="recruiterPhone">Phone:</label>
      <div class="col-sm-4">          
        <input type="tel" class="form-control" id="recruiterPhone" placeholder="Enter phone no" name="recruiterPhone">
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
                <th>Name</th>
                <th>Email</th>
                <th>Phone No</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td></td>
                <td>Tiger Nixon</td>
                <td>System@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Garrett Winters</td>
                <td>Accountant@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Ashton Cox</td>
                <td>Junior@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Cedric Kelly</td>
                <td>Senior@gmail.com</td>
                <td>3091234567</td>
            </tr>
<!--             <tr>
                <td></td>
                <td>Airi Satou</td>
                <td>Accountant@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Brielle Williamson</td>
                <td>Integration@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Herrod Chandler</td>
                <td>Sales@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Rhona Davidson</td>
                <td>Integration@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Colleen Hurst</td>
                <td>Javascript@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Sonya Frost</td>
                <td>Software@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Jena Gaines</td>
                <td>Flynn@gmail.com</td>
                <td>3091234567</td>
            </tr>
            <tr>
                <td></td>
                <td>Quinn Flynn</td>
                <td>Flynn@gmail.com</td>
                <td>3091234567</td>
            </tr> -->
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
