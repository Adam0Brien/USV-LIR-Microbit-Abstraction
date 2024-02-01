import React from 'react';

const FeatureCard = ({ icon, title, description }) => {
  return (
    <div className="p-4 shadow-lg rounded-lg">
      <div className="text-center mb-4">
        <span className="text-4xl">{icon}</span>
      </div>
      <h3 className="text-xl font-bold mb-2">{title}</h3>
      <p>{description}</p>
    </div>
  );
};

export default FeatureCard;
