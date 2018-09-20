import React from "react"
import PropTypes from "prop-types"

import { SketchPicker } from 'react-color'


class ColorpickerSecondary extends React.Component {

  constructor(props) {
    super(props);

    this.state = { selector: props.selector };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (secondary_color) => {
    let btn_tag = Array.from(document.getElementsByClassName('btn-danger'))


    btn_tag.forEach(function(btn){
      btn.style.background = secondary_color.hex;
      btn.style.border = secondary_color.hex;
    })

	  let elem = document.querySelector('#' + this.state.selector);
 
	  elem.value = Secondary_color.hex;
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

ColorpickerSecondary.propTypes = {};

export default ColorpickerSecondary

