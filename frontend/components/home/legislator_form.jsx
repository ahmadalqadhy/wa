import React from 'react';
import { Link } from 'react-router-dom';

class LegislatorForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = { name: '', party: '', chamber: ""};
        this.handleLogin = this.handleLogin.bind(this);
        this.handleSignup = this.handleSignup.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleLogin(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        debugger
        this.props.login(user)
            .then(() => this.props.history.push("/posts"))
    }

    handleSignup(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        debugger
        this.props.signup(user)
            .then(() => this.props.history.push("/posts"))
    }

    render() {
        return (
            <div className="background">
                <div className="form-container">
                    <h2 className="loginmessage">Already Have an Account?</h2>
                    <form onSubmit={this.handleLogin} className="login-form-box">
                        <div className="login-form">
                            <input type="text"
                                className="formfield"
                                placeholder="Enter Name"
                                value={this.state.name}
                                onChange={this.update('name')}
                            />
                            <br/>
                            <input className="loginbutton" type="submit" value="Login" />
                        </div>
                    </form>
                    <br/>
                    <h2 className="loginmessage">New to Bill Tracker?</h2>
                    <br/>
                    <form className="login-form" onSubmit={this.handleSignup}>
                        <input type="text"
                            className="formfield"
                            placeholder = "Enter Name"
                            value={this.state.name}
                            onChange={this.update('name')}
                        />
                        <br/>
                        <select
                            className="formfield"
                            value={this.state.party} 
                            onChange={this.update("party")}>
                            <option value="" disabled>Select Party</option>
                            <option value="republican">Republican</option>
                            <option value="democrat">Democrat</option>
                            <option value="independent">Independent</option>
                        </select>
                        <br/>
                        <select
                            className="formfield"
                            value={this.state.chamber} 
                            onChange={this.update("chamber")}>
                            <option value="" disabled>Select Chamber</option>
                            <option value="senate">Senate</option>
                            <option value="house">House</option>
                        </select>
                        <br/>
                        <input className="loginbutton" type="submit" value="Sign Up" />
                    </form>
                    <br/>
                    <Link to="/home">Go Back</Link>
                </div>
            </div>
        );
    }
}

export default LegislatorForm;
