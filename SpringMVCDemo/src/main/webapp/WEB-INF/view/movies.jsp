<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include  file="common/Header.html"%>
<h3>Welcome to movie World</h3>

<div class="row">
<c:forEach var="movie" items="${movies}">

			<div class="col">					
					<div class="card" style="width: 18rem;">
					  <img src="${request.getContextPath()}/images/${movie.poster_path}" class="card-img-top" alt="not available" width="200px" height="300px">
					   <div class="card-body">					  
					    <h5 class="card-title">${movie.original_title} </h5>
					    <p class="card-text">${movie.overview}</p>
					    <p class="card-text">$$ <span> ${movie.budget} </span>
					    <span> <c:if test="${movie.adult} =true">18+</c:if></span></p>
					    <a href="${movie.homepage} "  class="btn btn-primary">reference link</a>					    
					    <a href="movie/${movie.movie_id } "  class="btn btn-primary">Details</a>
					  </div>
					</div>
			</div>
		</c:forEach>
		</div>
		<%@include  file="common/Footer.html"%>

