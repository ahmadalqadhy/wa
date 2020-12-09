import React from 'react';
import { Link } from 'react-router-dom';
import CommentsForm from '../comments/comment_form_container'
import Comments from '../comments/comments'

class PostShow extends React.Component {
    constructor(props) {
        super(props);
    }


    componentDidMount() {
        this.props.requestPost(this.props.matchedid);
    }

    render() {
        const { post, deletePost, matchedid, sessionid, deleteComment } = this.props;
        const carr = this.props.post.comments ? Object.values(this.props.post.comments) : null;
        const comments = (<Comments comments={carr} deleteComment={deleteComment} currentUser={sessionid}/>);
        let prefix = post.author.chamber === "senate" ? "Sen." : "Rep."
        let party = post.author.party === "republican" ? "(R)" : "(D)"

        let status = post.status === "introduced" ? "Introduced" :
                post.status === "passed-house" ? "Passed House" : 
                post.status === "passed-senate" ? "Passed Senate" :
                "Enacted" 

        return (
          <div className="showbackground">
              <div className="show">
                    <Link to="/posts"><button className="loginbutton">Go Back To Posts</button></Link>
                    <h1 className="showtitle">{post.title}</h1>
                    <h2>{prefix} {post.author.name}</h2>
                    <h2>{status}</h2>
                    <div className="showbody">{post.body}</div>
              </div>
              {comments}
              <CommentsForm postId={this.props.post.id}></CommentsForm>
          </div>
        );
    }
}

export default PostShow;