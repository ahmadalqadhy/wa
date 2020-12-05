import { RECEIVE_POSTS, REMOVE_POST, RECEIVE_POST } from '../actions/posts_actions'
// import { RECEIVE_COMMENT } from "../actions/comment_actions"
// import { merge } from 'lodash';

const PostsReducer = ( state = {}, action ) => {
    Object.freeze(state)
    let nextState
    switch (action.type) {
      case RECEIVE_POSTS:
        return action.posts;
      case RECEIVE_POST:
        return Object.assign({}, { [action.post.id]: action.post }, state);
      case REMOVE_POST:
        nextState = Object.assign({}, state);
        delete nextState[action.postId];
        return nextState;
    //   case RECEIVE_COMMENT:
    //     let post = action.comment.post_id;
    //     nextState = merge({}, state)
    //     nextState[post].comments.push({body: action.comment.body, author_id: action.comment.author_id,});
    //     return nextState;
      default:
        return state;
    }
}

export default PostsReducer