import React from 'react'
import {Table}   from "react-bootstrap"

export default class SerrachBox extends React.Component {
    constructor(props) {
      super(props);

      this.state = {
        term: '',
        autoCompleteResults: [],
        itemSelected: {},
        showItemSelected: false
      };

      $.getJSON('/search?q=' + this.state.term)
        .then(response => this.setState({ autoCompleteResults: response.items }))
    }

    getAutoCompleteResults(e){
      this.setState({
        term: e.target.value
      }, () => {
        $.getJSON('/search?q=' + this.state.term)
          .then(response => this.setState({ autoCompleteResults: response.items }))
      });
    }

    render(){
      let autoCompleteList = this.state.autoCompleteResults.map((response, index) => {
        return <tr key={index}>
        <td>{response.article.nil? ? '' : response.article} <strong>{response.de}</strong> {response.trxn == '' ? '' : '['+response.trxn+']'} {response.pl == '' ? '' : '('+response.pl+')'}</td>
          <td>{response.ru}</td>
          <td>{response.en}</td>
        </tr>
      });
    
      return (
        <React.Fragment>
          <input ref={ (input) => { this.searchBar = input } } value={ this.state.term } onChange={ this.getAutoCompleteResults.bind(this) } type='text' placeholder='Search...' />
          <Table striped bordered hover size='sm' className="rows_color">
            <thead  className="header_color">
                <tr>
                  <th>De</th>
                  <th>Ru</th>
                  <th>En</th>
                </tr>
            </thead>
            <tbody>
              { autoCompleteList }
            </tbody>
          </Table>
        </React.Fragment>
      )
    }
  }

