class GigTable extends React.Component {

  constructor () {
    super()
    this.state = {
      gigs: []
    }
  }

  componentDidMount() {
    axios.get('/api/v1/gigs.json').then( (res) => {
      this.setState({ gigs: res.data })
    })
  }

  renderGigRows () {
    return this.state.gigs.map( (gig, i) => {
      return (
          <tr key={i}>
            <td>{ gig.name }</td>
            <td>{ gig.performance_at }</td>
            <td>{ gig.location.name }</td>
            <td>{ gig.location.addresses }</td>
          </tr>
      )
    })
  }

  render () {
    return (
        <table>
        <thead>
          <th>Name</th>
          <th>Performance at</th>
          <th>location</th>
          <th>Address</th>
        </thead>
        <tbody>
        { this.renderGigRows() }
        </tbody>
        </table>
    )
  }
}
