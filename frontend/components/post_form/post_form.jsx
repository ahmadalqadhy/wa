import React from 'react'
import { Link, NavLink } from 'react-router-dom';

class PostForm extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            title: "",
            status: "",
            body: ""
        }
        this.handleSubmit = this.handleSubmit.bind(this)
    }

    update(field){
        return e => this.setState({
            [field]: e.currentTarget.value
        })
    }

    handleSubmit(e) {
        e.preventDefault();
        const post = Object.assign({}, this.state);
        this.props.createPost(post)
            .then(() => this.props.history.push("/posts"))
    }

    // componentDidUpdate() might need to live on DB

    render (){
        return(
            <div className="modal-container">
                <Link to="/posts"><button>Go Back to Posts</button></Link>
                <div className="text-form-container">
                    <form onSubmit={this.handleSubmit}>
                        <input type="text"
                            placeholder="Title"
                            value={this.state.title}
                            onChange={this.update("title")}
                            className="text-form-title-input"/>
                        <br/>
                        <textarea
                            placeholder="body"
                            value={this.state.body}
                            onChange={this.update("body")}
                            className="text-form-body-input"></textarea>
                        <br/>
                        <select
                            value={this.state.status} 
                            onChange={this.update("status")}>
                            <option value="" disabled>Bill Status</option>
                            <option value="introduced">Introduced</option>
                            <option value="passed-house">Passed House</option>
                            <option value="passed-senate">Passed Senate</option>
                            <option value="enacted">Enacted</option>
                        </select>
                        <br/>
                        <div className="post-button-area">
                            <input type="submit" value="Post" className="post-button"/>
                        </div>
                    </form>
                </div>
            </div>
        )
    }
}

export default PostForm