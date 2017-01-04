<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="/head-meta"/>
</head>
<body>

<c:import url="/head"/>



<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="${pageContext.request.contextPath}/resources/images/img_cakes.jpg" alt="cakes" >
         <div class="carousel-caption">
        <h3> Flavoured cakes</h3>
        <p> Just perfect for all parties!!! </p>
      </div>
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/img_pie.jpg" alt="pie">
        <div class="carousel-caption">
        <h3> Yummy pie!  </h3>
        <p>  Freshly baked pie with fruit toppings with some whipped cream </p>
      </div>
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/img_wedding.jpg" alt="wedding" >
         <div class="carousel-caption">
        <h3>  Wedding cake  </h3>
        <p> Just the cake they  prefer for the  perfect wedding!   </p>
      </div>
      </div>

      

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/img_cakesss.jpg" alt="cakesss" >
         <div class="carousel-caption">
        <h3>Cup cakes </h3>
        <p>  Keep calm and eat Cup cakes!!! :D  </p>
      </div>
      </div>

      <div class="item">
      <center>  <img src="${pageContext.request.contextPath}/resources/images/img_boq.jpg" alt="boq"  >  </center>
         <div class="carousel-caption">
        <h3>Flower boquet</h3>
        <p> Gift your dear ones with red rose boquet </p>
      </div>
    </div>
</div>

 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
  
  
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">
</div>

</div>


  <!-- Carousel -->

<!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

    <h2> <strong> <center> 0ur Cakes </center></strong> </h2>

      <!-- Three columns of text below the carousel -->
     
      <div class="row row-center">
        <div class="col-lg-4">
          <img class="img-circle" src="${pageContext.request.contextPath}/resources/images/img_bday.jpg" alt="bday" width="140" height="140">
          <h2>Cakes</h2>
          <p><i> All types of cake available for birthdays,wedding and other parties. </i></p>
          <p><a class="btn btn-default" href="${pageContext.request.contextPath}/product1" role="button">View More cakes! &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="${pageContext.request.contextPath}/resources/images/img_cup.jpg" alt="cup" width="140" height="140">
          <h2>CupCakes</h2>
          <p><i> Cupcakes decorations can be customized to customer's wish with opting to variety of flavours  </i></p>
          <p><a class="btn btn-default" href="${pageContext.request.contextPath}/product2" role="button">View more cupcakes! &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle" src="${pageContext.request.contextPath}/resources/images/img_chocan.jpg" alt="chocan" width="140" height="140">
          <h2>Candies</h2>
          <p>Candies are specially handmade by our chefs with natural flavours and sweets </p>
          <p><a class="btn btn-default" href="${pageContext.request.contextPath}/product3" role="button">View more candies! &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


 <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">Freshly baked <span class="text-muted">It'll blow your mind when it enters your mouth.</span></h2>
          <p class="lead"> <i>Our chefs bake the cake after the order is confirmed. The cake is then topped with freshly whipped cream and fresh fruits. </i> </p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/resources/images/img_baking.jpg" alt="baking" height="500" width="500">
        </div>
      

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
          <p class="lead"> <i>Specialized chef is there to bake the cupcakes. And all the cupcakes are made only that day and is set to enter the oven for baking. </i></p>
        </div>
        <div class="col-md-5 col-md-pull-7">
          <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/resources/images/img_choco.jpg" alt="choco" height="500" width="500">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Check our fb page.</span></h2>
          <p class="lead"> <i>Daily a new different cake recipie will be posted. Do not forget to check our fb page!!!! </i></p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive center-block" src="${pageContext.request.contextPath}/resources/images/img_dou.jpg" alt="dou" height="500" width="500">
        </div>
      </div>

      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->



<div class="row">


<div class="col-md-6">
 <h2> <strong> <p> <i> Baking Bee Blogs B <sup>3</sup> </i> </p> </strong> </h2>   

 <h4>Blogs of BB </h4>
 <p>Thanks for supporting us  you lovely bees!</p>
 <p>Its been 2 years of baking bee and we are happy to announce that we are opening another branch shortly  :D </p>

</div>

<div class="col-md-6">
 <div class="mySlides w3-container w3-violet">
 <h2> <b> <i> BAKING BEE ARTICLE </i> </b> </h2>
 
 <p> <h2> <mark> Article at The Hindu paper </mark> </h2> </p>
  <p> <i> Baking bee is the new bakers in this city shipping the cakes free..</i> </p>
 <p><i> Many youngsters have got place to explore desserts with richness in flavour.</i></p>

</div>

<div class="mySlides w3-container w3-xlarge w3-white w3-card-8">
  <h2> <b> <i> BAKING BEE ARTICLE </i> </b> </h2>
 <h2> <p> <mark>Article at Times of India </mark></p> </h2>
  <p><i> New place to explore the desserts  </i></p>
  <p> They take cake orders and ship them free within the city </p>
</div>
<script>


var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1}
    x[slideIndex-1].style.display = "block";
    setTimeout(carousel, 2000);
}


</script>









</div>
</div>







</center></h3>























<!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p> BakingBees@ company Ltd &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>





</body>
</html>