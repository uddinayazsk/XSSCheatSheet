function validateUserInput() {
	var userInput = document.getElementById("userInput").value;
	if (userInput != null && userInput != "") {
		return true;
	} else {
		alert('Please provide the input in textbox, refer sample input beside it.');
		resetPage();
		return false;
	}

}
function validateUserInputEnterKeyPress(e) {
	if (e.keyCode == 13) {
		document.getElementById("btnApplyRule").click();
	}	
}
function resetPage() {
	document.getElementById("userInput").value = "";
	document.getElementById("beforeApplyRuleDiv").innerHTML = "Output";
	document.getElementById("beforeApplyRuleCSDiv").innerHTML = "Source Code";
	document.getElementById("afterApplyRuleDiv").innerHTML = "Output";
	document.getElementById("afterApplyRuleCSDiv").innerHTML = "Source Code";
}