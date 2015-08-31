<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Catalog</title>
        <link rel="stylesheet" href="{{ URL::asset('css/bootstrap.css') }}" />
        <link rel="stylesheet" href="{{ URL::asset('css/main.css') }}" />
    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">

                <a class="navbar-brand" href="{{url('/')}}">Testing work</a>
                 <div class="login-nav">
                @if( Auth::check() )
                    <a class="navbar-brand" href="{{url('auth/logout')}}">Logout</a>
                @else
                    <a class="navbar-brand" href="{{url('auth/register')}}">Register </a> 
                    <a class="navbar-brand" href="{{url('auth/login')}}">Login</a>
                @endif
                </div>
            </div>
            
        </nav>

        <!-- Page Content -->
        <div class="container">
            @yield('content')
        </div>
        <!-- /.container -->

        <div class="container">

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright © Your Website 2014</p>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script type="text/javascript" src="{{ URL::asset('js/jquery.js') }}"></script>
        <!-- Bootstrap Core JavaScript -->
        <script type="text/javascript" src="{{ URL::asset('js/bootstrap.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/review.js') }}"></script>
    </body>

</html>