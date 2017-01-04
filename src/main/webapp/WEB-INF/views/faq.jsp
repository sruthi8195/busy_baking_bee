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

<body>
  <div>


<div class="row">
 <div class="col-md-12 columns">
   <h2 class="text-center">FAQ</h2>
   <hr>
   <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
            1. When the cakes will be delivered?
          </a>
        </h4>
      </div>
      <div id="collapseOne" class="panel-collapse collapse in">
        <div class="panel-body">
          The cakes will be delivered after 3 hours of ordering for egg cake and 5 hours after for eggless cakes.
        </div>
      </div>
    </div>
	
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
            2. Can I cancel my order?
          </a>
        </h4>
      </div>
      <div id="collapseTwo" class="panel-collapse collapse">
        <div class="panel-body">
          Yes you can cancel your order immediately or 2 hours after your order .
        </div>
      </div>
    </div>
	
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
            3. Is cash on delivery available?
          </a>
        </h4>
      </div>
      <div id="collapseThree" class="panel-collapse collapse">
        <div class="panel-body">
            Yes! but cards not accepted in cash on delivery option.
        </div>
      </div>
    </div>


<div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
            4. What is the refund policy?
          </a>
        </h4>
      </div>
      <div id="collapseFour" class="panel-collapse collapse">
        <div class="panel-body">
           You can receive 100% refund anytime for anyreason, there are no strings attached.
        </div>
      </div>
    </div>



	
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
           5. Upto what time home delievry is done?
          </a>
        </h4>
      </div>
      <div id="collapseFive" class="panel-collapse collapse">
        <div class="panel-body">
           Upto 8.30 pm. But the orders should be within 3pm for same day delivery after 3pm it will be delivered next day morning 10 to 11 am.
        </div>
      </div>
    </div>



    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix">
            6. Is there order replacement?
          </a>
        </h4>
      </div>
      <div id="collapseSix" class="panel-collapse collapse">
        <div class="panel-body">
            No! If the cake is damaged while shipping the cake will be delivered in 2 hours.
        </div>
      </div>
    </div>
   </div>
  </div>
 </div>
<hr/>




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