const { combineReducers, createStore } = Redux;
const DEFAULT = 'default';

// action
var enterEmail = email => ({
  type: 'ENTER_EMAIL',
  value: email
});

var retrieveRestaurants = restaurants => ({
  type: 'RETRIEVE_RESTAURANTS',
  value: restaurants
});

// reducer
const restaurantList = function (state = { status: DEFAULT, value: DEFAULT }, action) {
  switch (action.type) {

    case 'RETRIEVE_RESTAURANTS':
      return Object.assign({}, state, {
        status: 'restaurants retrieved',
        value: action.value
      })
    default:
      return state;
  }
}

const emailInput = function (state = { status: DEFAULT, value: DEFAULT }, action) {
  switch (action.type) {
    case 'ENTER_EMAIL':
      return Object.assign({}, state, {
        status: 'email entered',
        value: action.value
      })
    default:
      return state;
  }
}

const combineReducer = combineReducers({
  restaurantList,
  emailInput
});

// store
const store = createStore(combineReducer);


// react component
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
    let emailAddress = this.state.emailAddress;
    alert('A name was submitted: ' + emailAddress);
    event.preventDefault();
    // dispatch action
    store.dispatch(enterEmail(emailAddress));
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
      <ul className="nav nav-tabs">
        <li role="presentation" className="active"><a href="#">Browse</a></li>
        <li role="presentation"><a href="#">MyList</a></li>
      </ul>
    );
  }
}

class RestaurantResultRow extends React.Component {
  render() {
    const restaurant = this.props.restaurant;

    return (
      <tr>
        <td>{restaurant.name}</td>
      </tr>
    );
  }
}

class RestaurantResultTable extends React.Component {
  render() {
    const rows = [];

    if (this.props.restaurants !== DEFAULT) {
      this.props.restaurants.forEach((restaurant) => {
        rows.push(
          <RestaurantResultRow
            restaurant={restaurant}
            key={restaurant.name} />
        );
      });
    }

    return (
      <table>
        <thead>
          <tr>
            <th>Name</th>
          </tr>
        </thead>
        <tbody>{rows}</tbody>
      </table>
    );
  }
}

class RestaurantSearch extends React.Component {
  render() {
    const restaurants = this.props.restaurants;

    return (
      <div>
        <RestaurantResultTable restaurants={restaurants} />
      </div>
    );
  }
}

class Content extends React.Component {
  render() {
    const restaurants = this.props.restaurants;
    return (
      <div>
        <div className="row">
          <div className="col-xs-12">
            < NavBar />
          </div>
        </div>
        <div className="row">
          <div className="col-xs-6">
            < RestaurantSearch restaurants={restaurants} />
          </div>
          <div className="col-xs-6">
          </div>
        </div>
      </div>
    );
  }
}

class Layout extends React.Component {
  render() {
    const restaurants = this.props.restaurants;
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
            <Content restaurants={restaurants} />
          </div>
        </div>
      </div>
    );
  }
}

function fetchRestaurant() {
  fetch("/getRestaurants")
    .then(response => response.json())
    .then(json => store.dispatch(retrieveRestaurants(json)));
}
//fetchRestaurant();

const render = function () {
  var state = store.getState();
  ReactDOM.render(
    <Layout restaurants={state.restaurantList.value} />,
    document.getElementById('root')
  );
};


store.subscribe(render);
render();