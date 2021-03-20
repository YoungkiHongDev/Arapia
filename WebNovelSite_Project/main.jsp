<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" buffer="8kb"%>
<%@ page import="java.util.*, noblesite_Project.*"%>
<jsp:useBean id="titlemgr" class="noblesite_Project.NoveltitleMgr"/>

<% 
   Vector titlelist = titlemgr.gettitleList();
	NobleTitleBean nbtitle;
%>

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
              <img src="img\banner1.png" alt="역대급 천재 재벌">
            </div>

            <div class="item">
              <img src="img\banner2.png" alt="극한의 컨셉충">
            </div>

            <div class="item">
              <img src="img\banner3.png" alt="회귀자의 소소한 꿀팁방송">
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
	      <% if(titlelist.size() > 5 ) {
	      		for(int i=0;i<5;i++) {
	      		nbtitle = (NobleTitleBean)titlelist.get(i);%>
	        <li>
	        	<a href="nobelboard.jsp?titleid=<%=nbtitle.getTitleid()%>">  
		          <span class = "spansort1 best_rank"><%=i + 1%></span>
		          <span class = "spansort1 best_name"><%=nbtitle.getResnick()%></span>
		          <span class = "spansort1 best_title"><%=nbtitle.getNobeltitle()%></span>
		        </a>
	        </li>
	      <%}
	      }
	      else{
	      for(int i=0;i<titlelist.size();i++) {
	     nbtitle = (NobleTitleBean)titlelist.get(i);%>
	       <li>
	        	<a href="nobelboard.jsp?titleid=<%=nbtitle.getTitleid()%>">  
		          <span class = "spansort1 best_rank"><%=i + 1%></span>
		          <span class = "spansort1 best_name"><%=nbtitle.getResnick()%></span>
		          <span class = "spansort1 best_title"><%=nbtitle.getNobeltitle()%></span>
		        </a>
	        </li>
	        <%}
	      }%>
	      </ul>
	      </div>
	    </div>
    
      <div class="column3">
      	<%if(res_id == null) { %>
        <button type="button" class="btn btn-primary btn-lg" style="font-size:32px;height:110px;" onclick="location.href='login.jsp'">arapia 로그인</button>
        <div style="margin-left:20px;margin-top:130px;"><a href="Resister.jsp">회원가입</a></div>
        <%}else{ %>
        <div class="lgwelcome">
        	<h4><%=res_id %> 님 환영합니다.</h4><p>
        	<input type="button" class="infoupdate_btn" value="로그아웃" onclick="location.href='logout.jsp'">
        	<a href="memberupdate.jsp" class="infoupdate_txt">회원정보 수정</a>
        </div>	
        <%} %>	
      </div>
      
    </div>
   
      <div class="underbannerbox">
        <h3>최신 연재 소설</h3>
          <div class="imagesort1">   
            <a href="#"" target="_blank">
              <img src="img\magic.png" alt="cover" style="width:170px;">
                <div class="caption">
                  <p>마법천재 마술방송</p>
                </div>
            </a>
          </div>
          
          <div class="imagesort1">
              <a href="#" target="_blank">
                <img src="img\noble.png" alt="cover" style="width:170px;">
                <div class="caption">
                  <p>병약한 귀족이 되었다</p>
                </div>
              </a>
          </div>
                      
          <div class="imagesort1">
              <a href="#" target="_blank">
                <img src="img\jaebul.png" alt="cover" style="width:170px;">
                <div class="caption">
                  <p>재벌가 망나니</p>
                </div>
              </a>
          </div>

          <div class="imagesort1">
            <a href="#" target="_blank">
              <img src="img\chunma.png" alt="cover" style="width:170px;">
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
                <span class="novelTitle" style="background:orange"> 퓨전판타지투데이베스트</span>
                <span class="novelTitle" style="background:black"> 게임판타지투데이베스트</span>
              </div>

              <div>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">룬의 아이들 윈터러</a></li>
                    <li><a href="#">눈물을 마시는 새</a></li>
                    <li><a href="#">드래곤 라자</a></li>
                    <li><a href="#">월야환담 채월야</a></li>
                    <li><a href="#">후작가의 망령재림</a></li>
                    <li><a href="#">하얀 늑대들</a></li>
                    <li><a href="#">하얀 로냐프 강</a></li>
                    <li><a href="#">SKT</a></li>
                    <li><a href="#">세월의 돌</a></li>
                    <li><a href="#">태양의 탑</a></li>
                  </ol>
                </span>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">군림천하</a></li>
                    <li><a href="#">독보건곤</a></li>
                    <li><a href="#">창천마신</a></li>
                    <li><a href="#">화산마신</a></li>
                    <li><a href="#">전륜마도</a></li>
                    <li><a href="#">천마신교 낙양지부</a></li>
                    <li><a href="#">생사박</a></li>
                    <li><a href="#">혈기린 외전</a></li>
                    <li><a href="#">무당마검</a></li>
                    <li><a href="#">호위무사</a></li>
                  </ol>
                </span>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">아이작</a></li>
                    <li><a href="#">탐식의 재림</a></li>
                    <li><a href="#">환생좌</a></li>
                    <li><a href="#">스물네개의 심장</a></li>
                    <li><a href="#">올마스터</a></li>
                    <li><a href="#">디오</a></li>
                    <li><a href="#">은둔형 마법사</a></li>
                    <li><a href="#">픽 미 업</a></li>
                    <li><a href="#">나혼자 자동 사냥</a></li>
                    <li><a href="#">그린스킨</a></li>
                  </ol>
                </span>
                <span class="novelList">
                  <ol>
                    <li style="margin-top:20px"><a href="#">언더월드</a></li>
                    <li><a href="#">달빛조각사</a></li>
                    <li><a href="#">템빨</a></li>
                    <li><a href="#">아크</a></li>
                    <li><a href="#">하룬</a></li>
                    <li><a href="#">로열페이트</a></li>
                    <li><a href="#">리바이벌</a></li>
                    <li><a href="#">테이밍마스터</a></li>
                    <li><a href="#">랭커의 귀환</a></li>
                    <li><a href="#">언데드 마스터</a></li>
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
          <img src="img\rbanner1.jpg" class="img-rounded" alt="right-banner1" width="230" height="130" style="margin:20px;">
          <img src="img\rbanner2.jpg" class="img-rounded" alt="right-banner2" width="230" height="130" style="margin:20px;">
          <img src="img\rbanner3.png" class="img-rounded" alt="right-banner3" width="230" height="130" style="margin:20px;">
          <img src="img\rbanner4.png" class="img-rounded" alt="right-banner4" width="230" height="130" style="margin:20px;">
          <img src="img\rbanner5.png" class="img-rounded" alt="right-banner5" width="230" height="130" style="margin:20px;">
        </div>
      </div>
   
  </div>

   
<%@ include file = "bottom.jsp"%>


  
