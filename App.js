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
  FlatList,
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
const fotos = [{id: 1, usuario: 'Robson'},
               {id: 2, usuario: 'Izabella'},
               {id: 3, usuario: 'React'}]

const App: () => React$Node = () => {
  return (
    <FlatList
      data={fotos}
      KeyExtractor={item => String(item.id)}
      renderItem={ ({item}) => 
        <View>
          <Text>{item.usuario}</Text>
          <Image source={require('./resources/img/izabella.jpg')} style={{width:width, height:width}} />
        </View>
      }
    />
  );
};

export default App;
