<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
   }
   .table tr{
      width: auto;
      padding: 10px 0 8px 10px;
      vertical-align: middle;
      font-size: 13px;
      font-family: 돋움;
      color: #2e2e2e;
   }
   
   .agree{
      border: 1px solid #d7d5d5;
      background: #fbfafa;
      padding: 20px 20px 1px 20px;
      margin-bottom: 60px;
      font-size: 12px;
   }
   
   .table td{
      width: 20px;
      font-size: 12px;
     
   }
   
   .leftrow{
      background-color: #fbfafa;
    
   }
   
   .group{
      border: 1px solid #d9d9d9;
   }
   
   .tab{
      margin-top: 50px;
   }
   
   .que{
      font-size: 12px; color=#202020;
       line-height: 0.2;
       
   }
   
   .result{
      font-size: 11px;
      
   }
   
   .btn:hover{
   	  background-color: #D4D8D9;
   	  color: white;
   }
   
   .btn{
	  text-align: center;
	  text-decoration: none;
	  font-size: 12px;
	  padding: 14px 18px;
	  border-radius: 2px;
	  letter-spacing: 0px;
   }
   
   .btn-join{
   	  border: none;
	  background-color: #6e6e6e;
	  color: white;
   }
   
   .btn-cancel{
   	  border: 1px solid #d4d8d9;
   	  background-color: white;
   }
   
    
</style>

</head>
<body>


<div class="container">
  
<form action="./memberJoin" method="post" id="frm">
   <h5 style="line-height: 0.2;"><b>기본정보</b></h5>
   <p style="text-align: right; font-size: 13px; color=#353535; line-height: 0.2; font-family: 돋움;" ><img src="../resources/ico_required.png"> 필수입력사항</p>
   <table border="1" class="table" bordercolor ="#e8e8e8" >
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;아이디 <img src="../resources/ico_required.png"></td>
         <td><input type="text" class="inputTypeText" id="id" name="id"> (영문소문자/숫자, 4~16자)
              <div id="idResult" class="result"></div>
           </td>
      </tr>
      
      <tr id="#idResult"></tr>
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;비밀번호 <img src="../resources/ico_required.png"></td>
         <td><input type="password" class="inputTypeText" id="pw" name="pw"> (영문 대/소문자/숫자 중 3가지 이상 조합, 8자~16자)
             <div id="pwResult" class="result"></div>
            </td>
      </tr>
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;비밀번호 확인 <img src="../resources/ico_required.png"></td>
         <td><input type="password" class="inputTypeText" id="pw2" name="pw2">
              <div id="pw2Result" class="result"></div>
            </td>
      </tr>
      
      <tr class="group">
         <td class="leftrow">&nbsp;&nbsp;이름 <img src="../resources/ico_required.png"></td>
         <td><input type="text" class="inputTypeText empty should" id="name" name="name"></td>
      </tr>
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;휴대전화 <img src="../resources/ico_required.png"></td>
         <td><input type="text" class="inputTypeText empty should" id="phone" name="phone"></td>
      </tr>
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;이메일 <img src="../resources/ico_required.png"></td>
         <td><input type="email"  class="inputTypeText empty should" id="email" name="email"></td>
      </tr>
      
      <tr class="group">
         <td  class="leftrow">&nbsp;&nbsp;주소 <img src="../resources/ico_required.png"></td>
         <td>
            <input class="form-control should" placeholder="우편번호" name="addr1" id="addr1" type="text">
              <button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
         
            <input class="form-control should" placeholder="도로명 주소" name="addr2" id="addr2" type="text"/>

            <input class="form-control should" placeholder="상세주소" name="addr3" id="addr3" type="text"  />
         </td>
      </tr>
   </table>
</form>
   <div class="tab">
   <p style="line-height: 0.2;"><b>이용약관동의</b><p style="text-align: right; font-size: 13px; color=#353535; line-height: 0.2; font-family: 돋움;"><input id="checkall" type="checkbox"> 전체 동의</p></p>
      <div class="agree">
   <p><textarea rows="5" style="width:100%" readonly="readonly">제1조(목적)
이 약관은 데일리쥬 회사(전자상거래 사업자)가 운영하는 데일리쥬 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다.
※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」</textarea></p>
   <p class="que">[필수]이용약관에 동의하십니까? <input type="checkbox" class="ch" id="must1"> 동의함</p>
   </div>
   
   <div class="agree">
     <p><b>개인정보 수집 및 이용 동의</b></p>
   <p><textarea rows="5" style="width:100%" readonly="readonly" > ** 본 양식은 쇼핑몰 운영에 도움을 드리고자 샘플로 제공되는 서식으로 쇼핑몰 운영형태에 따른 수정이 필요합니다. 쇼핑몰에 적용하시기 전, 쇼핑몰 운영 사항 등을 확인하시고 적절한 내용을 반영하여 사용하시기 바랍니다. **
1. 개인정보 수집목적 및 이용목적

가. 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산

콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스</textarea></p>
   <p class="que">[필수]이용약관에 동의하십니까? <input type="checkbox" class="ch" id="must2"> 동의함</p>
   </div>
   
   <div class="agree">
   <p><b>개인정보 제3차 제공 동의(선택)</b></p>
   <p><textarea rows="5" style="width:100%" readonly="readonly">아래 내용의 동의 여부는 회원가입에 영향을 미치지 않습니다. 단, 동의 거부시 서비스 이용에 제한이 있을 수 있습니다.

위탁받는 자(수탁업체) : ㈜스냅컴퍼니(알림전송수탁업체 : ㈜엠티에스컴퍼니)
- 위탁업무의 내용 : 고객 개인정보(이름, 아이디, 휴대전화번호)를 통해 신규 서비스(제품) 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 및 참여기회</textarea></p>
   <p class="que">이용약관에 동의하십니까? <input type="checkbox" class="ch"> 동의함</p>
   </div>
   
   <div class="agree">
   <p><b>개인정보 취급 위탁 동의(선택)</b></p>
   <p><textarea rows="5" style="width:100%" readonly="readonly">개인정보취급방침

‘데일리쥬’(이하 “회사”라 함)는 이용자들의 개인정보보호를 매우 중요시하며, "정보통신망 이용촉진 및 정보보호에 관한 법률”을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 고객님이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. 회사는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
   </textarea></p>
   <p class="que">이용약관에 동의하십니까? <input type="checkbox" class="ch"> 동의함</p>
   </div>
   
	<div style="text-align: center;" >   
	<input type="button" value="회원가입" class="btn btn-join" id="join">  
	<input type="button" value="회원가입취소" class="btn btn-cancel" id="cancel">
	</div>
</div>
</div>
<script type="text/javascript">
var pwCheck =false;
var pw2Check =false;
var idCheck =false;
var shouldCheck=true;

$("#cancel").click(function() {
	location.href="../";
});

$("#join").click(function(){
   //먼저 필수입력사항 이름 전화번호 이메일  주소3개 태그들의 값의 길이를 should함수를통해 반복문으로 조사함 하나라도 길이가0(입력되지않았다면) shouldCheck가 false가됨
   should();
   //필수 체크박스항목2개가 체크되었는지 확인함
   var must1=$("#must1").prop("checked");
   var must2=$("#must2").prop("checked");
   
   
   //전부다 인증완료되면 컨트롤러로 서브밋함
   if(pwCheck&&pw2Check&&idCheck&&shouldCheck&&must1&&must2){
      
      $("#frm").submit();
   }else if(!idCheck){
      alert("해당 ID를 사용할 수 없습니다");
      $("#id").focus();
   }else if(!pwCheck){
      alert("해당 패스워드를 사용할 수 없습니다");
      $("#pw").focus();
   }else if(!pw2Check){
      alert("패스워드가 일치하지 않습니다");
      $("#pw2").focus();
   }else if(!shouldCheck){
      alert("필수 항목을 입력해주세요");
      $(".should").each(function(){
         if($(this).val().length==0){
            $(this).focus();
         }
      });
   }else if(!must1||!must2){
      alert("필수 체크항목을 체크해주세요");
      
   }
   
});

//id를 검증함  먼저 4~16글자인지 확인후 통과하면 ajax로 디비에 같은아이디가 있는지 확인함 없으면인증완료
$("#id").blur(function(){
   idCheck=false;
   var idSize =$(this).val().length;
   if(idSize>16){
       $("#idResult").text("최대 16글자까지 가능합니다");
        $("#idResult").css("color","red");
   }
   else if(idSize<4){
      $("#idResult").text("최소 4글자 이상이어야 합니다");
        $("#idResult").css("color","red");
   }else{
      var val=$(this).val();   
       
       var lower =false;
       var num=false;
       for(var i=0; i<val.length;i++){
            var a = val.charAt(i);
            
            if(a>='a'&&a<='z') {
               lower =true;
            }else if(a>=0&&a<=9){
               num =true;
            }
         }
      if(lower&&num){
          $.post("./memberIdCheck",{id: $(this).val()},function(data){
               
               data=data.trim();
               
               
                  if(data==1){
                       $("#idResult").text("사용가능한 아이디입니다");
                       $("#idResult").css("color","blue");
                       idCheck=true;
                    }else{
                       $("#idResult").text("중복된 아이디입니다");
                       $("#idResult").css("color","red");
                      
                    }
               
               
                 
             }); 
      }else{
         $("#idResult").text("영문 소문자/숫자가 1개이상 포함되어야합니다");
           $("#idResult").css("color","red");
      }
      
      
      
   }
    
});

//pw 유효성 검사
//입력하고 포커스아웃하면 글자수를 확인하여 통과하면  charAt으로 대문자 소문자가 1개씩 들어가있는지확인함
$("#pw").blur(function(){
   var pwSize =$(this).val().length;
    pwCheck =false;
   if(pwSize>16){
        $("#pwResult").text("최대 16글자까지 가능합니다");
        $("#pwResult").css("color","red");
   }
   else if(pwSize<8){
        $("#pwResult").text("최소 8글자 이상이어야 합니다");
        $("#pwResult").css("color","red");
   }else{
      var val=$(this).val();   
       var upper =false;
       var lower =false;
       var num=false;
      for(var i=0; i<val.length;i++){
         var a = val.charAt(i);
         
         if(a>='A'&&a<='Z') {
            upper=true;
         }else if(a>='a'&&a<='z') {
            lower =true;
         }else if(a>=0&&a<=9){
            num =true;
         }
      }
      if(upper&&lower&&num){
         $("#pwResult").text("사용가능한 패스워드입니다");
         $("#pwResult").css("color","blue");
         pwCheck=true;
      }else{
         $("#pwResult").text("영문 대/소문자/숫자가 1개이상 포함되어야합니다");
           $("#pwResult").css("color","red");
      }
   }
   
});
//비밀번호가 통과되고 비밀번호확인까지 일치하였는데 사용자가 비밀번호를 추가로 입력하거나 지우면 비밀번호가 일치하지않는다고 출력함
$("#pw").keyup(function(){
   var a=$("#pw2").val().length;
   if(a>0){
      pwEqual();
   }
});
//pw와pw2가 일치하는지 확인함
$("#pw2").keyup(pwEqual);

//pw와 pw2가 일치하는지 확인하는 함수
function pwEqual(){
   pw2Check=false;
   var pw = $("#pw").val();
   var pw2 = $("#pw2").val();
   if(pw==pw2){
       $("#pw2Result").text("비밀번호가 일치합니다");
       $("#pw2Result").css("color","blue");
       pw2Check=true;
   }else{
       $("#pw2Result").text("비밀번호가 일치하지 않습니다");
       $("#pw2Result").css("color","red");
   }
}

//필수항목태그들을 반복문을 통해 비어있는태그가있으면 check를 false로함
function should(){
    shouldCheck=true;
   $(".should").each(function(){
      var c =$(this).val().length;
      if(c<1){
         shouldCheck=false;
      }
   });
}


var checkall = document.getElementById("checkall");
var ch = document.getElementsByClassName("ch");

//전체동의
checkall.addEventListener('click', function() {
   for(var i=0;i<ch.length;i++){
      ch[i].checked = checkall.checked;
   }
});

//
   for(var i=0;i<ch.length;i++) {
      ch[i].addEventListener('click', function() {
         //-----------------------------------------
         var result = true;
         for(var j=0; j<ch.length; j++) {
            if(!ch[j].checked) {
               result = false;
            }
         }
         
         checkall.checked=result;
      });
   }

</script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
           $("[name=addr1]").val(data.zonecode);
           $("[name=addr2]").val(fullRoadAddr);
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}

</script>

</body>
</html>