<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<head>
    <title> Exemple page </title>
    <link rel="stylesheet" href="/../../css/bootstrap.min.css">
    <link rel="stylesheet" href="/../../css/hidden.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>

    <header>
    <div class="container">
        <div class="row">
            <img class="col-lg-2" src="../../image/logo.jpg" height="100px" ></img>

            <div class="col-lg-6">
                <nav>
                  <ul>
                    <li><a class="nav-item nav-link active" href="#">Home </a></li>
                    <li><a class="nav-item nav-link" href="/afficherlogin">Connection</a></li>
                    <li><a class="nav-item nav-link" href="/frontEnd/inscription">Inscription</a></li>
                    <li><a class="nav-item nav-link" href="#produit">Produits</a></li>
                    <li class="menu-deroulant">
                            <a href="#"> Categorie</a>
                              <ul class="sous-menu">
                                <c:forEach items="${listec}" var="c">
                                  <li>
                                <a href="#">
                                  ${c.nomCategorie}
                                </a>
                              </li>
                                </c:forEach>
                              
                              </ul>
                            </a>
                    </li>
                    <li><a class="nav-item nav-link" href="/frontEnd/AfficherPanier">Panier</a></li>
                      
                  </ul>
                </nav>
            </div>

            <div class="col-lg-4">
              <nav class="navbar navbar-light bg-light">
                <form class="form-horizontal ">
                  <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                </form>
              </nav>
            </div>
        </div>
        <br>


    </header>
        <!-- Carousel -->
    
    <div id="myCarousel" class="carousel slide border" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="../../image/img1.jpg" >
                <div class="carousel-caption">
                   <h1>NEW ADVENTURE</h1>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="../../image/img2.jpg">
                <div class="carousel-caption">
                   <h1>NEW TRIP</h1>
                </div>
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="../../image/img3.jpg">
                <div class="carousel-caption">
                   <h1>NEW EXPERIENCE</h1>
                </div>
            </div>
        </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
            </a>
    </div>

    <br>
    <br>
    <br>
    
  <!-- Container -->

    <div class="container">

      <a id="produit"> <h1> Produits: </h1></a>
    <c:forEach items= "${liste}" var="p">

        <form methode="POST" action="${pageContext.request.contextPath}/frontEnd/AddProduitPanier">
          <table align="text-center">
            <tr>
              <td align="center" width="30%">${p.categorie.description}</td>
              <td align="center">
                <img src="${pageContext.request.contextPath}/${p.img}" style="height: 200px; width:400px;" alt=${p.libProduit} class="rounded-circle" data-holder-rendered="true">
              </td>
              <td align="center"  width="30%">${p.libProduit}</td>
              <td align="center"  width="30%">${p.quantite}</td>
              
              <td align="center"><input type="hidden" name="produit" value="${p.idProduit}"></td>

              <td> <div class="optin-container">
                <div class="cta">Sign Up for my Newsletter</div>
              
                <form class="hidden">
                  <input type="number" name="quantite" value="1" min="1" max="${p.quantite}" placeholder="Quantite">
                  <input type="submit" value="Ajouter au panier">
                </form> 
              
              </td>
              <td align="right" width="5%"><input type="number" name="quantite" value="1" min="1" max="${p.quantite}" placeholder="Quantite"></td>
              <td align="right"><input type="submit" value="Ajouter au panier"></td>
            </tr>
          </table>
        </form>
        <br>
        <br>
    </c:forEach>
    </div>

    <br>
    <br>
 

    <a id="categorie"> <h1> Categorie: </h1></a>
    <br>
   <form name="form1" action="/frontEnd/ProduitAssocie?id=${c.idCategorie}" >
      Categorie: 
      <select name="idCategorie">
				<c:forEach items="${listec}" var="c">
					<option value="${c.idCategorie}">${c.nomCategorie}</option>
				</c:forEach>
			</select>
    
      <input type="submit" value="Submit"></td>
  </form> 

  </div>



<!-- Footer -->
<footer class="bg-dark text-center text-white">
    <!-- Grid container -->
    <div class="container p-4">
      <!-- Section: Social media -->
      <section class="mb-4">
        <!-- Facebook -->
        <a class="btn btn-outline-light btn-floating m-1" href="https://www.facebook.com" role="button"
          ><i class="fab fa-facebook-f"></i
        ></a>
  
        <!-- Twitter -->
        <a class="btn btn-outline-light btn-floating m-1" href="https://twitter.com" role="button"
          ><i class="fab fa-twitter"></i
        ></a>
  
        <!-- Google -->
        <a class="btn btn-outline-light btn-floating m-1" href="https://google.com" role="button"
          ><i class="fab fa-google"></i
        ></a>
  
        <!-- Instagram -->
        <a class="btn btn-outline-light btn-floating m-1" href="https://instagram.com" role="button"
          ><i class="fab fa-instagram"></i
        ></a>
  
        <!-- Linkedin -->
        <a class="btn btn-outline-light btn-floating m-1" href="https://linkedin.com" role="button"
          ><i class="fab fa-linkedin-in"></i
        ></a>
  
        <!-- Github -->
        <a class="btn btn-outline-light btn-floating m-1" href="https://github.com" role="button"
          ><i class="fab fa-github"></i
        ></a>
      </section>
      <!-- Section: Social media -->
  
      <!-- Section: Form -->
      <section class="">
        <form action="">
          <!--Grid row-->
          <div class="row d-flex justify-content-center">
            <!--Grid column-->
            <div class="col-auto">
              <p class="pt-2">
                <strong>Sign up for our newsletter</strong>
              </p>
            </div>
            <!--Grid column-->
  
            <!--Grid column-->
            <div class="col-md-5 col-12">
              <!-- Email input -->
              <div class="form-outline form-white mb-4">
                <input type="email" id="form5Example21" class="form-control" />
                <label class="form-label" for="form5Example21">Email address</label>
              </div>
            </div>
            <!--Grid column-->
  
            <!--Grid column-->
            <div class="col-auto">
              <!-- Submit button -->
              <button type="submit" class="btn btn-outline-light mb-4">
                Subscribe
              </button>
            </div>
            <!--Grid column-->
          </div>
          <!--Grid row-->
        </form>
      </section>
      <!-- Section: Form -->

    </div>
    <!-- Grid container -->
  
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      � 2020 Copyright:
      <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
  </footer>
  <!-- Footer -->
</body> 
</head>