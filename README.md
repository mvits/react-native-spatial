
# react-native-spatial

## Getting started

1. Add to `package.json`:
`
"dependencies": {
    "react-native-spatialite": "git://github.com/NeliHarbuzava/react-native-spatial.git"
  }
`
2. Run `npm i`.

### Mostly automatic installation

`$ react-native link react-native-spatial`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-spatial` and add `RNSpatial.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNSpatial.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.spatial.RNSpatialPackage;` to the imports at the top of the file
  - Add `new RNSpatialPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-spatial'
	project(':react-native-spatial').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-spatial/android')
	include ':spatialiteandroidlibrary'
	project(':spatialiteandroidlibrary').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-spatial/android/spatialiteandroidlibrary')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-spatial')
  	```

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
  
