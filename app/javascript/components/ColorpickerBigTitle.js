import React from "react"
import PropTypes from "prop-types"

import { SketchPicker } from 'react-color'


class ColorpickerBigTitle extends React.Component {

  constructor(props) {
    super(props);

    this.state = { selector: props.selector };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (big_title_color) => {
    let big_titles =   Array.from(document.getElementsByClassName('big_title'))

    big_titles.forEach(function(big_title){
      big_title.style.color = big_title_color.hex;
    })

	  let elem = document.querySelector('#' + this.state.selector);
 
	  elem.value = big_title_color.hex;
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

ColorpickerBigTitle.propTypes = {};

export default ColorpickerBigTitle

