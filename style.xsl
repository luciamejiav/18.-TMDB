<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY copy   "&#169;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Title</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous" />
				<link rel="stylesheet" href="style.css" />
			</head>
			
			<body>
				<div class="container shadow p-0">
					<nav class="navbar navbar-expand-md navbar-light bg-dark">
						<div class="container">
							<a class="navbar-brand" href="#"><img src="img/logotmdb.png" alt="" width="100" /></a>
							
							<button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
								data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							
							<div class="collapse navbar-collapse" id="collapsibleNavId">
								<ul class="navbar-nav mx-auto mt-2 mt-lg-0">
									<li class="nav-item">
										<a class="nav-link btn btn-success text-white mx-1 fs-4" href="#">Person</a>
									</li>
									<li class="nav-item">
										<a class="nav-link btn btn-success text-white mx-1 fs-4" href="#">Movie</a>
									</li>
									<li class="nav-item">
										<a class="nav-link btn btn-success text-white mx-1 fs-4" href="#">All</a>
									</li>
								</ul>
							</div>
						</div>
					</nav>
					<div class="row mt-4">
						<xsl:for-each select="tmdb/persons/person">
							<div class="col-xl-4 col-md-6 mb-3 d-flex">
								<div class="card flex-fill">
									<xsl:choose>
										<xsl:when test="foto = '' ">
											<img class="card-img-top" src="img/noimageperson.png" alt="Title" />
										</xsl:when>
										<xsl:otherwise>
											<img class="card-img-top" src="{foto}" alt="Title" />
										</xsl:otherwise>
									</xsl:choose>
									
									<div class="card-body">
										<h4 class="card-title">Thassapak Hsu</h4>
										<p class="card-text">萌妻食神, 外星女生柴小七, Devil Lover เผลอใจ..ให้นายปีศาจ</p>
									</div>
								</div>
							</div>
						</xsl:for-each>
						
					</div>
					<div class="row mt-4">
						<div class="col-lg-6">
							<div class="card">
								<div class="row">
									<div class="col-4"> 
										<img class="card-img-top" src="img/poster.jpg" alt="Title" />
									</div>
									<div class="col-6">
										<div class="card-body">
											<h4 class="card-title">Bloodshot</h4>
											<p class="card-text">20 0feb 2020</p>
											<p class="card-text">Rating: <span class="bg-warning rounded-pill p-1">72.0</span></p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<h2 class="bg-dark text-success text-center p-3">The movie DM 2020</h2>
				</div>
				
				<main>
					
				</main>
				<footer>
					<!-- place footer here -->
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
					integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
				</script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
					integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
				</script>
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>