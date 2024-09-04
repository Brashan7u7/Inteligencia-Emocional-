<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inteligencia Emocional</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css">
</head>
<body>

    

	<jsp:include page="vista/componentes/header.jsp"></jsp:include>
    <section class="hero">
        <div class="hero-content">
            <h1>Desarrolla tu Inteligencia Emocional</h1>
            <p>Mejora tu bienestar y tus relaciones interpersonales a través de la inteligencia emocional.</p>
            <a href="#contact" class="cta-button">Empieza Ahora</a>
        </div>
    </section>

    <section id="about">
        <div class="container">
            <h2>¿Qué es la Inteligencia Emocional?</h2>
            <p>La inteligencia emocional es la capacidad de entender, usar y gestionar tus propias emociones de manera positiva para aliviar el estrés, comunicarte de manera efectiva, empatizar con los demás, superar desafíos y desactivar conflictos.</p>
        </div>
    </section>

    <section id="services">
        <div class="container">
            <h2>Nuestros Servicios</h2>
            <div class="services-grid">
                <div class="service-item">
                    <h3>Talleres</h3>
                    <p>Participa en talleres interactivos diseñados para mejorar tu inteligencia emocional.</p>
                </div>
                <div class="service-item">
                    <h3>Coaching Personal</h3>
                    <p>Recibe coaching personalizado para alcanzar un mayor control emocional en tu vida diaria.</p>
                </div>
                <div class="service-item">
                    <h3>Webinars</h3>
                    <p>Únete a nuestros webinars mensuales para aprender nuevas técnicas y estrategias.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h2>Contacto</h2>
            <form action="vista/contacto.jsp" method="post">
                <input type="text" name="name" placeholder="Nombre" required>
                <input type="email" name="email" placeholder="Correo Electrónico" required>
                <textarea name="message" placeholder="Mensaje" required></textarea>
                <button type="submit">Enviar</button>
            </form>
        </div>
    </section>

    <jsp:include page="vista/componentes/footer.jsp"></jsp:include>
</body>
</html>