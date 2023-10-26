import React from 'react';
import ReactDOM from 'react-dom';
import Menu from '@ssw/ssw.megamenu/dist/menu/menu';
import MobileMenu from '@ssw/ssw.megamenu/dist/mobile-menu/mobile-menu';

var isMenuOpened= false; 
var props = { isMenuOpened: isMenuOpened };
var element = React.createElement(MobileMenu, props);


const updateMobileMenu = () => {
    Object.assign(props, { isMenuOpened: isMenuOpened });
    element = React.createElement(MobileMenu, props);
    document.getElementById('sb-site').style.transform = isMenuOpened ? "translateX(84%)" : "translateX(0px)"
    ReactDOM.render(element, document.getElementById("mobilemegamenu"));
}

const actionOnToggleClick = () => {
    isMenuOpened = !isMenuOpened;
    updateMobileMenu();
}

const handleClick = e => { 
    isMenuOpened = false;
    updateMobileMenu();

};

document.getElementById('sb-site').addEventListener('mousedown', handleClick);



ReactDOM.render(<Menu onClickToggle={() => actionOnToggleClick()} prefix="ssw"/>, document.getElementById("megamenu"));

ReactDOM.render(element, document.getElementById("mobilemegamenu"));

//ReactDOM.render(<MobileMenu isMenuOpened={isMenuOpened}/>, document.getElementById("mobilemegamenu"));