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

var selectRestaurant = selectedRestaurants => ({
  type: 'SELECT_RESTAURANTS',
  value: selectedRestaurants
});

var resetRestaurant = selectedRestaurants => ({
  type: 'RESET_RESTAURANTS',
  value: selectedRestaurants
});

var setCollections = collections => ({
  type: 'SET_COLLECTIONS',
  value: collections
});

var setCurrentCollection = currentCollection => ({
  type: 'SET_CURRENT_COLLECTION',
  value: currentCollection
});

// reducer
const restaurantList = function (state = { status: DEFAULT, value: DEFAULT }, action) {
  switch (action.type) {
    case 'RETRIEVE_RESTAURANTS':
      return Object.assign({}, state, {
        status: 'restaurants retrieved',
        value: action.value
      })
    case 'RESET_RESTAURANTS':
      return Object.assign({}, state, {
        status: DEFAULT,
        value: DEFAULT
      })
    default:
      return state;
  }
}

const selectedRestaurantList = function (state = { status: DEFAULT, value: DEFAULT }, action) {
  switch (action.type) {
    case 'SELECT_RESTAURANTS':
      return Object.assign({}, state, {
        status: 'restaurants selected',
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

const collectionList = function (state = { status: DEFAULT, value: DEFAULT }, action) {
  switch (action.type) {
    case 'SET_COLLECTIONS':
      return Object.assign({}, state, {
        status: 'collections set',
        value: action.value
      })
    default:
      return state;
  }
}

const currentCollection = function (state = { status: DEFAULT, value: DEFAULT }, action) {
  switch (action.type) {
    case 'SET_CURRENT_COLLECTION':
      return Object.assign({}, state, {
        status: 'current collection set',
        value: action.value
      })
    default:
      return state;
  }
}

const combineReducer = combineReducers({
  restaurantList,
  selectedRestaurantList,
  emailInput,
  collectionList,
  currentCollection
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

class InvitationForm extends React.Component {
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
    const senderemail = this.props.email;
    let recipientemail = this.state.emailAddress;
    event.preventDefault();
    invite(senderemail, recipientemail);
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div className="form-group">
          <label htmlFor="emailAddress">Please enter your friend's email address:</label>
          <input type="email" className="form-control" id="emailAddress" placeholder="Email" value={this.state.emailAddress} onChange={this.handleChange} />
        </div>
        <button type="submit" className="btn btn-info">Invite</button>
      </form>
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
    event.preventDefault();
    // dispatch action
    login(emailAddress);
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

class NavBarItem extends React.Component {
  render() {
    const collection = this.props.collection;
    var id = collection.id;
    var collectionname = collection.collectionname;

    return (
      <li role="presentation" className="navbar-item" id={'navbar-item-' + id} data-id={id} data-name={collectionname}>
        <a href="#">{collectionname}</a>
      </li>
    );
  }
}

class NavBar extends React.Component {
  componentDidMount() {
    $("#navbar-item-" + this.props.currentCollection.id).addClass('active');
  }

  componentDidUpdate(prevProps) {
    if (this.props.collections !== prevProps.collections) {
      initNavBar();
    }
  }

  render() {
    const collections = this.props.collections;
    const item = [];
    if (collections !== DEFAULT) {
      for (var collection in collections) {
        item.push(
          <NavBarItem collection={collections[collection]} key={collections[collection].id} />
        );
      }
    }

    return (
      <ul className="nav nav-tabs">
        <li role="presentation" className="navbar-item" id='navbar-item-0' data-id='0' data-name={DEFAULT}><a href="#">Browse</a></li>
        {item}
      </ul>
    );
  }
}

class RestaurantResultRow extends React.Component {
  render() {
    const restaurant = this.props.restaurant;

    return (
      <tr className="row-restaurant">
        <td className="name-restaurant">{restaurant.name}</td>
        <td><button type="button" className="btn btn-success btn-toggle">Toggle</button></td>
      </tr>
    );
  }
}

class RestaurantResultTable extends React.Component {
  componentDidUpdate(prevProps) {
    if (this.props.restaurants !== prevProps.restaurants) {
      initRestaurantSelection();
    }
  }

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
      <table className="table table-bordered table-hover">
        <thead>
          <tr className="active">
            <th>Name</th>
            <th>Select<br />/<br />Unselect</th>
          </tr>
        </thead>
        <tbody>{rows}</tbody>
      </table>
    );
  }
}

class DayTimePicker extends React.Component {
  constructor(props) {
    super(props);
    this.state = { inputday: '' };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ inputday: event.target.value });
  }

  handleSubmit(event) {
    let inputtime = $('#input-clockpicker').val();
    let inputday = this.state.inputday;
    searchRestaurants(inputday, inputtime);
    event.preventDefault();
  }

  componentDidMount() {
    $('.clockpicker').clockpicker();
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div className="form-group">
          <select className="form-control" value={this.state.inputday} onChange={this.handleChange}>
            <option value="" disabled>Please select</option>
            <option value="*">Any day</option>
            <option value="Mon">Monday</option>
            <option value="Tue">Tueday</option>
            <option value="Wed">Wednesday</option>
            <option value="Thu">Thursday</option>
            <option value="Fri">Friday</option>
            <option value="Sat">Saturday</option>
            <option value="Sun">Sunday</option>
          </select>
        </div>
        <div className="form-group input-group clockpicker" data-autoclose="true">
          <input type="text" id="input-clockpicker" className="form-control" placeholder="mm:ss" />
          <span className="input-group-addon">
            <span className="glyphicon glyphicon-time"></span>
          </span>
        </div>

        <button type="submit" className="btn btn-primary">Search</button>
      </form>
    );
  }
}

class RestaurantSearch extends React.Component {
  render() {
    const restaurants = this.props.restaurants;
    return (
      <div>
        <div>
          <DayTimePicker />
        </div>
        <hr />
        <div>
          <RestaurantResultTable restaurants={restaurants} />
        </div>
      </div>
    );
  }
}

class CollectionAdder extends React.Component {
  constructor(props) {
    super(props);
    this.state = { collectionName: '' };

    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleChange(event) {
    this.setState({ collectionName: event.target.value });
  }

  handleSubmit(event) {
    let collectionName = this.state.collectionName;
    let email = this.props.email;
    let selectedRestaurants = this.props.selectedRestaurants;
    let currentCollection = this.props.currentCollection;

    event.preventDefault();
    if (currentCollection.id == 0) {
      addCollection(email, collectionName, selectedRestaurants);
    } else {
      updateCollection(email, currentCollection.id, collectionName, selectedRestaurants);
    }

  }

  render() {
    const currentCollection = this.props.currentCollection;
    return (
      <div>
        {currentCollection.id != 0 ? <h4>Current Collection Name: <b id='curcolname'>{currentCollection.name}</b></h4> : <div />}
        <form onSubmit={this.handleSubmit}>
          <div className="form-group">
            <label htmlFor="collectionName">{currentCollection.id != 0 ? "Please enter your new collection name:" : "Please enter your collection name:"}</label>
            <input type="text" className="form-control" id="collectionName" placeholder="Collection name" value={this.state.collectionName} onChange={this.handleChange} />
          </div>
          <button type="submit" className="btn btn-primary">{currentCollection.id != 0 ? "update" : "save"}</button>
        </form>
      </div>
    );
  }
}

class RestaurantCollectionForm extends React.Component {
  render() {
    const selectedRestaurants = this.props.selectedRestaurants;
    const email = this.props.email;
    const currentCollection = this.props.currentCollection;
    return (
      <div>
        <div>
          <CollectionAdder selectedRestaurants={selectedRestaurants}
            email={email}
            currentCollection={currentCollection} />
        </div>
        <hr />
        <div>
          <RestaurantResultTable restaurants={selectedRestaurants} />
        </div>
      </div>
    );
  }
}

class Content extends React.Component {
  render() {
    const restaurants = this.props.restaurants;
    const selectedRestaurants = this.props.selectedRestaurants;
    const email = this.props.email;
    const collections = this.props.collections;
    const currentCollection = this.props.currentCollection;
    return (
      <div>
        <div className="row">
          <div className="col-xs-12">
            < NavBar collections={collections} currentCollection={currentCollection} />
          </div>
        </div>
        <div className="row">
          <div className="col-xs-6">
            < RestaurantSearch restaurants={restaurants} />
          </div>
          <div className="col-xs-6">
            <RestaurantCollectionForm selectedRestaurants={selectedRestaurants}
              email={email}
              currentCollection={currentCollection} />
          </div>
        </div>
      </div>
    );
  }
}

class Layout extends React.Component {
  componentDidMount() {
    store.dispatch(setCurrentCollection({ 'id': 0, 'name': DEFAULT }));
    autologin();
  }

  render() {
    const restaurants = this.props.restaurants;
    const selectedRestaurants = this.props.selectedRestaurants;
    const email = this.props.email;
    const collections = this.props.collections;
    const currentCollection = this.props.currentCollection;
    return (
      <div className="container">
        <div className="row">
          <div className="col-xs-12">
            <Banner />
          </div>
        </div>
        <div className="row">
          {DEFAULT != email && "" != email ?
            <div className="col-xs-12">
              <div className="col-xs-6" />
              <div className="col-xs-6"><InvitationForm email={email} /></div>
            </div>
            : <div className="col-xs-12"><EmailForm /></div>}
        </div>
        <div className="row">
          <div className="col-xs-12">
            {DEFAULT != email && "" != email ?
              <Content restaurants={restaurants}
                selectedRestaurants={selectedRestaurants}
                email={email}
                collections={collections}
                currentCollection={currentCollection} />
              : <div />}
          </div>
        </div>
      </div>
    );
  }
}

// Ajax methods
function login(email) {
  var data = { email: email };

  $.ajax({
    type: 'POST',
    url: '/login',
    data: data
  }).done(function (res) {
    var state = store.getState();
    var currentCollection = state.currentCollection.value;
    if (res[currentCollection.id]) {
      store.dispatch(selectRestaurant(res[currentCollection.id].restaurants));
      store.dispatch(setCurrentCollection({ 'id': currentCollection.id, 'name': res[currentCollection.id].collectionname }));
    }
    store.dispatch(setCollections(res));
  })
}

function invite(senderemail, recipientemail) {
  var data = { senderemail: senderemail, recipientemail: recipientemail };
  $.ajax({
    type: 'POST',
    url: '/sendMail',
    data: data
  }).done(function (res) {

  })
}

function searchRestaurants(day, time) {
  var data = { day: day, time: time };

  $.ajax({
    type: 'POST',
    url: '/searchRestaurants',
    data: data
  }).done(function (res) {
    store.dispatch(retrieveRestaurants(res));
  })
}

function addCollection(email, collectionName, selectedRestaurants) {

  var data = { email: email, collectionName: collectionName, selectedRestaurants: selectedRestaurants };

  $.ajax({
    type: 'POST',
    url: '/addCollection',
    data: data
  }).done(function (res) {
    var state = store.getState();
    var currentCollection = state.currentCollection.value;
    if (res[currentCollection.id]) {
      store.dispatch(selectRestaurant(res[currentCollection.id].restaurants));
      store.dispatch(setCurrentCollection({ 'id': currentCollection.id, 'name': res[currentCollection.id].collectionname }));
    }
    store.dispatch(setCollections(res));
  })
}

function updateCollection(email, collectionId, collectionName, selectedRestaurants) {

  var data = { email: email, collectionId: collectionId, collectionName: collectionName, selectedRestaurants: selectedRestaurants };

  $.ajax({
    type: 'POST',
    url: '/updateCollection',
    data: data
  }).done(function (res) {
    var state = store.getState();
    var currentCollection = state.currentCollection.value;
    if (res[currentCollection.id]) {
      store.dispatch(selectRestaurant(res[currentCollection.id].restaurants));
      store.dispatch(setCurrentCollection({ 'id': currentCollection.id, 'name': res[currentCollection.id].collectionname }));
    }
    store.dispatch(setCollections(res));
  })
}

function getCollection(email) {

  var data = { email: email };

  $.ajax({
    type: 'POST',
    url: '/getCollection',
    data: data
  }).done(function (res) {
    var state = store.getState();
    var currentCollection = state.currentCollection.value;
    if (res[currentCollection.id]) {
      store.dispatch(selectRestaurant(res[currentCollection.id].restaurants));
      store.dispatch(setCurrentCollection({ 'id': currentCollection.id, 'name': res[currentCollection.id].collectionname }));
    }
    store.dispatch(setCollections(res));
  })
}

// render
const render = function () {
  var state = store.getState();
  ReactDOM.render(
    <Layout restaurants={state.restaurantList.value}
      selectedRestaurants={state.selectedRestaurantList.value}
      email={state.emailInput.value}
      collections={state.collectionList.value}
      currentCollection={state.currentCollection.value} />,
    document.getElementById('root')
  );
};

store.subscribe(render);
render();

// helpers
function initRestaurantSelection() {
  $('.btn-toggle').off('click');
  $('.btn-toggle').click(function (event) {
    var selectedRestaurants = store.getState().selectedRestaurantList.value;
    var restaurantName = $(this.closest('.row-restaurant')).find('.name-restaurant').text();

    if (DEFAULT != selectedRestaurants) {
      var originalLength = selectedRestaurants.length;

      selectedRestaurants = jQuery.grep(selectedRestaurants, function (item) {
        return item.name != restaurantName;
      });

      if (originalLength == selectedRestaurants.length) {
        selectedRestaurants.push({ name: restaurantName });
      }
    } else {
      selectedRestaurants = [{ name: restaurantName }];
    }
    store.dispatch(selectRestaurant(selectedRestaurants));
    event.preventDefault();
  });
}

function initNavBar() {
  $('.navbar-item').off('click');
  $('.navbar-item').click(function (event) {
    var state = store.getState();
    var currentCollection = state.currentCollection.value;
    var selectedId = this.getAttribute("data-id");
    var selectedName = this.getAttribute("data-name");
    var collectionList = state.collectionList.value;

    // update currentCollection selected
    $("#navbar-item-" + currentCollection.id).removeClass('active');
    $("#navbar-item-" + selectedId).addClass('active');

    store.dispatch(setCurrentCollection({ 'id': selectedId, 'name': selectedName }));

    // reset form
    store.dispatch(resetRestaurant(DEFAULT));
    if (null != collectionList[selectedId]) {
      store.dispatch(selectRestaurant(collectionList[selectedId].restaurants));
    } else {
      store.dispatch(selectRestaurant(DEFAULT));
    }

    event.preventDefault();
  });
}

function autologin() {
  var queryString = getJsonFromUrl();
  if (queryString['email']) {
    var emailAddress = queryString['email'];
    login(emailAddress);
    store.dispatch(enterEmail(emailAddress));
  }
}

function getJsonFromUrl() {
  var query = location.search.substr(1);
  var result = {};
  query.split("&").forEach(function (part) {
    var item = part.split("=");
    result[item[0]] = decodeURIComponent(item[1]);
  });
  return result;
}

// SSE connection
if (!!window.EventSource) {
  var source = new EventSource('/sse');

  source.addEventListener('message', function (e) {
    var state = store.getState();
    var email = state.emailInput.value;
    if (DEFAULT != email)
      getCollection(email);
  }, false);
}