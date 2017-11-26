#!/bin/node
var fs = require('fs');
var geoip = require('geoip-lite');

var events = require('../events_by_user_by_location.json');

events.rows.forEach(function(item) {
  item.key.geo = geoip.lookup(item.key.ip);
});

console.log('events', events.rows[0]);
fs.writeFileSync('events_by_user_by_location.json', JSON.stringify(events, null, 2), function(err) {
  console.log('err', err);
});
