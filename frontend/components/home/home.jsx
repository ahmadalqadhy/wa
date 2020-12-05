import React from 'react';
import { Link, NavLink } from 'react-router-dom';

const Home = () => {
    return(
        <div>
            <Link to="/legislator">
                <button>Continue as Legislator</button>
            </Link>
            <Link to='/constituent'>
                <button>Continue as Legislator</button>
            </Link>
        </div>
    )
}

export default Home