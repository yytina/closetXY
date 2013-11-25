@closetXY =
  usersTemplate: Handlebars.compile "
    <ul>
      {{#each users}}
        <li data-id=\"{{id}}\">{{name}}</li>
      {{/each}}
    </ul>
  "

  userTemplate: Handlebars.compile "
	    {{#each clothing_items}}
	       <p data-id=\"{{id}}\">{{id}}/{{category}}/{{color}}/{{size}}/{{material}}</p>      
	    {{/each}}
    <p><a id=\"back-to-users\" href=\"#\">Back to Users</a></p>
  "

  looksTemplate: Handlebars.compile "
  <div>
    <ul>
      {{#each looks}}
        <li data-id=\"{{id}}\">{{title}}: top-{{top.color}}/{{top.material}}
        bottom-{{bottom.color}}/{{bottom.material}}</li>
      {{/each}}
    </ul>
  </div>
  "

  lookTemplate: Handlebars.compile "

	    {{#each looks}}
	       <p data-id=\"{{id}}\">{{title}}/{{top.id}}/{{bottom.id}}/{{outerwear.id}}/{{accessory.id}}</p>      
	    {{/each}}
   
  "