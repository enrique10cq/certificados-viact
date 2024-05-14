<div class="table-responsive">
   <table class="table table-hover" id="table_certificados">
      <thead class="">
         <tr class="">
            <th scope="col">Alumno</th>
            <th scope="col">Documento</th>
            <th scope="col">Correo</th>
            <th scope="col">Curso</th>
            <th scope="col">Código</th>
            <th scope="col">Fecha</th>
            <th scope="col">Acciones</th>
         </tr>
      </thead>
      <tbody>
         <?php

         $sql = "SELECT c.id_certificado, CONCAT(a.nombres, ' ', a.apellidos) AS alumno, a.documento, a.correo, c.curso, 
			c.codigo, c.fecha FROM certificado c JOIN alumno a ON c.id_alumno = a.id_alumno";
         $resultado = $conexion->query($sql);

         while ($row = $resultado->fetch_assoc()) {
         ?>
            <tr>
               <td scope="row"><?php echo $row['alumno'] ?></td>
               <td scope="row"><?php echo $row['documento'] ?></td>
               <td scope="row"><?php echo $row['correo'] ?></td>
               <td scope="row"><?php echo $row['curso'] ?></td>
               <td scope="row"><?php echo $row['codigo'] ?></td>
               <td scope="row"><?php echo $row['fecha'] ?></td>
               <td>
                  <button title="Ver detalles del empleado" onclick="verDetallesEmpleado(<?php echo $empleado['id']; ?>)" class="btn btn-success">
                     <i class="bi bi-binoculars"></i>
                  </button>
                  <button title="Editar datos del empleado" onclick="editarEmpleado(<?php echo $empleado['id']; ?>)" class="btn btn-warning">
                     <i class="bi bi-pencil-square"></i>
                  </button>
                  <button title="Eliminar datos del empleado" onclick="eliminarEmpleado(<?php echo $empleado['id']; ?>, '<?php echo $empleado['avatar']; ?>')" class="btn btn-danger"">
							<i class=" bi bi-trash"></i>
                  </button>
               </td>
            </tr>
         <?php } ?>
      </tbody>
   </table>
</div>