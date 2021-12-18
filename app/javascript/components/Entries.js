import React     from "react"
import PropTypes from "prop-types"
import {Table}   from "react-bootstrap"


export default class Entries extends React.Component {
  constructor(props) {
    super(props);
  }
  
  render () {
    const items = this.props.entries.map(item => 
        <tr key={item.id}>
            <td>{item.de} {item.trxn == '' ? '' : '['+item.trxn+']'} {item.pl == '' ? '' : '('+item.pl+')'}</td>
            <td>{item.ru}</td>
            <td>{item.en}</td>
        </tr>);

    return (
      <React.Fragment>
        <h1>Entries</h1>
        <Table striped bordered hover size='sm'>
            <thead>
                <tr>
                  <th>De</th>
                  <th>Ru</th>
                  <th>En</th>
                </tr>
            </thead>
            <tbody>
                {items}
            </tbody>
        </Table>
      </React.Fragment>
    );
  }
};

Entries.propTypes = {
  entries: PropTypes.array
};



