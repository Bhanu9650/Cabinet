$(document).ready(function() {
  var timerIntervalId;
  $('#doc_content').on('keydown', function() {
    $('#content-word-count').text($(this).val().split(' ').length);
  });

  $('#start-time').on('click', function() {
    $(this).addClass('hidden');
    $('#end-time').removeClass('hidden');
    var $timeBoardSpan = $('#time-board span').first();

    var currentTimeTaken = parseInt($timeBoardSpan.text());
    timerIntervalId = setInterval(function() {
      currentTimeTaken += 1;
      $timeBoardSpan.text(currentTimeTaken);
    }, 1000);
  });

  $('#end-time').on('click', function() {
    $(this).addClass('hidden');
    $('#start-time').removeClass('hidden');

    clearInterval(timerIntervalId);
  });
  $('#doc-submit-button').on('click', function() {
    $('#doc_time_taken').val($('#time-board span').first().text());
  });
});