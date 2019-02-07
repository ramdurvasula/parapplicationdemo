/**
 * 
 */
$(document).ready(function(){
	
    $("#viewCategoryButton").on("click",function(){
    	$("#viewProductsByCategory").attr('action', $("#contextPath").val()+'/showProductsByCategory');
    	$("#viewProductsByCategory").submit();
    });
    $("#viewPriceRangeButton").on("click",function(){
    	$("#viewProductsByUnitPrice").attr('action', $("#contextPath").val()+'/showProductsByUnitPrice');
    	$("#viewProductsByUnitPrice").submit();
    	$("#showResults").show();
    });
    $('#resultsTable').DataTable();
	$("#addProductButton").click(function(event){
		event.preventDefault();
		var data = {};
		data['productDescription'] = $('#productDescription').val();
		data['unitPrice'] = $('#unitPrice').val();
		data['quantity'] = $('#quantity').val();
		data['category'] = $('#category').val();
		data['productStatus'] = $('#productStatus').val();
		$.ajax({ 
			 	headers: {
			        Accept: "application/json; charset=utf-8",
			        "Content-Type": "application/json; charset=utf-8"
			    },
			    type: "POST",
			    url: $("#contextPath").val()+"/addProduct",
			    data: JSON.stringify(data),
			    contentType: "application/json; charset=utf-8",
			    dataType: "json",
				success : function(response) {
					if(response.validated) {
						$('#statusMessage').html(response.statusMessage);
						$('#statusMessage').addClass("alert alert-success");
					}
					else{
						$("#productdescriptionmsg").html("");
						$("#unitpricemsg").html("");
						$("#quantitymsg").html("");
		          		$("#categorymsg").html("");
		          		$("#productstatusmsg").html("");
		          		
						$.each(response.errorMessages,function(key,value){
							console.log(key + value);
		  	          		if(key=="productDescription") {
		  	          			$("#productdescriptionmsg").html(value);
		  	          		}
		  	          		if(key=="unitPrice") {
		  	          			$("#unitpricemsg").html(value);
		  	          		}
		  	          		if(key=="quantity") {
		  	          			$("#quantitymsg").html(value);
		  	          		}
		  	          		if(key=="category") {
		  	          			$("#categorymsg").html(value);
		  	          		}
		  	          		if(key=="productStatus") {
		  	          			$("#productstatusmsg").html(value);
		  	          		}
			             });
					}
				},
				error : function(xhr, error) {
					$('#statusMessage').html("Error while adding Product records");
					$('#statusMessage').addClass("alert alert-danger");
					console.log("Error Code :"+ xhr.status);
					console.log(error);
				}
		});
	});
	//reset button
	$('#reset').click(function(event){
		$('#productdescriptionmsg').html("");
		$("#unitpricemsg").html("");
		$("#quantitymsg").html("");
		$("#categorymsg").html("");
  		$("#productstatusmsg").html("");
  		$('#statusMessage').removeClass("alert alert-danger");
  		$("#productUpdateButton").prop("disabled",true);
	});
	$('#viewProductButton').click(function(){
		$("#productUpdateButton").prop("disabled",true);

		$.ajax({
			type : "GET",
			url : $("#contextPath").val()+'/getProduct',
			data : "productId=" + $('#viewProductId').val(),
		    contentType: "application/json; charset=utf-8",
			success : function(response){
				if(response.validated) {
					$('#statusMessage').html("");
					$('#statusMessage').removeClass("alert alert-danger");
					
					$('#productId').val(response.productTO.productId);
		            $("#productId").attr("disabled", "disabled"); 
					$('#productDescription').val(response.productTO.productDescription);
					$("#productDescription").attr("disabled", "disabled");
					$('#unitPrice').val(response.productTO.unitPrice);
					$('#quantity').val(response.productTO.quantity);
					$('#category').val(response.productTO.category);
					$("#category").attr("disabled", "disabled");
					$('#productStatus').val(response.productTO.productStatus);
					$("#productUpdateButton").prop("disabled",false);
				}
				else{
					$('#statusMessage').html(response.statusMessage);
					$('#statusMessage').addClass("alert alert-danger");
					
					$('#productId').val("");
					$('#productDescription').val("");
					$('#unitPrice').val("");
					$('#quantity').val("");
					$('#category').val("");
					$('#productStatus').val("");
					$("#productUpdateButton").prop("disabled",true);

				}
			},
			error : function(xhr, error){
				console.log("Error code:" + xhr.status);
				console.log(error);
			}
		});
	});
//	$('#viewCategoryButton').click(function(){
//		$.ajax({
//			type : "GET",
//			url : $("#contextPath").val()+'/getProductsByCategory',
//			data : "category=" + $('#viewCategory').val(),
//			contentType: "application/json; charset=utf-8",
//			success : function(response){
//				if(response.validated) {
//					$('#statusMessage').html("");
//					$('#statusMessage').removeClass("alert alert-danger");
//					
//					$('#productId').val(response.productTOList[1].productId);
//					$('#productDescription').val(response.productTOList.productDescription);
//					$('#unitPrice').val(response.productTOList.unitPrice);
//					$('#quantity').val(response.productTOList.quantity);
//					$('#category').val(response.productTOList.category);
//					$('#productStatus').val(response.productTOList.productStatus);
//					$('.showResults').hide();
////					$("#showResults").hide();
//				}
//				else{
//					$('#statusMessage').html(response.statusMessage);
//					$('#statusMessage').addClass("alert alert-danger");
//					
//					$('#productId').val("");
//					$('#productDescription').val("");
//					$('#unitPrice').val("");
//					$('#quantity').val("");
//					$('#category').val("");
//					$('#productStatus').val("");
//				}
//			},
//			error : function(xhr, error){
//				console.log("Error code:" + xhr.status);
//				console.log(error);
//			}
//		});
//	});
	$("#productUpdateButton").click(function(event){
		event.preventDefault();
		var data = {};
		data['productId'] = $('#productId').val();
		data['productDescription'] = $('#productDescription').val();
		data['unitPrice'] = $('#unitPrice').val();
		data['quantity'] = $('#quantity').val();
		data['category'] = $('#category').val();
		data['productStatus'] = $('#productStatus').val();
		$.ajax({ 
			 	headers: {
			        Accept: "application/json; charset=utf-8",
			        "Content-Type": "application/json; charset=utf-8"
			    },
			    type: "POST",
			    url: $("#contextPath").val()+"/updateProduct",
			    data: JSON.stringify(data),
			    contentType: "application/json; charset=utf-8",
			    dataType: "json",
				success : function(response) {
					if(response.validated) {
						$('#statusMessage').html("Product Information Updated successfully");
						$('#statusMessage').addClass("alert alert-success");
					}
					else{
						$("#productdescriptionmsg").html("");
						$("#unitpricemsg").html("");
						$("#quantitymsg").html("");
		          		$("#categorymsg").html("");
		          		$("#productstatusmsg").html("");
		          		
						$.each(response.errorMessages,function(key,value){
							console.log(key + value);
		  	          		if(key=="productDescription") {
		  	          			$("#productdescriptionmsg").html(value);
		  	          		}
		  	          		if(key=="unitPrice") {
		  	          			$("#unitpricemsg").html(value);
		  	          		}
		  	          		if(key=="quantity") {
		  	          			$("#quantitymsg").html(value);
		  	          		}
		  	          		if(key=="category") {
		  	          			$("#categorymsg").html(value);
		  	          		}
		  	          		if(key=="productStatus") {
		  	          			$("#productstatusmsg").html(value);
		  	          		}
			             });
					}
				},
				error : function(xhr, error) {
					$('#statusMessage').html("Error while updating product information");
					$('#statusMessage').addClass("alert alert-danger");
					console.log("Error Code :"+ xhr.status);
					console.log(error);
				}
		});
	});
});