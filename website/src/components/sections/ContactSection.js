import React from 'react';

const ContactSection = () => {
  return (
    <div className="bg-blue-600 text-white py-20">
      <div className="container mx-auto text-center">
        <h2 className="text-3xl font-bold mb-6">Contact Us</h2>
        <p className="text-lg">Have questions or want to learn more?</p>
        <a
          href="mailto:adamobrieniot@gmail.com"
          className="bg-white text-blue-600 py-3 px-6 mt-6 inline-block rounded-lg hover:bg-blue-200"
        >
          Send us an email
        </a>
      </div>
    </div>
  );
};

export default ContactSection;
