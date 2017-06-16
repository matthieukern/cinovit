function updateAnswer(id, type, questionId) {
    if (type == "checkbox") {
	if (document.getElementById("ans" + id).checked == true) {
	    document.getElementById("ans" + id).checked = false;
	} else {
	    document.getElementById("ans" + id).checked = true;
	}
    } else {
	for (var i = 0; i < pollDatas.questions[questionId].answers.length; ++i) {
	    document.getElementById("ans" + i).checked = true;
	}
	document.getElementById("ans" + id).checked = true;
    }
}

function openAnswers(id, form) {
    form.append("<div class=selectLabel>" +
		  "<textarea id='nextQuestion'></textarea>" +
		"</div>");
}

function checkboxAnswers(id, form) {
    form.append("<table id='ansList'></table>");
    var table = $( "#ansList" );
    for (var i = 0; i < pollDatas.questions[id].answers.length; ++i) {
	table.append("<tr>" +
		       "<td class='selectLabel' id='selectLabel" + i + "' onClick='updateAnswer(" + i + ", \"checkbox\", \"" + id + "\")'>" +
		         "<input type='checkbox' id='ans" + i + "' name='nextQuestion' class='nextQuestion' value='" + pollDatas.questions[id].answers[i].answer_id + "'> " +
		         "<label for='ans" + i + "' class='labelForNextQuestion'>" +
		           "<div class='answerName'>" +
		             pollDatas.answers[pollDatas.questions[id].answers[i].answer_id].name +
		           "</div>" +
		           "<div class='answerDesc'>" +
		             pollDatas.answers[pollDatas.questions[id].answers[i].answer_id].desc +
		           "</div>" +
		         "</label>" +
		       "</td>" +
		     "</tr>");
    }
}

function radioAnswers(id, form) {
    form.append("<input checked type='radio' name='nextQuestion' value='-1' style='display:none'>" +
		"<table id='ansList'></table>");
    var table = $( "#ansList" );
    for (var i = 0; i < pollDatas.questions[id].answers.length; ++i) {
	table.append("<tr>" +
		       "<td class='selectLabel' id='selectLabel" + i + "' onClick='updateAnswer(" + i + ", \"radio\", \"" + id + "\")'>" +
		         "<input type='radio' id='ans" + i + "' name='nextQuestion' class='nextQuestion' value='" + i + "'>" +
		         "<label for='ans" + i + "' class='labelForNextQuestion'>" +
		           "<div class='answerName'>" +
		             pollDatas.answers[pollDatas.questions[id].answers[i].answer_id].name +
		           "</div>" +
		           "<div class='answerDesc'>" +
		             pollDatas.answers[pollDatas.questions[id].answers[i].answer_id].desc +
		           "</div>" +
		         "</label>" +
		       "</td>" +
		     "</tr>");
    }
}
