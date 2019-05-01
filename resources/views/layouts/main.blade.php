<?php
$menus = [
    [ '部員紹介', url('/members') ],
    [ '大会結果', url('/results') ],
    [ '三多摩大会', url('/santama') ],
    [ '掲示板', url('/bbs') ],
    [ 'みずとり会', url('/mizutori') ],
];
?>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>一橋大学バドミントン部</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="{{ asset('/css/bootstrap.min.css') }}">
        <script src="{{ asset('/js/jquery-3.4.0.slim.min.js') }}"></script>
        <script src="{{ asset('/js/bootstrap.bundle.min.js') }}"></script>
        <style>html { font-size: 12px }</style>
    </head>
    <body>
        <header>
            <nav class="navbar navbar-light bg-white fixed-top border-bottom border-dark">
                <a class="navbar-brand" href="{{ url('/') }}">一橋大学バドミントン</a>
                <div class="d-flex">
                    <div class="dropdown">
                        <a class="btn btn-transpalent dropdown-toggle" data-toggle="dropdown" style="cursor:pointer">MENU</a>
                        <div class="dropdown-menu dropdown-menu-right">
                            @foreach ($menus as $menu)
                                <a class="dropdown-item" href="{{ $menu[1] }}">{{ $menu[0] }}</a>
                            @endforeach
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <main class="container-fluid" style="margin-top:100px;max-width:720px">@yield('content')</main>
        <footer class="footer py-5">
            <hr class="my-5 w-25">
            <section>
                <div class="text-center text-secondary">
                    <small>Copyright © 2018 一橋大学バドミントン部</small>
                </div>
            </section>
        </footer>
    </body>
</html>