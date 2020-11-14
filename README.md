
# react-native-spatial


## Getting started

1. Run `npm install @mvits/react-native-spatial --save`


## Usage
```javascript
import RNSpatial from '@mvits/react-native-spatial';

// open connection
let dbParams = {
  dbName: this.name + '.sqlite'
};

RNSpatial.connect(dbParams)
    .then(() => {
		// execute query
        return RNSpatial.executeQuery('SELECT * FROM table');
	})
	.then(response => {
		let columns = response.data;
		// do your work
	})
	.catch(err => {
		console.error(err);
	});

// close connection
RNSpatial.close()
	.then(() => {})
	.catch(err => {
		console.error(err);
	});
```
## About this current version

Version [2.0.3](https://github.com/mvits/react-native-spatial/releases/tag/v2.0.3) :
* Fixed error publish in npm

## About the others versions
Version [2.0.2](https://github.com/mvits/react-native-spatial/releases/tag/v2.0.2) :

* Add support to json extension [JSON1 Extension](https://www.sqlite.org/json1.html)
* Add support sdk android 19 in architecture: armeabi-v7a, x86, arm64-v8a, x86_64

Version [2.0.1](https://github.com/mvits/react-native-spatial/releases/tag/v2.0.1):

* Add support for send a object to connect function and add functionality for create db in local path(Only External Storage Directory).


Version [2.0.0](https://github.com/mvits/react-native-spatial/releases/tag/v2.0.0):

* Version tested and funtional.
* Implement library [Geo-Spatialite-Android](https://github.com/mvits/Geo-Spatialite-Android/releases/tag/v1.0.0) (v1.0.0)
* Implement spatialite version 4.5.0

## Github Repository
* https://github.com/mvits/react-native-spatial

<sub>

Project is a fork from this project:
https://github.com/NeliHarbuzava/react-native-spatial.git  



Initial project this:
https://github.com/vinuvijay7692/react-native-spatial.git
</sup>
