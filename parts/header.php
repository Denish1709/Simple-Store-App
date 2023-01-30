<?php
$siteName = "OrganicFoods";
$currentPath = basename($_SERVER['PHP_SELF']);
?>

<head>
  <title><?php echo $pageTitle; ?></title>
  <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">  </head>
  <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"
    />
  
  <script src="https://use.fontawesome.com/1ec13dda20.js"></script>
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-style navbar-expand-sm navbar-light ">
    <div class="container">
        <div class"navbar-header">
        <a href="catologue"><img class="logo" src="assets/img/logo.png"></a>
    </div>
        
        <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navmenu"
        >
        <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navmenu">
        </div>
    </div>
    </nav>

    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item"><a href="index" class="nav-link <?php echo ($currentPath == "index.php") ? "active" : ""; ?>"><i class="fa fa-home" aria-hidden="true"></i> Home</a></li>
            <li class="nav-item"><a href="catologue" class="nav-link <?php echo ($currentPath == "catologue.php") ? "active" : ""; ?>"><i class="fa fa-book" aria-hidden="true"></i> Catologue</a></li>
            <li class="nav-item"><a href="about" class="nav-link <?php echo ($currentPath == "about.php") ? "active" : ""; ?>"><i class="fa fa-user-circle-o" aria-hidden="true"></i></i> About Us</a></li>
        </ul>
        <ul class="navbar-nav ms-auto">
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle <?php echo ($currentPath != "index" && $currentPath != "catologue.php" && $currentPath != "about.php") ? "active" : ""; ?>" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fa fa-user-circle-o" aria-hidden="true"></i> My Account</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <?php
                    if (isLoggedIn()) { ?>
                        <?php
                        if (isLoggedIn()) { ?>
                        
                        <div class="dropdown-divider"></div>
                        <?php } ?>

                        <?php
                        if (isLoggedIn()) { ?>
                        
                        <div class="dropdown-divider"></div>
                        <?php } ?>
                        
                        
                        <a class="dropdown-item" href="logout">Logout</a>
                    <?php }else{ ?> 
                        
                        <a class="dropdown-item" href="login">Login</a>
                        <a class="dropdown-item" href="signup">Signup</a>
                    <?php } ?>
                    
                </div>
            </li>
    
        </ul>
        </div>
    </div>
    </nav>