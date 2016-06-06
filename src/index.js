import riot from 'riot';
import configureStore from './store';
import './component';

const initialState = window.__INITIAL_STATE__;
const store = configureStore(initialState);

function render() {
  riot.mount('*', { store: store });
}

window.onload = function() {
  render();
};