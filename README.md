
# react-native-spatial


## Getting started

1. Run `npm install @mvits/react-native-spatial --save`


## Usage
```javascript
import RNSpatial from 'react-native-spatial';

// open connection
RNSpatial.connect(this.name + '.sqlite')
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

Version [2.0.0](https://github.com/mvits/react-native-spatial/packages/272656):

* Version tested and funtional.
* Implement library [Geo-Spatialite-Android](https://github.com/mvits/Geo-Spatialite-Android/tree/1.0.0.0) (v1.0.0.0)
* Implement spatialite version 4.5.0

## Github Repository
* https://github.com/mvits/react-native-spatial

<sub>
Project is a fork from this project:
https://github.com/NeliHarbuzava/react-native-spatial.git
</sup>

