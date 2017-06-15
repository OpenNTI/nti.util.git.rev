/* eslint-env jest */
'use strict';

const git = require('../index');

describe('Tests', () => {

	test ('Git Status', () => {

		expect(typeof git).toEqual('string');

	});

});
