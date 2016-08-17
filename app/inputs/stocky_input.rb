class StockyInput < SimpleForm::Inputs::NumericInput
  def input(wrapper_options)
    template.react_component 'Stocky', {
      id: input_dom_id,
      name: input_name,
      value: value,
      checked: value.nil?
    }, prerender: true
  end

  private

  def value
    @value ||= object.send(attribute_name)
  end

  def fake_input
    @fake_input ||= ActionView::Helpers::Tags::HiddenField.new(object_name, attribute_name, object)
  end

  def input_dom_id
    fake_input.send(:tag_id)
  end

  def input_name
    fake_input.send(:tag_name)
  end
end
