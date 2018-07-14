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
        <label>
          Please enter your email address:
          <input type="text" value={this.state.emailAddress} onChange={this.handleChange} />
        </label>
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
      <div>
        <div>
          <EmailForm />
        </div>
        <div>
          <Browse />
        </div>
      </div>
    );
  }
}

ReactDOM.render(
  <Layout />,
  document.getElementById('root')
);