$(document).ready ->
  $('#language_selector').on 'change.bfhselectbox', (e) ->
    locale = switch $(event.target).text()
             when 'English'
               'en'
             when 'Deutsch'
               'de'

    window.location = window.location.pathname.replace /^\/[a-z]{2}/, "/#{locale}"
