function nextQuestion(id) {
    var object = new Object();

    object.idquestion = id;
    if (pollDatas.questions[id].type == "radio") {
	if ($("input[name=nextQuestion]:checked", "#ansForm").val() >= 0) {
	    object.idanswer = [];
	    object.idanswer.push(pollDatas.questions[id].answers[$("input[name=nextQuestion]:checked", "#ansForm").val()].answer_id)
	    answersDatas.push(object);
	    question(pollDatas.questions[id].answers[$("input[name=nextQuestion]:checked", "#ansForm").val()].next_id);
	} else {
	    throw_error("Vous devez sélectionner un item pour continuer !");
	}
    } else if (pollDatas.questions[id].type == "checkbox") {
	var output = [];
	$("input[name=nextQuestion]:checked", "#ansForm").each(function () {
	    output.push($(this).attr('value'));
	});
	object.idanswer = output;
	answersDatas.push(object);
	question(pollDatas.questions[id].next_id);
    } else if (pollDatas.questions[id].type == "open") {
	object.answer = $("#nextQuestion").val();
	answersDatas.push(object);
	question(pollDatas.questions[id].next_id);
    }
}

function question(id) {
    infos.empty();
    cinov.empty();

    $('html,body').animate({scrollTop: 0}, 0);

    if (id == "end" || (!id && answersDatas.length > 0)) {
	store();
    } else {
	cinov.append("<div class='questionName'>" +
		       pollDatas.questions[id].name +
		     "</div>" +
		     "<div class='questionDesc'>" +
		       pollDatas.questions[id].desc +
		     "</div>");
	if (pollDatas.questions[id].type == 'radio') {
	    cinov.append("<div class='questionInd'>" +
			   "(Choix simple)" +
			 "</div>");
	} else if (pollDatas.questions[id].type == 'checkbox') {
	    cinov.append("<div class='questionInd'>" +
			   "(Choix multiple)" +
			 "</div>");
	} else if (pollDatas.questions[id].type == 'open') {
	    cinov.append("<div class='questionInd'>" +
			   "(Question ouverte)" +
			 "</div>");
	}

	cinov.append("<form id='ansForm'></form>");
	if (pollDatas.questions[id].type == "radio") {
	    radioAnswers(id, $("#ansForm"));
	} else if (pollDatas.questions[id].type == "checkbox") {
	    checkboxAnswers(id, $("#ansForm"));
	} else if (pollDatas.questions[id].type == "open") {
	    openAnswers(id, $("#ansForm"));
	}
	cinov.append("<button id='submitAns' class='ansButton' onClick='nextQuestion(\"" + id + "\")'>" +
		       "Valider" +
		     "</button>");
    }
}
