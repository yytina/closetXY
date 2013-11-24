$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $('#content').html(templateFunc(data))
    
  $('section').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/users/#{id}", closetXY.userTemplate
        
  $('section').on 'click', '#back-to-users', (e) ->
    showPage '/api/users', closetXY.usersTemplate
        
  showPage '/api/users', closetXY.usersTemplate