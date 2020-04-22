function overlay(ruleDoc) {
	el = document.getElementById("overlay");
	if (el.style.visibility == "visible") {
		el.style.visibility = "hidden";
	} else {
		el.style.visibility = "visible";
		loadRuleDoc(ruleDoc);
	}
}
