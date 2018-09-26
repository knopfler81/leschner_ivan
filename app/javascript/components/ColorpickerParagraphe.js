import React from "react"
import PropTypes from "prop-types"

import { SketchPicker } from 'react-color'


class ColorpickerParagraphe extends React.Component {

  constructor(props) {
    super(props);

    this.state = { selector: props.selector };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (paragraphe_color) => {
    let paragraphes =   Array.from(document.getElementsByTagName('p'))
    let h2_tag =  Array.from(document.getElementsByTagName('h2'))

    paragraphes.forEach(function(paragraphe){
      paragraphe.style.color = paragraphe_color.hex;
    })

	  let elem = document.querySelector('#' + this.state.selector);
 
	  elem.value = paragraphe_color.hex;
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

ColorpickerParagraphe.propTypes = {};

export default ColorpickerParagraphe

