class @HelloMessage extends React.Component
  @propTypes =
    name: React.PropTypes.string

  constructor: (props) ->
    super(props)
    @state =
      seconds: 0

  tick: ->
    @setState
      seconds: @state.seconds + 1

  componentDidMount: ->
    @interval = setInterval @tick.bind(@), 1000

  componentWillUnmount: ->
    clearInterval @interval

  render: ->
    `<div>
      <div>Hello, {this.props.name} ({this.state.seconds}).</div>
    </div>`
