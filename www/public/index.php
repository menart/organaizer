<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Органайзер</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
          integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <style>
        .row div{
            border: 1px solid blue;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg  navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Органайзер</a>
    <button
            class="navbar-toggler"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Главная <span class="sr-only">(current)</span></a>
            </li>
        </ul>

        <button type="button" class="btn btn-outline-success my-2 my-sm-0">Вход</button>
    </div>
</nav>
<div class="container">
    <!-- Content here -->
    <div class="row justify-content-md-center" id="app">
        <div class="col-md-4" >
            <h3>Список групп<span class="badge rounded-pill badge-primary" v-text="countGroup"></span></h3>
        </div>
        <div class="col-md-8">
            <h3>Задания<span class="badge rounded-pill badge-primary" v-text="countTask"></span></h3>
        </div>
    </div>
</div>
<script src="https://unpkg.com/vue@next"></script>
<script src="js/main.js"></script>
</body>
</html>