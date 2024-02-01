import React from 'react';

const GraphCard = ({ graphUrl }) => {
  return (
    <div className="p-4 shadow-lg rounded-lg">
      <iframe
        title="IoT Data Graph"
        src={graphUrl}
        width="700"
        height="250"
        frameBorder="0"
      ></iframe>
    </div>
  );
};

export default GraphCard;
