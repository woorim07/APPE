//script.js
function checkResv() {
	if (frm.username.value == '') {
		alert("이름이 입력되지 않았습니다!");
		frm.resv_no.focus();
	} else if (frm.userid.value == '') {
		alert("아이디가 입력되지 않았습니다!");
		frm.cust_no.focus();
	} else if (frm.password.value == '') {
		alert("비밀번호가 입력되지 않았습니다!");
		frm.resv_date.focus();
	} else if (frm.email.value == '') {
		alert("이메일이 입력되지 않았습니다!");
		frm.court_no.focus();
	}
	else {
		alert("코트예약정보가 등록되었습니다");
		frm.submit();
	}

}
function resetResv() {
	alert("정보를 지우고 처음부터 다시 입력합니다.");
	frm.reset();
}

function checkCust() {
	if (sfrm.cust_no.value == '') {
		alert("고객번호가 입력되지 않았습니다!");
		sfrm.cust_no.focus();
	} else {
		sfrm.submit();
	}
}