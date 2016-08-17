# Reach+Rails sample app

This app is for demonstrating the use of React in Rails for building Frontend components. Using React has the advantage that the DOM and JS behaviour can be grouped in the same place.

## Stocky Component

The component I build using React in this app is called Stocky. It is a combination of 2 inputs, a text box and a toggle. The text box is for entering arbitrary text and the toggle will clean up the text and disable it. One of the use case for it is for inventory level input which supports unlimited stock. User can enter the stock level using the text box, and if it is unlimited stock, they can click the toggle.

## Key Files

### `app/assets/javascripts/components/stocky.js.jsx.coffee`

It defines the component. The necessary DOM and JS are all there.

### `app/inputs/stocky_input.rb`

A `simple_form` input which will render the component using `#react_component`.

### `app/views/products/new.html.slim`

Form that uses the stocky input.
