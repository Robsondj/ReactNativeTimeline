import React, { Component } from 'react';
import {
  SafeAreaView,
  StyleSheet,
  FlatList,
  View,
  Text,
  StatusBar
} from 'react-native';

import Post from './component/Post';

import {
  Header,
  LearnMoreLinks,
  Colors,
  DebugInstructions,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';

export default class InstaluraMobile extends Component {
  
  constructor() {
    super();
    this.state = {
      fotos: []
    }
  }

  componentDidMount() {
    // com essa url não funcionou: http://10.0.2.2:8080/api/public/fotos/rafael
    fetch('https://instalura-api.herokuapp.com/api/public/fotos/rafael')
      .then(resposta => resposta.json())
      .then(json => this.setState({fotos: json}))
      .catch(erro => {
        console.warn(`Não foi possível carregar as fotos. erro`);
        this.setState({status: 'ERRO'});
        this.setState({fotos: []});
      });
  }

  render() {
    return (
      <FlatList style={styles.container}
        data={this.state.fotos}
        KeyExtractor={item => String(item.id)}
        renderItem={ ({item}) => 
          <Post foto={item} />
        }
      />
    );
  }
};

const styles = StyleSheet.create({
  container: {}
});
