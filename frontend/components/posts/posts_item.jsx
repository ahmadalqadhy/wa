import React from 'react'

const PostItem = ({post, deletePost }) => {
    let title = post.author.chamber === "senate" ? "Sen" : "Rep"

    return(
        <div className="post">
            <h2 className="posttitle">{post.title}</h2>
            <span className="poster">{title} {post.author.name}</span>
            <span className="status">Status: {post.status}</span>
            <br/>
            {post.body}
            <br/>
            <button onClick={() => deletePost(post.id)}>Delete</button>
        </div>

    )
}


export default PostItem