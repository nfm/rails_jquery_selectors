class <%= @model %>:
  <% @instance.attributes.each do |attr| %>
    <%= attr %>
  <% end %>
