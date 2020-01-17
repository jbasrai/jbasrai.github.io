window.onload = function() {
	var quote = document.getElementById("quote");
	var load = document.getElementById("load");

	load.classList.add("hidden");

	var q = quote.getBoundingClientRect();
	var l = load.getBoundingClientRect();
	var offset = Math.floor((q.bottom + 12) - l.top);
	load.style.setProperty("margin-top", offset + "px");
	load.style.setProperty("transition", "opacity 0.4s ease-in");

	function onScroll(e) {
		console.log(e);
		var rect = quote.getBoundingClientRect();

		if (window.innerHeight - rect.bottom > 100) {
			load.classList.remove("hidden");
			window.removeEventListener("scroll", onScroll);
		}
	}

	window.addEventListener("scroll", onScroll);
}

