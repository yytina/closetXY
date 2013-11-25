@closetXY =
  usersTemplate: Handlebars.compile "
    <ul>
      {{#each users}}
        <li data-id=\"{{id}}\">{{name}}</li>
      {{/each}}
    </ul>
  "

  userTemplate: Handlebars.compile "
    <div id=\"tabs\">
      <ul>
        <li><a href=\"#tabs-top\">Top</a></li>
        <li><a href=\"#tabs-bottom\">Bottom</a></li>
        <li><a href=\"#tabs-outerwear\">Outerwear</a></li>
        <li><a href=\"#tabs-accessory\">Accessory</a></li>
      </ul>
      {{#each categories}}
        <div id=\"tabs-{{name}}\">
          {{#each clothing_items}}

            <img src=\"/placeholder.jpg\" />
            <p data-id=\"{{id}}\">{{id}}/{{category}}/{{color}}/{{size}}/{{material}}</p>    
          {{/each}}
        </div>
      {{/each}}
    </div>

    <script>
      $('#tabs').tabs();
    </script>

    <p><a id=\"back-to-users\" href=\"#\">Back to Users</a></p>
    <form>
      <input type=\"text\">
      <button> Update</button>
    </form>
  "

  looksTemplate: Handlebars.compile "
  <div>
	  <ul>
	    {{#each looks}}
	      <li data-id=\"{{id}}\">{{title}}: top-{{top.color}}/{{top.material}}
	      bottom-{{bottom.color}}/{{bottom.material}}</li>
	    {{/each}}
	  </ul>
  <div>
  "

  lookTemplate: Handlebars.compile "

  <section>New Item:</section>
  <section>Closet Item:</section>
  {{#each looks}}
     <p data-id=\"{{id}}\">{{title}}</p>      
     <p>top:{{top.id}} {{top.color}} {{top.material}}</p>
     <p>bottom:{{bottom.id}} {{bottom.color}} {{bottom.material}}</p>
     <p>outerwear:{{outerwear.id}} {{outerwear.color}} {{outerwear.material}}</p>
     <p>accessory:{{accessory.id}} {{accessory.color}} {{accessory.material}}</p>
    


  {{/each}}

  
   
  "