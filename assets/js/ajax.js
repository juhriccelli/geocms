/*Evento para escutar em qual estado esta clicando */
$(document).ready(function() {
  $(".competicao").on('click', function() {
    competicao = $(this).attr('id');
    mostrarMapa();
    realizarBusca(competicao);
  });
});

//Função para mostrar o Mapa
function mostrarMapa() {
  $.ajax({
    type: "GET",
    url: 'pages/mapa.php',
    success: function(data) {
      $('#ajax').html(data);
    }
  });
}

//Função para realizar busca
function realizarBusca(competicao) {
  $.ajax({
    type: "POST",
    url: 'bd/consulta.php',
    data: {'competicao': competicao},
    success: function(data) {
      $().html(data);
    }
  });
}
