$ ->
  $('#main-tabs-section').children('ul').on('click', 'a', (e) ->
    e.preventDefault()
    $(this).tab 'show'
    return
  )
