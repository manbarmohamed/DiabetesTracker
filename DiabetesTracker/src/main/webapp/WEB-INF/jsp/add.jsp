<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <title>Dashboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!----css3---->

    <style>
        <%@include file="/css/custom.css"%>
    </style>
    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap"
          rel="stylesheet" />

    <!--google material icon-->
    <link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
<div class="wrapper">
    <div class="body-overlay">
    </div>

    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <img src="img/logo.svg" class="img-fluid" />
        </div>
        <ul class="list-unstyled components">
            <li class="active">
                <a href="#" class="dashboard"><i class="material-icons">dashboard</i><span>Dashboard</span></a>
            </li>
        </ul>
    </nav>

    <!-- Page Content  -->
    <div id="content">
        <div class="top-navbar">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid d-flex justify-content-between w-70">
                    <button type="button" id="sidebarCollapse" class="d-xl-block d-lg-block d-md-mone d-none">
                        <span class="material-icons">arrow_back_ios</span>
                    </button>

                    <a class="navbar-brand" href="#"> Dashboard </a>
                    <a class="navbar-brand" href="#"> Blogs </a>
                    <a class="btn btn-primary" href="add">New Glycemia</a>

                </div>
            </nav>
        </div>

        <div class="main-content">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                            <div class="icon icon-warning">
                                    <span class="material-symbols-outlined">
                                        monitor_heart
                                        </span>
                            </div>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Visits</strong></p>
                            <h3 class="card-title">70,340</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons text-info">info</i>
                                <a href="#pablo">See detailed report</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                                <span class="material-symbols-outlined">
                                    glucose
                                    </span>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Orders</strong></p>
                            <h3 class="card-title">102</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">local_offer</i> Product-wise sales
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                            <div class="icon icon-success">
                                <span class="material-icons"> attach_money </span>
                            </div>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Revenue</strong></p>
                            <h3 class="card-title">$23,100</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">date_range</i> Weekly sales
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                        <div class="card-header">
                            <div class="icon icon-info">
                                <span class="material-icons"> follow_the_signs </span>
                            </div>
                        </div>
                        <div class="card-content">
                            <p class="category"><strong>Followers</strong></p>
                            <h3 class="card-title">+245</h3>
                        </div>
                        <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">update</i> Just Updated
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="card" style="min-height: 485px">
                        <div class="card-header card-header-text">
                            <h4 class="card-title">Diabets Tracker</h4>
                            <p class="category">New Glycemia on 09th Jui, 2024</p>
                        </div>
                        <div class="card-content table-responsive">

                            <form action="add" method="post">
                                <div class="form-group">
                                    <label for="description">Date</label>
                                    <input type="date" class="form-control" id="description" name="date" required>
                                </div>
                                <div class="form-group">
                                    <label for="dateDebut">Name Patient</label>
                                    <input type="text" class="form-control" id="dateDebut" name="namePatient" required>
                                </div>
                                <div class="form-group">
                                    <label for="dateFin">Glycemia</label>
                                    <input type="number" class="form-control" id="dateFin" name="glycemia" required>
                                </div>
                                <div class="form-group">
                                    <label for="dateFiin">Heart Beat</label>
                                    <input type="number" class="form-control" id="dateFiin" name="HeartBeat" required>
                                </div>
                                <div class="form-group">
                                    <label for="idc">Consiel ID</label>
                                    <select class="form-control" id="idc" name="consiel.idConsiel" required>
                                        <c:forEach var="con" items="${consiels}">
                                            <option value="${con.getIdConsiel()}">ID: ${con.getIdConsiel()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Ajouter</button>
                            </form>


                        </div>
                    </div>
                </div>


            </div>



            <footer class="footer">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-6">
                            <nav class="d-flex">
                                <ul class="m-0 p-0">
                                    <li>
                                        <a href="#"> Home </a>
                                    </li>
                                    <li>
                                        <a href="#"> Company </a>
                                    </li>
                                    <li>
                                        <a href="#"> Portfolio </a>
                                    </li>
                                    <li>
                                        <a href="#"> Blog </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-md-6">
                            <p class="copyright d-flex justify-content-end">
                                &copy 2023 Design by
                                <a href="https://front-end-designer.netlify.app/">Mohamed Manbar</a>
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/jquery-3.3.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>

<script >

    $(document).ready(function () {
        $("#sidebarCollapse").on("click", function () {
            $("#sidebar").toggleClass("active");
            $("#content").toggleClass("active");
        });

        $(".more-button,.body-overlay").on("click", function () {
            $("#sidebar,.body-overlay").toggleClass("show-nav");
        });
    });
</script>
</body>

</html>







<form action="add" method="post">
    <label for="fname">date</label><br>
    <input type="date" id="fname" name="date" ><br>
    <label for="lname">Name Patient</label><br>
    <input type="text" id="lname" name="namePatient"><br><br>

    <label for="glycemia">glycemia</label><br>
    <input type="number" id="glycemia" name="glycemia" ><br><br>
    <label for="HeartBeat">Heart Beat</label><br>
    <input type="number" id="HeartBeat" name="HeartBeat" ><br><br>
    <label for="id">Consiel Id</label><br>
    <select class="form-control" id="id" name="consiel.idConsiel" required>
        <c:forEach var="con" items="${consiels}">
            <option value="${con.getIdConsiel()}">ID: ${con.getIdConsiel()}</option>
        </c:forEach>
    </select>

    <input type="submit" value="Submit">
</form>