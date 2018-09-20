import React from "react"
import PropTypes from "prop-types"

import { SketchPicker } from 'react-color'


class ColorpickerNavLinks extends React.Component {

  constructor(props) {
    super(props);

    this.state = { selector: props.selector };

    this.handleChange = this.handleChange.bind(this);
  }

  handleChange = (nav_links_color) => {
   	let nav_links_tag = Array.from(document.getElementsByClassName('nav-link'))
   	nav_links_tag.forEach(function(links){
   		// links.style.color = nav_links_color.hex;
      links.setAttribute('style', 'color: ' + nav_links_color.hex + ' !important;')
   	})

	    let elem = document.querySelector('#' + this.state.selector);

	    elem.value = nav_links_color.hex;
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

ColorpickerNavLinks.propTypes = {};

export default ColorpickerNavLinks


