<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
     <link rel="stylesheet" href="<%=request.getContextPath()%>/css/panel.css">
</head>
<body>
	<header class="dashboard-header">
        <div class="logo">
            <a href="#">
	         	<img alt="logo" src="<%=request.getContextPath()%>/images/logo.png"
	         		width="50" height="50">
	         </a>
        </div>
        <div class="user-info">
        	<img alt="logo" src="<%=request.getContextPath()%>/images/usuario.png" class="user-image">
	         <div class="user-name">
                <span><%=request.getParameter("email") %></span>
                <i class="fas fa-chevron-down"></i>
                <ul class="dropdown-menu">
                    <li><a href="#">Perfil</a></li>
                    <li><a href="<%=request.getContextPath()%>/index.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </header>
    <script src="<%=request.getContextPath()%>/js/panel.js"></script>
    
    <div class="dashboard-container">
    	<aside class="sidebar">
            <ul>
                <li><a href="?opcionPanel=roles"><i class="fas fa-user-shield"></i> Roles</a></li>
                <li><a href="?opcionPanel=usuarios"><i class="fas fa-users"></i> Usuarios</a></li>
                <li><a href="?opcionPanel=cuestionarios"><i class="fas fa-clipboard-list"></i> Cuestionarios</a></li>
                <li><a href="?opcionPanel=perfil"><i class="fas fa-user"></i> Perfil</a></li>
            </ul>
        </aside>
        <main class="content">
            <%
                String vistaDelPanel = request.getParameter("opcionPanel");
                if ("roles".equals(vistaDelPanel)) {
            %>
                <h2>Roles</h2>
                <div class="button-container">
			        <button class="create-button">
			            <i class="fas fa-plus"></i>
			            Crear
			        </button>
			    </div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre del Rol</th>
                            <th>DescripciÃ³n</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Administrador</td>
                            <td>Control total del sistema</td>
                            <td>
			                    <a href="#" class="edit-link"><i class="fas fa-edit"></i> </a>
			                    <a href="#" class="delete-link"><i class="fas fa-trash-alt"></i> </a>
			                </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Editor</td>
                            <td>Puede editar contenido</td>
                            <td>
			                    <a href="#" class="edit-link"><i class="fas fa-edit"></i> </a>
			                    <a href="#" class="delete-link"><i class="fas fa-trash-alt"></i> </a>
			                </td>
                        </tr>
                    </tbody>
                </table>
            <%
                } else if ("usuarios".equals(vistaDelPanel)) {
            %>
                <h2>Usuarios</h2>
                <div class="button-container">
			        <button class="create-button">
			            <i class="fas fa-plus"></i>
			            Crear
			        </button>
			    </div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre de Usuario</th>
                            <th>Email</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>harim</td>
                            <td>harim@gmail.com</td>
                            <td>
			                    <a href="#" class="edit-link"><i class="fas fa-edit"></i> </a>
			                    <a href="#" class="delete-link"><i class="fas fa-trash-alt"></i> </a>
			                </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>ady</td>
                            <td>ady@gmail.com</td>
                            <td>
			                    <a href="#" class="edit-link"><i class="fas fa-edit"></i> </a>
			                    <a href="#" class="delete-link"><i class="fas fa-trash-alt"></i> </a>
			                </td>
                        </tr>
                    </tbody>
                </table>
            <%
                } else if ("cuestionarios".equals(vistaDelPanel)) {
            %>
                <h2>Cuestionarios</h2>
                <div class="button-container">
			        <button class="create-button">
			            <i class="fas fa-plus"></i>
			            Crear
			        </button>
			    </div>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>TÃ­tulo</th>
                            <th>Fecha de CreaciÃ³n</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Cuestionario de Inteligencia Emocional</td>
                            <td>2024-08-12</td>
                            <td>
			                    <a href="#" class="edit-link"><i class="fas fa-edit"></i> </a>
			                    <a href="#" class="delete-link"><i class="fas fa-trash-alt"></i> </a>
			                </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Cuestionario de Habilidades Sociales</td>
                            <td>2024-08-11</td>
                            <td>
			                    <a href="#" class="edit-link"><i class="fas fa-edit"></i> </a>
			                    <a href="#" class="delete-link"><i class="fas fa-trash-alt"></i> </a>
			                </td>
                        </tr>
                    </tbody>
                </table>
            <%
                } else if ("perfil".equals(vistaDelPanel)) {
            %>
                <h2>Perfil</h2>
                <p>AquÃ­ se mostrarÃ­a la informaciÃ³n del perfil del usuario.</p>
            <%
                } else {
            %>
                <div class="welcome-container">
			        <h1>Bienvenido, <%=request.getParameter("email") %></h1>
			        <p>Ingreso exitoso.</p>
			    </div>
            <%
                }
            %>
        </main>
    </div>
</body>
</html>