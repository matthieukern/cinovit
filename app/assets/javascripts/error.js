function throw_error(text) {
    infos.append("<span class='errorDisp'>" + text + "</span>");
    window.setTimeout(function() {
	$("span[class=errorDisp]")[0].remove();
    }, 3000);
}

function throw_warning(text) {
    infos.append("<span class='warningDisp'>" + text + "</span>");
    window.setTimeout(function() {
	$("span[class=warningDisp]")[0].remove();
    }, 3000);
}

function throw_success(text) {
    infos.append("<span class='successDisp'>" + text + "</span>");
    window.setTimeout(function() {
	$("span[class=successDisp]")[0].remove();
    }, 3000);
}

function throw_info(text) {
    infos.append("<span class='infoDisp'>" + text + "</span>");
    window.setTimeout(function() {
	$("span[class=infoDisp]")[0].remove();
    }, 3000);
}
