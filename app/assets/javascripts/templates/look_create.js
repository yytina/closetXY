(function() {
  var template = Handlebars.template, templates = Handlebars.templates = Handlebars.templates || {};
templates['look_create'] = template(function (Handlebars,depth0,helpers,partials,data) {
  this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Handlebars.helpers); data = data || {};
  var buffer = "", stack1, functionType="function", escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n            <div id=\"new_tabs-";
  if (stack1 = helpers.name) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.name); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" class=\"tabs-inner\">\n              ";
  stack1 = helpers.each.call(depth0, (depth0 && depth0.clothing_items), {hash:{},inverse:self.noop,fn:self.program(2, program2, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n            </div>\n          ";
  return buffer;
  }
function program2(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n                <div class=\"clothing-item\">\n                  <img data-id=\"";
  if (stack1 = helpers.id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.id); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" src=\"/placeholder.jpg\" height=\"200\" />\n                  <span data-id=\"";
  if (stack1 = helpers.id) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.id); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\">";
  if (stack1 = helpers.category) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.category); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "/";
  if (stack1 = helpers.color) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.color); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "/";
  if (stack1 = helpers.material) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.material); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "/";
  if (stack1 = helpers.price) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.price); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "</span>   \n                </div>\n              ";
  return buffer;
  }

function program4(depth0,data) {
  
  var buffer = "", stack1;
  buffer += "\n            <div id=\"closet_tabs-";
  if (stack1 = helpers.name) { stack1 = stack1.call(depth0, {hash:{},data:data}); }
  else { stack1 = (depth0 && depth0.name); stack1 = typeof stack1 === functionType ? stack1.call(depth0, {hash:{},data:data}) : stack1; }
  buffer += escapeExpression(stack1)
    + "\" class=\"tabs-inner\">\n              ";
  stack1 = helpers.each.call(depth0, (depth0 && depth0.clothing_items), {hash:{},inverse:self.noop,fn:self.program(2, program2, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n            </div>\n          ";
  return buffer;
  }

  buffer += "<div class=\"row\">\n      <div class=\"col-lg-4 clothing-slots\">\n        <h3>from New items</h3>\n        \n        <div id=\"new_tabs\">\n          <ul>\n            <li><a href=\"#new_tabs-top\">Top</a></li>\n            <li><a href=\"#new_tabs-bottom\">Bottom</a></li>\n            <li><a href=\"#new_tabs-outerwear\">Outerwear</a></li>\n            <li><a href=\"#new_tabs-accessory\">Accessory</a></li>\n          </ul>\n          ";
  stack1 = helpers.each.call(depth0, (depth0 && depth0.new_categories), {hash:{},inverse:self.noop,fn:self.program(1, program1, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n        </div>\n\n        <script>\n          $('#new_tabs').tabs();\n        </script>\n\n      </div>\n\n      <div class=\"col-lg-4 clothing-slots\">\n        <h3>look: </h3>\n          <img src=\"http://placehold.it/250x350\">\n          <form id=\"look-create-form\">\n            <p>Top: <span id=\"top_for_look\" name=\"look[top]\"></span></p> \n            <p>Bottom: <span id=\"bottom_for_look\" name=\"look[bottom]\"></span></p>  \n            <p>Outerwear: <span id=\"outerwear_for_look\" name=\"look[outerwear]\"></span></p>  \n            <p>Accessory: <span id=\"accessory_for_look\" name=\"look[accessory]\"></span></p>    \n            <p>Title: <input id=\"title\" type=\"text\" name=\"look[title]\" data-id=\"\" value=\"\"></p>\n            <button id=\"look-create-submit\" type=\"submit\" value=\"Save\">Save Look</button>\n          </form> \n            \n\n\n          \n\n      </div>\n\n      <div class=\"col-lg-4 clothing-slots\">\n        <h3>from Closet items</h3>\n        <div id=\"closet_tabs\">\n          <ul>\n            <li><a href=\"#closet_tabs-top\">Top</a></li>\n            <li><a href=\"#closet_tabs-bottom\">Bottom</a></li>\n            <li><a href=\"#closet_tabs-outerwear\">Outerwear</a></li>\n            <li><a href=\"#closet_tabs-accessory\">Accessory</a></li>\n          </ul>\n          ";
  stack1 = helpers.each.call(depth0, (depth0 && depth0.closet_categories), {hash:{},inverse:self.noop,fn:self.program(4, program4, data),data:data});
  if(stack1 || stack1 === 0) { buffer += stack1; }
  buffer += "\n        </div>\n\n        <script>\n          $('#closet_tabs').tabs();\n        </script>\n        \n       \n      </div>\n</div>\n\n\n";
  return buffer;
  });
})();