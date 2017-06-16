function main() {
    old = localStorage.getItem("answers");
    if (!old || old.substring(0, 11) != "{\"answers\":") {
	first = true;
	console.log("old: " + old);
	localStorage.setItem("answers", "{\"answers\":[");
    } else if (old.substring(0, 13) == "{\"answers\":[") {
	first = true;
    } else {
	first = false;
    }
    answersDatas = [];
    selectPoll();
}
