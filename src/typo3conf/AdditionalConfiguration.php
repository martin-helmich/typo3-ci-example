<?php

if (getenv('TRAVIS')) {
	$GLOBALS['TYPO3_CONF_VARS']['DB']['username'] = 'travis';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['password'] = '';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['host'] = 'localhost';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['database'] = 'typo3';
} else if (getenv('VAGRANT')) {
	$GLOBALS['TYPO3_CONF_VARS']['DB']['username'] = 'root';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['password'] = '';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['host'] = 'localhost';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['database'] = 'typo3';
} else {
	// Enter your production/staging/dev database credentials here.
	$GLOBALS['TYPO3_CONF_VARS']['DB']['username'] = '';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['password'] = '';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['host'] = '';
	$GLOBALS['TYPO3_CONF_VARS']['DB']['database'] = '';

	trigger_error('No database connection specified.', E_USER_ERROR);
}
