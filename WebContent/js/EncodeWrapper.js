function jsEscape(userInput){
	var value = (userInput!=null && userInput != "")?escape(userInput):null;
	return value;
}

function jsEncodeURI(userInput){
	var value = (userInput!=null && userInput != "")?encodeURI(userInput):null;
	return value;
}

function jsEncodeURIComponent(userInput){
	var value = (userInput!=null && userInput != "")?encodeURIComponent(userInput):null;
	return value;
}