import React from "react"
import PropTypes from "prop-types"

import { SketchPicker } from 'react-color'


class ColorpickerNavbar extends React.Component {

  constructor(props) {
    super(props);

    this.state = { selector: props.selector };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (navbar_color) => {
    let myNav = document.getElementById("my_nav")
    myNav.setAttribute('style', 'background: ' + navbar_color.hex + ' !important;')
    let elem = document.querySelector('#' + this.state.selector);

    elem.value = navbar_color.hex;
  }


  render(){
    return  (
        <React.Fragment>
          <SketchPicker color={this.props.color}
                        onChange={this.handleChange}/>
        </React.Fragment>
    );
  }
}

ColorpickerNavbar.propTypes = {};

export default ColorpickerNavbar
