<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>

<title>Registra Proveedor</title>
</head>
<body>

<div class="container">
<h1>Registra Proveedor</h1>

	<c:if test="${sessionScope.MENSAJE != null}">
		<div class="alert alert-success fade in" id="success-alert">
		 <a href="#" class="close" data-dismiss="alert">&times;</a>
		 <strong>${sessionScope.MENSAJE}</strong>
		</div>
	</c:if>
	<c:remove var="MENSAJE" />

	<form action="registraProveedor" id="id_form" method="post"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_raz_social_proveedor">raz_social_ proveedor</label>
				<input class="form-control" type="text" id="id_raz_social_proveedor" name="raz_social_proveedor" placeholder="Ingrese la raz_social_proveedor" type="text">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_dir_proveedor">dir_ proveedor</label>
				<input class="form-control" id="id_dir_proveedor" name="dir_proveedor" placeholder="Ingrese la dir_proveedor" type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_ruc_proveedor">ruc_ proveedor</label>
				<input class="form-control" id="id_ruc_proveedor" name="ruc_proveedor" placeholder="Ingrese el ruc_proveedor" type="text" />
			</div>
			<div class="form-group">
				<label class="control-label" for="id_fec_reg_proveedor">fec_reg_ proveedor</label>
				<input class="form-control" id="id_fec_reg_proveedor" name="fec_reg_proveedor" placeholder="Ingrese la fec_reg_proveedor" type="text"/>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_categoria">Categoria</label>
				<select id="id_categoria" name="categoria.idCategoria" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Proveedor</button>
			</div>
	</form>
</div>

<script type="text/javascript">
$.getJSON("cargaCategoriaProveedor", {}, function(data){
	$.each(data, function(index,item){
		$("#id_categoria").append("<option value="+item.idCategoria +">"+ item.nombre +"</option>");
	});
});
</script>

<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

<script type="text/javascript">

$('#id_form').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
            
    },
    fields: {
    	id_raz_social_proveedor: {
    		selector : '#id_raz_social_proveedor',
            validators: {
            	notEmpty: {
                    message: 'La razon social es un campo obligatorio'
                },
            	regexp: {
                    regexp: /^[a-zA-Z·ÈÌÛ˙¡…Õ”⁄ÒN	]{3,40}$/,
                    message: 'La razon social debe tener de 3 a 40 letras'
                }
            }
        },
        id_dir_proveedor: {
    		selector : '#id_dir_proveedor',
            validators: {
                notEmpty: {
                    message: 'La direccion es un campo obligatorio'
                },
               
                stringLength :{
                	message:'La direccion es de 3 a 40 caracteres',
                	min : 3,
                	max : 40
                }
            }
        },
        id_ruc_proveedor: {
    		selector : '#id_ruc_proveedor',
            validators: {
            	notEmpty: {
                    message: 'El RUC es un campo obligatorio'
                },
        	regexp: {
	            regexp: /^[0-9]{11}$/,
	            message: 'El RUC debe ser de 11 digitos'
        		}
            }
        },
        id_fec_reg_proveedor: {
        	selector : '#id_fec_reg_proveedor',
            validators: {
        	date: {
                format: 'YYYY-MM-DD',
                message: 'El formato de la fecha es YYYY-MM-DD'
            }
        }
        }
    } 
    
});
</script>

<script type="text/javascript">
$("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>

</body>
</html>




