<?php
// Reference: https://docs.phpmyadmin.net/en/latest/config.html

// Config PHPMyAdmin storage table
$cfg['ZeroConf'] = true;

// Change browse mode max rows
$cfg['MaxRows'] = 250;

// Change login sesstion timeout
$cfg['LoginCookieValidity'] = ini_get('session.gc_maxlifetime');
