function reorderQuestions(elem) {
      this[elem.question_id] = elem;
}

function launchPoll() {
    pollId = $("input[name=nextQuestion]:checked", "#ansForm").val();
    if (pollId >= 0) {
	$.getJSON("/fieldsets/" + pollId + ".json", function (data) {
	    pollDatas = data;
            reordered = new Object();
            pollDatas.questions.forEach(reorderQuestions, reordered);
            pollDatas.questions = reordered;
	    newPoll();
	});
    } else {
	throw_error("Vous devez sélectionner un item pour continuer !");
    }
}

function updatePollSelection(id, length) {
    for (var i = 0; i < length; ++i) {
	document.getElementById("ans" + i).checked = true;
    }
    document.getElementById("ans" + id).checked = true;
}

function selectPoll() {
    $('html,body').animate({scrollTop: 0}, 0);
    infos.empty();
    cinov.empty();
    store();
    $.getJSON("/fieldsets.json", function (pollList) {
	infos.empty();
	cinov.empty();

	cinov.append("<div class='questionName'>" +
		       "Choix du sondage" +
		     "</div>" +
		     "<div class='questionDesc'>" +
		       "Choisissez un sondage parmis ces différentes possibilités" +
		     "</div><br />" +
		     "<form id='ansForm'></form>");
	form = $("#ansForm");

	form.append("<input checked type='radio' name='nextQuestion' value='-1' style='display:none'>" +
		    "<table id='ansList'></table>");
	var table = $( "#ansList" );
	for (var i = 0; i < pollList.length; ++i) {
	    table.append("<tr>" +
			   "<td class='selectLabel' id='selectLabel" + i + "' onClick='updatePollSelection(" + i  + ", " + pollList.length + ")'>" +
			     "<input type='radio' id='ans" + i + "' name='nextQuestion' class='nextQuestion' value='" + pollList[i][1] + "'>" +
			     "<label for='ans" + i + "' class='labelForNextQuestion'>" +
			       "<div class='answerName'>" +
			         pollList[i][0] +
			       "</div>" +
			     "</label>" +
			   "</td>" +
			 "</tr>");
	}

	cinov.append("<button id='submitAns' class='ansButton' onClick='launchPoll()'>" +
		       "Valider" +
		     "</button>");
	toolbar.empty();
	toolbar.append("<button id='transferDatas' onClick='transferDatas()'>" +
		         "Synchronisation" +
		       "</button>" +
		       "<button id='resetAppli' onClick='resetPopup()' style='margin-top: 30px'>" +
		         "Reset appli" +
		       "</button>");
    });
}

function newPoll() {
    $('html,body').animate({scrollTop: 0}, 0);
    store();
    toolbar.empty();
    toolbar.append("<button id='newPoll' onClick='newPoll()'>" +
		     "Nouveau sondage" +
		   "</button><br />" +
		   "<button id='reinitPoll' onClick='selectPoll()'>" +
		     "Changer de sondage" +
		   "</button><br />" +
		   "<button id='transferDatas' onClick='transferDatas()'>" +
		     "Synchronisation" +
		   "</button>" +
		   "<button id='resetAppli' onClick='resetPopup()' style='margin-top: 30px'>" +
		     "Reset appli" +
		   "</button>");
    question(0);
}
