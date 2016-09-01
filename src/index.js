'use strict';

try {
	let git = require('git-rev-sync');
	module.exports = 'branch: ' + git.branch() + ' [' + git.short() + ']';
}
catch (e) {
	/* istanbul ignore next */
	module.exports = 'unknown, not in git';
}
