'use strict';

import Render from './AppRender';
import React from 'react';
import {
  messagesModule
} from '../native2jstransport';

export default class App extends React.Component {

  state = {};

  constructor() {
    super();
    messagesModule.listener = this;
  }

  onMessageFromNative(message) {
    this.setState({
      messageFromNative: message
    });
  }

  render() {
    return Render.call(this, this.state);
  }
}