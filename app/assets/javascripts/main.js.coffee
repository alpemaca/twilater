$ ->
  $('#main-tabs-section').children('ul').on('click', 'a', (e) ->
    e.preventDefault()
    $(this).tab 'show'
    return
  )

  $('#webs').on('click', '.toggle-display-tweet', ->
    if $(this).hasClass 'active'
      $(this).text 'ver tweet'
    else
      $(this).text 'ocultar tweet'

    $(this).closest('li').children('.tweet').toggle()
    $(this).toggleClass 'active'
  )
