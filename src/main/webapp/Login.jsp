<%-- 
    Document   : Login
    Created on : 30 abr. 2023, 19:10:46
    Author     : arondarkas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--CREAMOS LA VISTA DE INICIO DE SESION (LOGIN.JSP)-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>

        <!-- Required styles for Material Web -->
        <link rel="stylesheet" href="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.css">

        <!-- MATERIAL ICONS FULL -->
        <link
            href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
            rel="stylesheet" />

        <!-- B5 CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <!-- CSS CUSTOM -->
        <link href="recursos/css/style-login.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <form name="form" action="/WebSistema/ServletVerifica" method="post">
            <div class="contenedor">
                <div class="box-login shadow-lg border p-5 rounded">
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <img src="recursos/IMG/logo_logi.png" alt="Logo" id="logoSkoy" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <h2 class="text-center">LOGIN</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <label class="mdc-text-field mdc-text-field--outlined w-100">
                                <span class="mdc-notched-outline">
                                    <span class="mdc-notched-outline__leading"></span>
                                    <span class="mdc-notched-outline__notch">
                                        <span class="mdc-floating-label" id="my-label-id"placeholder="Usuario"></span>
                                    </span>
                                    <span class="mdc-notched-outline__trailing"></span>
                                </span>
                                <input type="text" name="xnom" class="mdc-text-field__input" aria-labelledby="my-label-id">
                                <span class="material-icons-outlined mdc-text-field__icon mdc-text-field__icon--trailing">
                                    face
                                </span>
                            </label>
                        </div>
                    </div>

                    <!-- row 2 -->
                    <div class="row mt-3">
                        <div class="col-lg-12">
                            <label class="mdc-text-field mdc-text-field--outlined w-100 text-field-pass">
                                <span class="mdc-notched-outline">
                                    <span class="mdc-notched-outline__leading"></span>
                                    <span class="mdc-notched-outline__notch">
                                        <span class="mdc-floating-label" id="my-label-id"placeholder="Password"></span>
                                    </span>
                                    <span class="mdc-notched-outline__trailing"></span>
                                </span>
                                <input type="password" name="xcla" class="mdc-text-field__input toggle-password" aria-labelledby="my-label-id">
                                <!-- ICON EYE -->
                                <span id="icon-view-pass2">
                                    <span class="material-icons-outlined mdc-text-field__icon mdc-text-field__icon--trailing">
                                        visibility_off
                                    </span>
                                </span>

                            </label>
                        </div>

                        <div class="col-lg-12">
                            <p class="text-end mt-3 link-custom"><a href="#" class="text-primario">¿Olvidaste tu contraseña?</a></p>
                        </div>
                    </div>

                    <!-- row 2 -->
                    <div class="row">
                        <div class="col-lg-12">
                            <button class="btn btnLogin w-100 rounded-pill">INICIAR SESIÓN</button><br>
                            <a href="index.html" class="button_cancelar">CANCELAR</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </form>



        <!-- JQuery -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        referrerpolicy="no-referrer"></script>
        <!-- Required Material Web JavaScript library -->
        <script src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
        <!-- Instantiate single textfield component rendered in the document -->
        <script src="recursos/js/app_material.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                $('#icon-view-pass2').click(function (e) {
                    let input_type = $('.toggle-password').attr('type');
                    if (input_type == 'password') {
                        $('.toggle-password').attr('type', 'text');
                        $('#icon-view-pass2 span').text('visibility');
                    } else {
                        $('.toggle-password').attr('type', 'password');
                        $('#icon-view-pass2 span').text('visibility_off');
                    }
                });
            });
        </script>
    </body>
</html>