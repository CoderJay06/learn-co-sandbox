<%= form_tag("/cats") do %>
  <%= label_tag('cat[name]', "Name") %>
  <%= text_field_tag('cat[name]') %>
  <%= label_tag('cat[color]', "Color") %>
  <%= text_field_tag('cat[color]') %>
  
  <%= submit_tag "Create Cat" %>
<% end %>

# form_for refactor
<%= form_for(@cat) do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name %>
  <%= f.labl :color %>
  <%= f.text_field :color %>
  
  <%= f.submit %>
<% end %>