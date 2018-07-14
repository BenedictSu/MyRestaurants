class Banner extends React.Component {
  render() {
    return (
      <h1 className="jumbotron">
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
          <label htmlFor="emailAddress">Please enter your email address:</label>
          <input type="email" className="form-control" id="emailAddress" placeholder="Email" value={this.state.emailAddress} onChange={this.handleChange} />
        </div>
        <button type="submit" className="btn btn-primary">Submit</button>
      </form>
    );
  }
}

class NavBar extends React.Component {

  render() {
    return (
      <div>
        BROWSE
      </div>
    );
  }
}

class Content extends React.Component {

  render() {
    return (
          <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="#">Browse</a></li>
            <li role="presentation"><a href="#">MyList</a></li>
          </ul>
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
            <Content />
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