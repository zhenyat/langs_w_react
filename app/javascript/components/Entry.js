import React     from "react"
import PropTypes from "prop-types"

export default class Entry extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      entries: []
    };
  }
  
  render () {
    return (
      <React.Fragment>
        <h3>Each Entry...</h3>
      </React.Fragment>
    );
  }
}

