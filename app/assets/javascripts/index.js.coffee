$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $('#content').html(templateFunc(data))

  $('section').on 'click', 'p', (e) ->
    id = $(@).data('id')
    showPage "/api/clothing_items/#{id}/looks", closetXY.looksTemplate

  $('section').on 'click', 'div ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/looks/#{id}", closetXY.lookTemplate

  $('section').on 'click', 'ul li', (e) ->
    id = $(@).data('id')
    showPage "/api/users/#{id}/closet_items", closetXY.userTemplate
        
  $('section').on 'click', '#back-to-users', (e) ->
    showPage '/api/users', closetXY.usersTemplate
        
  showPage '/api/users', closetXY.usersTemplate