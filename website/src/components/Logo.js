import React from 'react';
import logo from '../img/logo.png'; // Assuming the logo image is in the "img" folder

const Logo = () => {
  return (
    <div className="flex items-center justify-center"> {/* Add Flexbox classes */}
      <img alt="Logo" className="h-24 w-24" src={logo} />
    </div>
  );
};

export default Logo;
