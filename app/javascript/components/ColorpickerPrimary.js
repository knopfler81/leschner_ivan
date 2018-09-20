import React from "react"
import PropTypes from "prop-types"

import { SketchPicker } from 'react-color'


class ColorpickerPrimary extends React.Component {

  constructor(props) {
    super(props);

    this.state = { selector: props.selector };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (primary_color) => {
    let btn_tag = Array.from(document.getElementsByClassName('btn-primary'))
    let icons =   Array.from(document.getElementsByClassName('icon'))
    let h2_tag =  Array.from(document.getElementsByTagName('h2'))
    //let chat = document.getElementById('tawkchat-status-icon')

    icons.forEach(function(icon){
      icon.style.color = primary_color.hex;
    })

    btn_tag.forEach(function(btn){
      btn.style.background = primary_color.hex;
      btn.style.border = primary_color.hex;
    })

    h2_tag.forEach(function(h2){
      h2.style.color = primary_color.hex;
    })

    //chat.style.background = primary_color.hex;
    //chat.setAttribute('style', 'backgroundColor: ' + primary_color.hex + ' !important;')
	  let elem = document.querySelector('#' + this.state.selector);
 
	  elem.value = primary_color.hex;
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

ColorpickerPrimary.propTypes = {};

export default ColorpickerPrimary

