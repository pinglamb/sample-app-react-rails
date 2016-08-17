class @Stocky extends React.Component
  @propTypes =
    id: React.PropTypes.string
    name: React.PropTypes.string
    value: React.PropTypes.number
    checked: React.PropTypes.bool

  constructor: (props) ->
    super(props)
    @state =
      checked: @props.checked

  componentDidMount: ->
    @switchery = new Switchery(@refs.switch)
    @refs.switch.addEventListener 'change', (e) =>
      @setState checked: e.target.checked
      if e.target.checked
        @previousValue = @refs.input.value
        @refs.input.value = ''
      else if @refs.input.value.length == 0
        @refs.input.value = @previousValue || 0

  render: ->
    `<div className="stocky">
      <input id={this.props.id} type="number" ref="input" name={this.props.name} defaultValue={this.props.value} className="form-control" disabled={this.state.checked && 'disabled'} />
      <input type="checkbox" ref="switch" defaultChecked={this.state.checked} /> Unlimited
    </div>`
