/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React from 'react';
import {
  SafeAreaView,
  StyleSheet,
  ScrollView,
  View,
  Text,
  StatusBar,
  Image,
  Dimensions
} from 'react-native';

import {
  Header,
  LearnMoreLinks,
  Colors,
  DebugInstructions,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';

const width = Dimensions.get('screen').width;

const App: () => React$Node = () => {
  return (
    <View>
      <Text>Robson de Jesus</Text>
      <Image source={require('./resources/img/izabella.jpg')} style={{width:width, height:width}} />
    </View>
  );
};

export default App;
