import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import {fetchSearchGiphys} from './util/api_util';
import {receiveSearchGiphys} from './actions/giphy_actions';

document.addEventListener('DOMContentLoaded', () => {
  const store = configureStore;
  debugger;
  window.store = store;
  // const root = document.getElementById('root');
  window.receiveSearchGiphys = receiveSearchGiphys;
  window.fetchSearchGiphys = fetchSearchGiphys;

  // ReactDOM.render(<Root store={store} />, root);
});
