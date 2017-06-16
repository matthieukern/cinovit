function transferDatas() {
    var url = "/reply/";
    var datas = localStorage.getItem("answers");
    datas = datas + "]}";
    console.log(datas);
    datas = JSON.parse(datas);
    console.log(datas);
    $.ajax({
	type: "POST",
	url: url,
	data: datas,
	complete: function(jqXHR, textStatus) {
	    switch (jqXHR.status) {
            case 200:
		throw_success("Données correctement envoyées au serveur !");
		localStorage.setItem("answers", "{\"answers\":[");
		first=true;
		break;
	    default:
		throw_error("Impossible d'envoyer les données au serveur !");
		break;
	    }
	}
    });
}

function store() {
    if (answersDatas.length > 0) {
	var object = new Object();
	object.title = pollDatas.title;
	object.length = answersDatas.length;
	object.answers = answersDatas;

	var old = localStorage.getItem("answers");
	if (!first)
	    localStorage.setItem("answers", old + "," + JSON.stringify(object));
	else
	    localStorage.setItem("answers", old + JSON.stringify(object));
	first = false;
    }
    answersDatas = [];
}
