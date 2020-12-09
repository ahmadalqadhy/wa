import React from 'react';
import PostItem from './posts_item';
import { Link, NavLink } from 'react-router-dom';

class PostIndex extends React.Component {
    constructor(props) {
        super(props);
    }

    componentDidUpdate(prevProps) {
        if(this.props.posts.length !== prevProps.posts.length){
            this.props.requestPosts()
        }
    }

    componentDidMount() {
        // this.props.requestUsers();
        this.props.requestPosts();
    }

    render() {
        const { posts, logout, currentUser, deletePost } = this.props;
        if (!this.props.posts) return null
        let pages = posts.pop()
        const backwardPosts = posts.reverse()
        return (
          <div className="background">
              <div className="postpage">
                <Link to="/home"><button className="loginbutton" onClick={logout}>Log Out</button></Link>
                <br/>
                <Link to="/create-post"><button className="loginbutton">Create A Post</button></Link>
                <br/>
                <h2 className="loginmessage">All Posts</h2>
                <ul>
                {backwardPosts.map((post) => (
                    <PostItem
                    key={`post${post.id}`}
                    post={post}
                    currentUser={currentUser}
                    deletePost={deletePost}
                    />
                ))}
                </ul>
              </div>
          </div>
        );
    }
}

export default PostIndex;