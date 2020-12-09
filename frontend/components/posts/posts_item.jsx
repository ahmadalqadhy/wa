import React from 'react'
import { Link } from 'react-router-dom'

const PostItem = ({post, deletePost, currentUser }) => {
    let title = post.author.chamber === "senate" ? "Sen." : "Rep."
    let party = post.author.party === "republican" ? "(R)" : "(D)"
    let action
    if (post.author_id === currentUser){
        action = <i onClick={() => deletePost(post.id)} className="far fa-trash-alt item-icon"></i>
    } else{
        action = null
    }

    let status = post.status === "introduced" ? "Introduced" :
                post.status === "passed-house" ? "Passed House" : 
                post.status === "passed-senate" ? "Passed Senate" :
                "Enacted" 

    return(
        <div className="post">
            <h2 className="posttitle">{post.title}</h2>
            <div className="postdetails">
                <span className="poster">{title} {post.author.name} {party}</span>
                <span className="status"><span>{status}</span> {action}</span>
            </div>
            <br/>
            <div className="body">{post.body}</div>
            <br/>
            <Link to={`/posts/${post.id}`}>See Full Post</Link>
        </div>

    )
}


export default PostItem