<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <html>
   <head>
     <meta charset="UTF-8" />
     <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <title>Shopping</title>
     <link rel="stylesheet" href="/css/style.css" />

     <link
       href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
       rel="stylesheet"
       integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
       crossorigin="anonymous"
     />
     <script
       src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
       integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
       crossorigin="anonymous"
     ></script>
     <link rel="stylesheet" href="/Website/css/style.css" />
     <script src="/Website/js/script.js" defer></script>


       <style>
           .navbar-brand{
               padding-top: 0.3125rem;
               padding-bottom: 1.3125rem;
               margin-right: 1rem;
               font-size: 1.55rem;
               margin-left: 10px;
               text-decoration: underline;
               white-space: nowrap;
           }
           .form-control{
               display: block;
               width: 986px;
               padding: .375rem .75rem;
               font-size: 1rem;
               font-weight: 400;
               line-height: 1.5;
               color: #212529;
               background-color: #fff;
               background-clip: padding-box;
               border: 1px solid #ced4da;
               -webkit-appearance: none;
               -moz-appearance: none;
               appearance: none;
               border-radius: 0.25rem;
               transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
           }
       </style>
   </head>
   <body>
     <!-- navbar -->
     <nav class="navbar navbar-expand-lg navbar-light bg-light">
       <div class="container-fluid">
         <a class="navbar-brand" href="home.jsp" method="POST" action="home">Shopping</a>
         <button
           class="navbar-toggler"
           type="button"
           data-bs-toggle="collapse"
           data-bs-target="#navbarNavAltMarkup"
           aria-controls="navbarNavAltMarkup"
           aria-expanded="false"
           aria-label="Toggle navigation"
         >
           <span class="navbar-toggler-icon"></span>
         </button>


           <form action="search" method="GET"> <!-- Adjust action attribute accordingly -->
               <section class="d-flex">
                   <input
                           class="form-control me-2"
                           type="search"
                           placeholder="Search"
                           aria-label="Search"
                   />
                   <button class="btn btn-outline-success" type="submit">Search</button>
               </section>
           </form>


           <div
           class="collapse navbar-collapse d-flex justify-content-end"
           id="navbarNavAltMarkup"
         >
           <div class="navbar-nav p-2">
             <a
               class="but text-dark btn btn-outline-warning btn-lg me-2"
               href="cart.jsp"
               >Cart</a
             >
             <a
               class="but1 nav-link btn btn-outline-success btn-lg me-2"
               href="order.jsp"
               >Order</a
             >
             <a
               class="but1 nav-link btn btn-outline-secondary btn-lg" href="index.jsp"
               >Logout</a
             >
           </div>
         </div>
       </div>
     </nav>


      <div class="row">
            <c:forEach var="product" items="${products}">
       <div class="col-3 mt-4">
         <div class="border rounded p-2 bg-primary-subtle border-primary-subtle w-100 d-flex flex-column">
           <img src="${product.image}" alt="image" style=" height: 230px;" />
           <p class="fs-5 my-1 mt-2 text-center">"${product.title}"</p>
           <p class="fs-4 my-1 mb-2 text-center">₹ "${product.price}"</p>
           <a class="btn btn-success" href="home?id=<c:out value='${product.id}'/>">Add to Cart</a>
         </div>
       </div>
           </c:forEach>
       </div>


   </body>
 </html>