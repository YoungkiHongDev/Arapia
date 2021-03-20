<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <%@ include file = "top.jsp" %>

  <div class="content">
    <div class="columns">
      <div class="column1">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">

          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>

          <!-- Wrapper for slides -->
          <div class="carousel-inner">
            <div class="item active">
              <img src="..\img\banner1.png" alt="역대급 천재 재벌">
            </div>

            <div class="item">
              <img src="..\img\banner2.png" alt="극한의 컨셉충">
            </div>

            <div class="item">
              <img src="..\img\banner3.png" alt="회귀자의 소소한 꿀팁방송">
            </div>
          </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
          </a>

          <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
          </a>
      </div>
    </div>

     <div class="column2">
	      <div class="bestbox">
	      <h3 style="text-align : center"><b>무료웹소설 투데이베스트</b></h3>
	      <ul class="unline">
	        <li>
	        	<a href="#">  
		          <span class = "spansort1 best_rank">1</span>
		          <span class = "spansort1 best_name">작가명</span>
		          <span class = "spansort1 best_title">소설제목</span>
		        </a>
	        </li>
	        <li>
		        <a href="#">  
			      <span class = "spansort1 best_rank">2</span>
		          <span class = "spansort1 best_name">작가명</span>
		          <span class = "spansort1 best_title">소설제목</span>
		        </a>
		    </li>
	        <li>
	        	<a href="#">
		          <span class = "spansort1 best_rank">3</span>
		          <span class = "spansort1 best_name">작가명</span>
		          <span class = "spansort1 best_title">소설제목</span>
		        </a>
	        </li>
	        <li>
	        	<a href="#">
		          <span class = "spansort1 best_rank">4</span>
		          <span class = "spansort1 best_name">작가명</span>
		          <span class = "spansort1 best_title">소설제목</span>
		        </a>
	        </li>
	        <li>
	        	<a href="#">
		          <span class = "spansort1 best_rank">5</span>
		          <span class = "spansort1 best_name">작가명</span>
		          <span class = "spansort1 best_title">소설제목</span>
		        </a>
	        </li>
	      </ul>
	      </div>
	    </div>
    
      <div class="column3">
        <button type="button" class="btn btn-primary btn-lg" style="font-size:32px;height:110px;">arapia 로그인</button>
      </div>
      
    </div>
   
      <div class="underbannerbox">
        <h3>최신 연재 소설</h3>
          <div class="imagesort1">   
            <a href="#"" target="_blank">
              <img src="..\img\magic.png" alt="cover" style="width:170px;">
                <div class="caption">
                  <p>마법천재 마술방송</p>
                </div>
            </a>
          </div>
          
          <div class="imagesort1">
              <a href="#" target="_blank">
                <img src="..\img\noble.png" alt="cover" style="width:170px;">
                <div class="caption">
                  <p>병약한 귀족이 되었다</p>
                </div>
              </a>
          </div>
                      
          <div class="imagesort1">
              <a href="#" target="_blank">
                <img src="..\img\jaebul.png" alt="cover" style="width:170px;">
                <div class="caption">
                  <p>재벌가 망나니</p>
                </div>
              </a>
          </div>

          <div class="imagesort1">
            <a href="#" target="_blank">
              <img src="..\img\chunma.png" alt="cover" style="width:170px;">
              <div class="caption">
                <p>천마를 삼켰다</p>
              </div>
            </a>
          </div>
      </div>
    

    <div>
        <div class="leftarea">
            <div class="lbox">
              <div>
                <span class="novelTitle" style="background:blue">판타지투데이베스트</span>
                <span class="novelTitle" style="background:red">무협투데이베스트</span>
                <span class="novelTitle" style="background:yellow"> 퓨전판타지투데이베스트</span>
                <span class="novelTitle" style="background:black"> 게임판타지투데이베스트</span>
              </div>

              <div>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">판타지소설1</a></li>
                    <li><a href="#">판타지소설2</a></li>
                    <li><a href="#">판타지소설3</a></li>
                    <li><a href="#">판타지소설4</a></li>
                    <li><a href="#">판타지소설5</a></li>
                    <li><a href="#">판타지소설6</a></li>
                    <li><a href="#">판타지소설7</a></li>
                    <li><a href="#">판타지소설8</a></li>
                    <li><a href="#">판타지소설9</a></li>
                    <li><a href="#">판타지소설10</a></li>
                  </ol>
                </span>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">무협소설1</a></li>
                    <li><a href="#">무협소설2</a></li>
                    <li><a href="#">무협소설3</a></li>
                    <li><a href="#">무협소설4</a></li>
                    <li><a href="#">무협소설5</a></li>
                    <li><a href="#">무협소설6</a></li>
                    <li><a href="#">무협소설7</a></li>
                    <li><a href="#">무협소설8</a></li>
                    <li><a href="#">무협소설9</a></li>
                    <li><a href="#">무협소설10</a></li>
                  </ol>
                </span>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">퓨전판타지소설1</a></li>
                    <li><a href="#">퓨전판타지소설2</a></li>
                    <li><a href="#">퓨전판타지소설3</a></li>
                    <li><a href="#">퓨전판타지소설4</a></li>
                    <li><a href="#">퓨전판타지소설5</a></li>
                    <li><a href="#">퓨전판타지소설6</a></li>
                    <li><a href="#">퓨전판타지소설7</a></li>
                    <li><a href="#">퓨전판타지소설8</a></li>
                    <li><a href="#">퓨전판타지소설9</a></li>
                    <li><a href="#">퓨전판타지소설10</a></li>
                  </ol>
                </span>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">게임판타지소설1</a></li>
                    <li><a href="#">게임판타지소설2</a></li>
                    <li><a href="#">게임판타지소설3</a></li>
                    <li><a href="#">게임판타지소설4</a></li>
                    <li><a href="#">게임판타지소설5</a></li>
                    <li><a href="#">게임판타지소설6</a></li>
                    <li><a href="#">게임판타지소설7</a></li>
                    <li><a href="#">게임판타지소설8</a></li>
                    <li><a href="#">게임판타지소설9</a></li>
                    <li><a href="#">게임판타지소설10</a></li>
                  </ol>
                </span>
              </div>
            </div>

             <div class="notice">
              <div class="list-group">
                <a class="list-group-item active" style="background : lightgray; border : 1px solid lightgray" ><font size="3" color="black"><b>공지사항</b></font></a>
                <a href="#" class="list-group-item">공지사항1</a>
                <a href="#" class="list-group-item">공지사항2</a>
                <a href="#" class="list-group-item">공지사항3</a>
                <a href="#" class="list-group-item">공지사항4</a>
                <a href="#" class="list-group-item">공지사항4</a>
              </div> 
            </div>
        </div>
      </div>

      <div class="rightarea">
        <div class="rightbanner">
          <img src="..\img\rbanner1.jpg" class="img-rounded" alt="right-banner1" width="230" height="130" style="margin:20px;">
          <img src="..\img\rbanner2.jpg" class="img-rounded" alt="right-banner2" width="230" height="130" style="margin:20px;">
          <img src="..\img\rbanner3.png" class="img-rounded" alt="right-banner3" width="230" height="130" style="margin:20px;">
          <img src="..\img\rbanner4.png" class="img-rounded" alt="right-banner4" width="230" height="130" style="margin:20px;">
          <img src="..\img\rbanner5.png" class="img-rounded" alt="right-banner5" width="230" height="130" style="margin:20px;">
        </div>
      </div>
  </div>
    
  <%@ include file = "bottom.jsp"%>
  
</body>
</html>