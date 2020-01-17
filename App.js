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
    <FlatList style={styles.container}
      data={fotos}
      KeyExtractor={item => String(item.id)}
      renderItem={ ({item}) => 
        <View>
          <View style={styles.cabecalho}>
            <Image source={require('./resources/img/izabella.jpg')} style={styles.fotoDePerfil} />
            <Text>{item.usuario}</Text>
          </View>
          <Image source={require('./resources/img/izabella.jpg')} style={styles.foto} />
        </View>
      }
    />
  );
};

const styles = StyleSheet.create({
  container: {},
  cabecalho: {
    marginTop: 10,
    flexDirection: 'row',
    alignItems: 'center'
  },
  fotoDePerfil: {
    marginRight: 10,
    borderRadius: 20,
    width: 40,
    height: 40
  },
  foto: {
    width: width,
    height: width
  }
})

export default App;
