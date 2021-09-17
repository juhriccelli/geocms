/*Evento para escutar em qual estado esta clicando */
$(document).ready(function() {
  $(".competicao").on('click', function() {
    var competicao = $(this).attr('id');
    buscaPorCompeticao(competicao);
  });
});

//Função para enviar a competição que deseja
function buscaPorCompeticao(competicao) {
  $.ajax({
    type: "GET",
    url: 'pages/consulta.php',
    data: "competicao=" + competicao, // appears as $_GET['id'] @ your backend side
  });

  $.ajax({
    type: "GET",
    url: 'pages/mapa.php',
    data: "competicao=" + competicao, // appears as $_GET['id'] @ your backend side
    success: function(data) {
      // data is ur summary
      $('#ajax').html(data);
    }

  });

}
