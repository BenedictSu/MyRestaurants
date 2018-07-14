class Banner extends React.Component {
  render() {
    return (
      <h1>
        My Restaurant
      </h1>
    );
  }
}

class EmailForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = { emailAddress: '' };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ emailAddress: event.target.value });
  }

  handleSubmit(event) {
    alert('A name was submitted: ' + this.state.emailAddress);
    event.preventDefault();
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div className="form-group">
          <label for="emailAddress">Please enter your email address:</label>
          <input type="email" className="form-control" id="emailAddress" placeholder="Email" value={this.state.emailAddress} onChange={this.handleChange} />
        </div>
        <input type="submit" value="Submit" />
      </form>
    );
  }
}

class Browse extends React.Component {

  render() {
    return (
      <div>
        BROWSE
      </div>
    );
  }
}

class Layout extends React.Component {

  render() {
    return (
      <div className="container">
      <div className="row">
          <div className="col-xs-12">
            <Banner />
          </div>
        </div>
        <div className="row">
          <div className="col-xs-12">
            <EmailForm />
          </div>
        </div>
        <div className="row">
          <div className="col-xs-12">
            <Browse />
          </div>
        </div>
      </div>
    );
  }
}

ReactDOM.render(
  <Layout />,
  document.getElementById('root')
);