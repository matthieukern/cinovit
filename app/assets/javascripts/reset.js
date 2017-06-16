function resetAppli() {
    localStorage.setItem("answers", "{\"answers\":[");
    first=true;
    throw_info("Données correctement réinitialisées");
    notReset();
}

function notReset() {
    popup.css("display", "none");
    toolbar.css("display", "block");
    cinov.css("display", "block");
}

function resetPopup() {
    cinov.css("display", "none");
    toolbar.css("display", "none");
    popup.empty();
    popup.css("display", "block");
    popup.append("<button id='confirm' onClick='resetAppli()'>" +
		   "Confirmer" +
		 "</button>" +
		 "<button id='unconfirm' onClick='notReset()'>" +
		   "Annuler" +
		 "</button>");
}
