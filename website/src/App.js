import './App.css';
import {
  BrowserRouter,
  Routes,
  Route,
} from "react-router-dom";
import DashboardPage from './pages/Dasboard'

function App() {
  return (
   
     <BrowserRouter>
        <Routes>
            {/* <Route path="/login" element={<LoginPage/>} />
            <Route path="/signup" element={<SignupPage/>} /> */}
            <Route path="/dashboard" element={<DashboardPage/>} />
        </Routes>
      </BrowserRouter>
   
  );
}

export default App;