@closetXY =
  usersTemplate: Handlebars.compile "
    <ul>
      {{#each users}}
        <li data-id=\"{{id}}\">{{name}}</li>
      {{/each}}
    </ul>
  "

  userTemplate: Handlebars.compile "
      <section id=\"top\">top:</section>
      <section id=\"bottom\">bottom:</section>
      <section id=\"outerwear\">outerwear:</section>
      <section id=\"accessory\">accessory:</section>





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