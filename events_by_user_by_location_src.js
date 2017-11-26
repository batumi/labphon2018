/**
 * CouchDB map reduce to extract GPS location from ACRA events
 *
 * @param  {Object} doc ACRA event
 */
function(doc) {
  function convertJavascriptToJson(str) {
    var json = str.replace(/'/g, '"').replace(/([{, ])([a-z0-9A-Z]+):/g, '$1"$2":');
    return JSON.parse(json);
  }

  try {
    var username = "";
    if (doc.CUSTOM_DATA && doc.CUSTOM_DATA) {
      username = doc.CUSTOM_DATA.username;
    }

    if (!username) {
      // emit('skipping missing username', doc.user_ip);
      return;
    }

    var deviceDetails = {};
    if (doc.CUSTOM_DATA && doc.CUSTOM_DATA.deviceDetails) {
      deviceDetails = convertJavascriptToJson(doc.CUSTOM_DATA.deviceDetails);
    } else {
      // emit('skipping missing location', doc.user_ip);
      // return;
    }

    var data = {
      username: username,
      ip: doc.user_ip,
      location: deviceDetails.location
    };

    emit(data, doc.timestamp);
  } catch (err) {
    emit(err, doc.CUSTOM_DATA);
  }
}
