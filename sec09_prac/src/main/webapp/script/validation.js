/**
 * 
 */
 
 function employeeCheck(){
	console.log(document.frm.name.value)
	if(document.frm.name.value.length == 0){
		alert("이름을 입력해주세요.");
		frm.name.focus();
		return false;
	}
	if(document.frm.lev.value.length == 0){
		alert("권한을 선택해주세요.");
		frm.lev.focus();
		return false;
	}
	
	return true;
}