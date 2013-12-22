(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['closet_item_add'] = template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  


  return "  <form id=\"closet-item-add-form\">\n    <p>category <input type=\"text\" name=\"closet_item[category]\" value=\"\"></p>\n    <p>color <input type=\"text\" name=\"closet_item[color]\" value=\"\"></p>\n    <p>material <input type=\"text\" name=\"closet_item[material]\" value=\"\"></p>\n    <p>size <input type=\"text\" name=\"closet_item[size]\" value=\"\"></p>\n    <p>image <input type=\"file\" name=\"closet_item[image]\" value=\"\"> </p>\n    <input type=\"submit\" value=\"Create ClosetItem\">\n  </form>\n";
  });
})();