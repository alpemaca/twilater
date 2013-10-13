$ ->
  $('#main-tabs').on('click', 'a', (e) ->
    e.preventDefault()
    $(this).tab 'show'
    return
  )
