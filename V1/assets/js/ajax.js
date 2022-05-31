/*Evento para escutar em qual estado esta clicando */
$(document).ready(function() {
  $(".competicao").on('click', function() {
    buscar = $(this).attr('id');
    mostrarMapa();
  });
});

//Função para mostrar o Mapa
function mostrarMapa() {
  $.ajax({
    type: "POST",
    url: 'pages/mapa.php',
    success: function(data) {
      $('#ajax').html(data);
    }
  });
}
