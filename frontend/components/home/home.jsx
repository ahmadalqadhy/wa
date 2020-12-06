import React from 'react';
import { Link, NavLink } from 'react-router-dom';

const Home = () => {
    return(
        <div className="background">
            <span className="junk">
                <h1 className="title">Bill Tracker</h1>
                <br/>
                <Link to="/legislator">
                    <button className="userchoice">Continue as Legislator</button>
                </Link>
                <Link to='/constituent'>
                    <button className="userchoice">Continue as Constituent</button>
                </Link>     
            </span>
        </div>
    )
}

export default Home