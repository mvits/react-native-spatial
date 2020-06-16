
# react-native-spatial

## Getting started

1. Run `npm install https://github.com/mvits/react-native-spatial.git`


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
  
