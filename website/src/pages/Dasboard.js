import React from 'react';
import NavBar from '../components/headers/NavBar';
import HeroSection from '../components/sections/HeroSection';
import FeatureCard from '../components/cards/FeatureCard';
import GraphCard from '../components/cards/GraphCard';
import ContactSection from '../components/sections/ContactSection';

const features = [
    {
      icon: '🌐',
      title: 'Cloud',
      description: 'DFRobot Iot Cloud board Connectivity',
    },
    {
      icon: '⚙️',
      title: 'PCB Design',
      description: 'Custom designed hardware.',
    },
    {
      icon: '📊',
      title: 'Data Analytics',
      description: 'Real time data from river tests.',
    },
    {
      icon: '🕮',
      title: 'Microbit Sensor Pod Library',
      description: 'Simplified Codebase ready to use for technical and non-technical users.',
    },
  ];

const graphData = [
    {
      title: 'Example Graph 1',
      graphUrl: 'https://thingspeak.com/channels/1685572/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&type=line&update=15', // Replace with actual URL
    },
    {
      title: 'Example Graph 2',
      graphUrl: 'https://thingspeak.com/channels/1685572/charts/2?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&type=line&update=15', // Replace with actual URL
    },
    // Add more graph data objects as needed
  ];

const Dashboard = () => {
    
  return (
    <div className="w-screen bg-black text-white">
      <NavBar />
      <HeroSection />
      {/* Key Features Cards */}
      <div>
        <div className="bg-gray-200 text-black py-20">
            <div className="container mx-auto text-center">
                <h2 className="text-3xl font-bold mb-6">Key Technologies</h2>
                <div className="grid gap-4 grid-cols-2 md:grid-cols-2">
                {features.map((feature, index) => (
                    <FeatureCard
                    key={index}
                    icon={feature.icon}
                    title={feature.title}
                    description={feature.description}
                    />
                ))}
                </div>
            </div>
        </div>
      </div>

      {/* Graph Data Cards */}
      <div className="bg-gray-200 text-black py-20">
        <div className="container mx-auto text-center">
            <h2 className="text-3xl font-bold mb-6">Sensor Pod Data</h2>
                <div className="grid gap-4 grid-cols-1 md:grid-cols-2 lg:grid-cols-2">
                    {graphData.map((graph, index) => (
                    <div key={index}>
                    <h3 className="text-xl font-bold mb-2">{graph.title}</h3>
                    <GraphCard graphUrl={graph.graphUrl} />
                    </div>
                    ))}
                </div>
            </div>
        </div>
      <ContactSection />
    </div>
  );
};

export default Dashboard;
