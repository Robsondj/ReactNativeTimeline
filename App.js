/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, { Component } from 'react';
import {
  SafeAreaView,
  StyleSheet,
  FlatList,
  View,
  Text,
  StatusBar
} from 'react-native';

import Post from './src/component/Post';

import {
  Header,
  LearnMoreLinks,
  Colors,
  DebugInstructions,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';

const fotos = [{id: 1, usuario: 'Robson'},
               {id: 2, usuario: 'Izabella'},
               {id: 3, usuario: 'React'}]

const App: () => React$Node = () => {
  return (
    <FlatList style={styles.container}
      data={fotos}
      KeyExtractor={item => String(item.id)}
      renderItem={ ({item}) => 
        <Post foto={item} />
      }
    />
  );
};

const styles = StyleSheet.create({
  container: {}
})

export default App;
