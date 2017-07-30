'use strict';

import Render from './AppRender';
import React from 'react';

export default class App extends React.Component {
  render() {
    return Render.call(this, this.props, this.state);
  }
}