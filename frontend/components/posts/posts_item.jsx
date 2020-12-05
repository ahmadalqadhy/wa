import React from 'react'

const PostItem = ({ key, post, deletePost }) => (
    <div className="dashboard-root">
        {post.author.name}
        <br/>
        {post.title}
        <br/>
        {post.status}
        <br/>
        {post.body}
        <button onClick={() => deletePost(post.id)}>Delete</button>
    </div>
)

export default PostItem