$ ->
  showPage = (url, templateFunc) ->
    $.ajax url,
      type: 'GET',
      dataType: 'json',
      success: (data) ->
        $('#content').html(templateFunc(data))

  $('section').on 'click', 'div img', (e) ->
    id = $(@).data('id')
    showPage "/api/looks/#{id}", Handlebars.templates.look

  $('section').on 'click', 'div#tabs div.tabs-inner img', (e) ->
    id = $(@).data('id')
    showPage "/api/clothing_items/#{id}/looks", Handlebars.templates.looks

 
   $('section').on 'click', 'div#new_tabs img', (e) ->
    id = $(@).data('id')
    $.ajax "/api/clothing_items/#{id}",
      type: 'GET',
      success: (data) ->
        console.log('Success!')
        console.log(data)
        clothing_item = data.clothing_items[0]
        console.log(clothing_item.id)
        category=clothing_item.category
        if (category=="top")
          $("#top_for_look").html(id)
        if (category=="bottom")
          $("#bottom_for_look").html(id)
        if (category=="outerwear")
          $("#outerwear_for_look").html(id)
        if (category=="accessory")
          $("#accessory_for_look").html(id)


  $('section').on 'click', 'div#closet_tabs img', (e) ->
    id = $(@).data('id')
    $.ajax "/api/clothing_items/#{id}",
      type: 'GET',
      success: (data) ->
        console.log('Success!')
        console.log(data)
        clothing_item = data.clothing_items[0]
        console.log(clothing_item.id)
        category=clothing_item.category
        if (category=="top")
          $("#top_for_look").html(id)
        if (category=="bottom")
          $("#bottom_for_look").html(id)
        if (category=="outerwear")
          $("#outerwear_for_look").html(id)
        if (category=="accessory")
          $("#accessory_for_look").html(id)
       
  $('section').on 'submit', '#look-create-form', (e) ->
    e.preventDefault()
    $.ajax "/api/looks",
      type: 'POST',
      data: $(@).serialize(),
      dataType: 'text',
      success: (x) ->
        console.log('Success!')
        showPage '/api/looks', Handlebars.templates.looks
    

  $('#FriendsNav').on 'click', (e) ->
    $('.navbar-collapse collapse').find('li').removeClass('active');
    $(@).addClass('active')
    showPage "/api/users", Handlebars.templates.users

  $('#ClosetNav').on 'click', (e) ->
    $('.navbar-collapse collapse').find('li').removeClass('active');
    $(@).addClass('active')
    id = currentUserId
    showPage "/api/my_closet", Handlebars.templates.my_closet

  $('#MarketNav').on 'click', (e) ->
    $('.navbar-collapse collapse').find('li').removeClass('active');
    $(@).addClass('active')
    showPage "/api/new_items", Handlebars.templates.market

  $('#LookNav').on 'click', (e) ->
    $('.navbar-collapse collapse').find('li').removeClass('active');
    $(@).addClass('active')
    showPage "/api/looks", Handlebars.templates.looks

  $('section').on 'click', 'ul li span', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}/closet_items", Handlebars.templates.user
        
  $('section').on 'click', '#back-to-users', (e) ->
    showPage '/api/users', Handlebars.templates.users

  $('section').on 'click', 'button.show-add-form', (e) ->
    $('#content').html Handlebars.templates.user_add

  $('section').on 'submit', 'form#user-add-form', (e) ->
    e.preventDefault()
    $.ajax "/api/users",
      type: 'POST',
      data: $(@).serialize(),
      dataType: 'text',
      success: (x) ->
        console.log('Success!')
        showPage '/api/users', Handlebars.templates.users


  $('section').on 'submit', 'form#comment-add-form', (e) ->
    e.preventDefault()
    lookId = $(@).data('id')
    console.log(lookId)
    $.ajax "/api/looks/#{lookId}/comments",
      type: 'POST',
      data: $(@).serialize(),
      dataType: 'text',
      success: (x) ->
        console.log('Success!')
        showPage "/api/looks/#{lookId}", Handlebars.templates.look


  


  $('section').on 'click', 'button.createLook', (e) ->
    showPage "/api/clothing_items", Handlebars.templates.look_create  

  $('section').on 'submit', 'form#user-edit-form', (e) ->
    e.preventDefault()
    id = $(@).data('id')
    $.ajax "/api/users/#{id}",
      type: 'PATCH',
      data: $(@).serialize(),
      success: (x) ->
        console.log('Success!')
        showPage '/api/users', Handlebars.templates.users 


  $('section').on 'click', 'button.show-closet-item-add-form', (e) ->
    e.preventDefault()
    console.log("click")
    $('#content').html Handlebars.templates.closet_item_add

  $('section').on 'submit', 'form#closet-item-add-form', (e) ->
    e.preventDefault()
    id = currentUserId
    $.ajax "/api/users",
      type: 'POST',
      data: $(@).serialize(),
      dataType: 'text',
      success: (x) ->
        console.log('Success!')
        showPage '/api/users/#{id}/closet_items', Handlebars.templates.users

  

  $('section').on 'click', 'ul li button.edit', (e) ->
    id = $(@).parent().data('id')
    showPage "/api/users/#{id}", Handlebars.templates.user_edit

  $('section').on 'click', 'ul li button.delete', (e) ->
    id = $(@).parent().data('id')
    $.ajax "/api/users/#{id}",
      type: 'DELETE',
      success: ->
        showPage '/api/users', Handlebars.templates.users

  
        
        
  showPage '/api/users', Handlebars.templates.users