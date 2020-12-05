import React from 'react';
import PostItem from './posts_item';

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
        // const { posts, currentUser } = this.props;
        const { posts } = this.props;
        if (!this.props.posts) return null
        const backwardPosts = posts.reverse()
        return (
          <div>
            <ul>
              {backwardPosts.map((post) => (
                <PostItem
                  key={`post${post.id}`}
                  post={post}
                //   currentUser={currentUser}
                  deletePost={this.props.deletePost}
                />
              ))}
            </ul>
          </div>
        );
    }
}

export default PostIndex;