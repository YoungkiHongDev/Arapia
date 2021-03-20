function logincheck()
{
	if(document.logform.logid.value=="")
	{
		alert("아이디를 입력하세요.");
		document.loginform.logid.focus();
		return;
	}
	
	if(document.logform.logpw.value=="")
	{
		alert("비밀번호를 입력하세요.");
		document.loginform.logpw.focus();
		return;
	}
	document.logform.submit();
}

function memberReg(){
	document.location="Resister.jsp";
}

function resinfochk()
{
	if(document.resinputform.resid.value=="")
	{
		alert("아이디를 입력하세요.");
		document.resinputform.resid.focus();
		return;
	}
	if(document.resinputform.respw.value=="")
	{
		alert("비밀번호를 입력하세요");
		document.resinputform.respw.focus();
		return;
	}
	if(document.resinputform.respwchk.value=="")
	{
		alert("비밀번호확인을 입력하세요");
		document.resinputform.respwchk.focus();
		return;
	}
	if(document.resinputform.resname.value=="")
	{
		alert("이름을 입력하세요.");
		document.resinputform.resname.focus();
		return;
	}
	if(document.resinputform.resnick.value=="")
	{
		alert("닉네임을 입력하세요.");
		document.resinputform.resnick.focus();
		return;
	}
	if(document.resinputform.resemail.value=="")
	{
		alert("이메일을 입력하세요.");
		document.resinputform.resemail.focus();
		return;
	}
	if(document.resinputform.resphone.value=="")
	{
		alert("핸드폰번호를 입력하세요.");
		document.resinputform.resphone.focus();
		return;
	}
	if(document.resinputform.resaddr.value=="")
	{
		alert("주소 입력하세요.");
		document.resinputform.resaddr.focus();
		return;
	}
	if(document.resinputform.resaddr.value=="")
	{
		alert("주소 입력하세요.");
		document.resinputform.resaddr.focus();
		return;
	}
	if(document.resinputform.respw.value != document.resinputform.respwchk.value)
	{
		alert("비밀번호가 다릅니다.");
		document.resinputform.respwchk.focus();
		return;
	}
	
	var str = document.resinputform.resemail.value;	   
	var atPos = str.indexOf('@');
	var atLastPos = str.lastIndexOf('@');
	var dotPos = str.indexOf('.'); 
	var spacePos = str.indexOf(' ');
	var commaPos = str.indexOf(',');
	var eMailSize = str.length;
	if (atPos > 1 && atPos == atLastPos && 
	   dotPos > 3 && spacePos == -1 && commaPos == -1 
	   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
	else {
		  alert('E-mail 입력 형식이 맞지않습니다.');
		  document.regForm.mem_email.focus();
		  return;
	}
	
	document.resinputform.submit();
}


function resupdatechk()
{
	
	if(document.resupdateform.respw.value=="")
	{
		alert("비밀번호를 입력하세요");
		document.resinputform.respw.focus();
		return;
	}
	if(document.resupdateform.respwchk.value=="")
	{
		alert("비밀번호확인을 입력하세요");
		document.resinputform.respwchk.focus();
		return;
	}
	if(document.resupdateform.resname.value=="")
	{
		alert("이름을 입력하세요.");
		document.resupdateform.resname.focus();
		return;
	}
	if(document.resupdateform.resnick.value=="")
	{
		alert("닉네임을 입력하세요.");
		document.resupdateform.resnick.focus();
		return;
	}
	if(document.resupdateform.resemail.value=="")
	{
		alert("이메일을 입력하세요.");
		document.resupdateform.resemail.focus();
		return;
	}
	if(document.resupdateform.resphone.value=="")
	{
		alert("핸드폰번호를 입력하세요.");
		document.resupdateform.resphone.focus();
		return;
	}
	if(document.resupdateform.resaddr.value=="")
	{
		alert("주소 입력하세요.");
		document.resupdateform.resaddr.focus();
		return;
	}
	
	if(document.resupdateform.respw.value != document.resupdateform.respwchk.value)
	{
		alert("비밀번호가 다릅니다.");
		document.resupdateform.respwchk.focus();
		return;
	}
	
	var str = document.resupdateform.resemail.value;	   
	var atPos = str.indexOf('@');
	var atLastPos = str.lastIndexOf('@');
	var dotPos = str.indexOf('.'); 
	var spacePos = str.indexOf(' ');
	var commaPos = str.indexOf(',');
	var eMailSize = str.length;
	if (atPos > 1 && atPos == atLastPos && 
	   dotPos > 3 && spacePos == -1 && commaPos == -1 
	   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
	else {
		  alert('E-mail 입력 형식이 맞지않습니다.');
		  document.resupdateform.mem_email.focus();
		  return;
	}
	
	document.resupdateform.submit();
}



function idCheck(id){
	if(id == ""){
		alert("아이디를 확인해주세요.");
		document.regForm.mem_id.focus();
	}else{
		url="rescheck.jsp?resid=" + id;
		window.open(url,"post","width=400,height=250");
	}
}

function nobelboard(no) {
	document.detail.no.value=no;
	document.detail.submit();
}


function nobelUpdate(form){
	form.flag.value="update"
	form.submit();
}

function nobelDelete(form) {
	form.flag.value="del";
	form.submit();
}

function prechk(contentid)
{
	if(contentid > 1)
	{
		number(contentid);
		var num = 0 ;
		num = contentid - 1;
		String(num);
		location.href="nobelcontent.jsp?contentid=num";
	}
	else
	{
		return;
	}
}
function nextchk(contentid,size)
{
	if((contentid > 0) && (contentid <= size))
	{
		number(contentid);
		var num = 0 ;
		num = contentid - 1;
		location.href="nobelcontent.jsp?contentid=num";
	}
	else
	{
		return;
	}
}