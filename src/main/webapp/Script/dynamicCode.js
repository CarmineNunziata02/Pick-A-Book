/* 
 * INDEX JAVASCRIPT PER ELEMENTI DINAMICI
 * Caricamento ultimi prodotti aggiunti -> index.jsp
 * Caricamento prodotti suggeriti -> index.jsp
*/
function dynamicIndex(url) {
	$.ajax({
		url: url,
		type: 'GET',
		contentType: 'application/json; charset=utf-8'
	}).done((response) => {
		response = JSON.parse(response);
		let contenutoHtml = "";

		for (const prodotto of response) {
			contenutoHtml += "<div class=\"scheda\">";
			contenutoHtml += "<div class=\"nuovo\"> <h6> NUOVO </h6> </div>";
			contenutoHtml += "<a href=\"ProdottoServlet?isbn=" + prodotto.isbn + "\"><img src=\"" + prodotto.immagine + "\"> </a>";
			contenutoHtml += "<div class=\"info\">";
			contenutoHtml += "<h4>" + prodotto.nome + "</h4>";
			contenutoHtml += "<p>&#8364 " + prodotto.prezzo.toFixed(2) + "</p>";
			contenutoHtml += "</div> </div>";
		}


		$("#schedeUltimeAggiunte").append(contenutoHtml);
	});
}

function dynamicIndex2(url) {
	$.ajax({
		url: url,
		type: 'GET',
		contentType: 'application/json; charset=utf-8'
	}).done((response) => {
		response = JSON.parse(response);
		let contenutoHtml = "";

		let contatore = 1;

		for (const prodotto of response) {
			const medalClass = getMedalClass(contatore);
			contenutoHtml += "<div class=\"scheda\">";
			contenutoHtml += "<div class=\"nuovo " + medalClass + "\"> <h6> " + contatore + " </h6> </div>";
			contenutoHtml += "<a href=\"ProdottoServlet?isbn=" + prodotto.isbn + "\"><img src=\"" + prodotto.immagine + "\"> </a>";
			contenutoHtml += "<div class=\"info\">";
			contenutoHtml += "<h4>" + prodotto.nome + "</h4>";
			contenutoHtml += "<p>&#8364 " + prodotto.prezzo.toFixed(2) + "</p>";
			contenutoHtml += "</div> </div>";

			contatore++;
		}

		$("#schedeBestSeller").append(contenutoHtml);
	});

	function getMedalClass(position) {
		if (position === 1) {
			return "gold";
		} else if (position === 2) {
			return "silver";
		} else if (position === 3) {
			return "bronze";
		} else {
			return "";
		}
	}
}

function dynamicCatalog(url) {
	$.ajax({
		url: url,
		type: 'GET',
		contentType: 'application/json; charset=utf-8'
	}).done((response) => {
		catalogo = JSON.parse(response);
		let currentPage = 1;

		const totalPages = Math.ceil(catalogo.length / itemsPerPage);

		createProductCards(currentPage);
		createPaginationLinks(totalPages);
	});
}




function dynamicCategorie(url) {
	$.ajax({
		url: url,
		type: 'GET',
		contentType: 'application/json; charset=utf-8'
	}).done((response) => {
		response = JSON.parse(response);

		let filtriCategoria = "<tr> <td> <h4> Categoria </h4> </td> </tr>";
		for (const categoria of response) {
			filtriCategoria += "<tr> <td>";
			filtriCategoria += "<input type=\"checkbox\" class=\"cat\"  value=\"" + categoria + "\"name=\"categoria\" onchange=\"searchAndFilter()\">";
			filtriCategoria += "<label class=\"secondset\">" + categoria + "</label>";
			filtriCategoria += "</td> </tr>";
		}
		$("#categorie").append(filtriCategoria);
	});
}

function dynamicGeneri(url) {
	$.ajax({
		url: url,
		type: 'GET',
		contentType: 'application/json; charset=utf-8'
	}).done((response) => {
		response = JSON.parse(response);

		let filtriGenere = "<tr> <td> <h4> Genere </h4> </td> </tr>";
		for (const genere of response) {
			filtriGenere += "<tr> <td>";
			filtriGenere += "<input type=\"checkbox\" class=\"gen\" name=\"genere\" value=\"" + genere + "\" onchange=\"searchAndFilter()\">";
			filtriGenere += "<label class=\"firstset\">" + genere + "</label>";
			filtriGenere += "</td> </tr>";
		}
		$("#generi").append(filtriGenere);
	});
}
