function searchAndFilter() {
  let input, filter;
  input = document.getElementById("ricerca");
  filter = input.value.toUpperCase();

  filteredProducts = catalogo.filter(product => {
    const textValue = product.nome.toUpperCase();
    return textValue.includes(filter);
  });

  const selectedCategories = Array.from(document.querySelectorAll('input.cat:checked')).map(input => input.value);
  const selectedGenres = Array.from(document.querySelectorAll('input.gen:checked')).map(input => input.value);

  filteredProducts = filteredProducts.filter(product => {
    const categoryMatches = selectedCategories.length === 0 || selectedCategories.includes(product.categoria);
    const genreMatches = selectedGenres.length === 0 || selectedGenres.includes(product.genere);
    return categoryMatches && genreMatches;
  });

  totalPages = Math.ceil(filteredProducts.length / itemsPerPage);
  createProductCards2(1, filteredProducts);
  createPaginationLinks2(totalPages);
}
