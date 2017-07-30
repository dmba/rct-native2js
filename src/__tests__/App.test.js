import React from 'react';
import App from '../components/App';

import renderer from 'react-test-renderer';

it('renders without crashing', () => {
  const rendered = renderer.create( < App/> ).toJSON();
  expect(rendered).toBeTruthy();
});