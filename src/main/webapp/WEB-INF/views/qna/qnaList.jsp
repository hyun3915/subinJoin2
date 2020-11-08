<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<c:import url="../template/bootStrap.jsp"></c:import>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style type="text/css">
   *{
		margin: 0;
		padding: 0;
		font-family: "맑은 고딕", "Nanum Gothic", Verdana, Dotum, AppleGothic, sans-serif;
		text-decoration: none;
   }
   
   .search_container{
      width: 1140px;
      height: 80px;
      margin: 0 auto;
   }
   .search-form{
      width:25%;
      height: 60px;
      margin: 0 auto;
   }
   select{
      float: left;
      height: 22px;
      margin: 0 3px 0 0;
      font-size: 11px;
      border: 1px solid #d5d5d5;
      
   }
   #search_input{
      float:left;
      height: 22px;
      width: 150px;
      border: 1px solid #d5d5d5;
      font-size: 11px;
   }
   
   .search-button{
   	  float:left;
      width: 49px;
      height: 22px;
      background-color: white;
      border: 1px solid #d5d5d5;
   }
   
   .qna_title {
   	text-align: center;
   }
   
   #qna{
		border: 1px solid #000;
   		padding: 10px 50px;
   		margin: 50px auto 50px;
   		letter-spacing: 1px;
   		display: inline-block;
   }
	
	table{
		border: 1px solid #e8e8e8;
		color: #353535;
		font-size: 11px;
		line-height: 140%;
	}
	
	#index {
		letter-spacing: 0.5px;
		padding: 12px 0 10px;
		border-right: 0px solid #e3e3e3;
		background: #fbfafa;
		font-weight: normal;
		text-align: center;
	}
	
	#subject{
		color: #555555;
		text-decoration: none;
	}
	
	.page{
		padding: 80px 0 0;
		text-align: center;
		margin-bottom: 25px;
	}
	
	.page a{
		color: #313131;
		text-decoration: none;
	}
	
	.btn_write a {
	float: right;
    margin: 0 0px 4px 1px;
    clear: both;
    background: #fff;
    border: 1px solid #d4d8d9;
    color: #757575;
    font-family: '맑은 고딕','돋움' sans-serif;
    letter-spacing: 0px;
    padding: 15px;
    text-align: right;
    font-size: 11px;
    border-radius: 2px;
    font-weight: normal;
}

</style>

<c:import url="../template/bootStrap.jsp"></c:import>

</head>
<body>
<c:import url="../template/header.jsp"></c:import>

<div class="container">
<div class="qna_title">
  <span id="qna" ><font color="333333">문의게시판</font></span>
</div>
     <div class="row">
        <div class="col-sm-8">
           <form id="searchForm" action="./qnaList">
              <input type="hidden" name="curPage" id="curPage">
            
           </form>
        </div>
     </div>
  
  <table class="table" style="width: 1140px;">
     <tr id="index">
        <td>NO</td>
        <td>SUBJECT</td>
        <td>NAME</td>
        <td>DATE</td> 
     </tr>
     
     <c:forEach items="${list}" var="dto" varStatus="vs">
      <tr>
        <td style="text-align: center;" width="80px">${dto.num}</td>
        <td width="860px"><a id="subject" href ="./qnaSelect?num=${dto.num}">
        <c:catch>
        <%--jsp 주석--%>
        <c:forEach begin="1" end="${dto.depth}"><img src="../resources/images/index/ico_re.gif"> </c:forEach>
		</c:catch>
		${dto.title}</a></td>
        <td style="text-align: center;" width="100px">${dto.writer}</td>
        <td style="text-align: center;" width="100px">${dto.regDate}</td>
      </tr>
    </c:forEach>
  
  </table>

<div>
<c:if test="${member.id!=null}">
	<span class="btn_write">
	<a href="./qnaWrite" >글쓰기</a>
	</span>
</c:if>
</div>
 
  <div class="page" >
   <c:if test="${pager.beforeCheck}">
      <a href="./${board}List?curPage=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}"><</a>
      </c:if>
     <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
        <a href="./${board}List?curPage=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a>
     </c:forEach>
     <c:if test="${pager.nextCheck}">
     <a href="./${board}List?curPage=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">></a>
     </c:if>
  </div>

<form>
<div class="search_container">
         <div class="search-form">
            <select id="kind" name="kind">
               <option value="tt">제목</option>
               <option value="wr">내용</option>
               <option value="con">글쓴이</option>
            </select>
				<input  id="search_input" type="text" name="search">
                <button type="submit" class="search-button" >찾기</button>
         </div>
</div>
</form>
</div>



</body>
</html>