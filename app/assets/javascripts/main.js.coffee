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
    return
  )

  $('#webs').on('click', '.link', ->
    iframe-container = $('#iframe-container')
    href = $(this).text()

    iframe-container.children('object').remove()

    iframe = $('<object draggable type="text/html" data="'+href+'"></object>')
    iframe-container.append(iframe)

    iframe-container.children('a').attr('href', href)
    return
  )

  return

