import React,{ Component } from 'react';
import {
  StyleSheet,
  View,
  Text,
  Image,
  Dimensions
} from 'react-native';

const width = Dimensions.get('screen').width;

export default class Post extends Component<{}> {
  render() {
    return (
      <View>
        <View style={styles.cabecalho}>
          <Image source={require('../../resources/img/izabella.jpg')} style={styles.fotoDePerfil} />
          <Text>{this.props.foto.usuario}</Text>
        </View>
        <Image source={require('../../resources/img/izabella.jpg')} style={styles.foto} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
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
