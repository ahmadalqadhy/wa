import { RECEIVE_POSTS, REMOVE_POST, RECEIVE_POST } from '../actions/posts_actions'
import { RECEIVE_COMMENT, REMOVE_COMMENT } from "../actions/comments_actions"
import { merge } from 'lodash';

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
      case REMOVE_COMMENT:
        nextState = Object.assign({}, state);
        return nextState;
      case RECEIVE_COMMENT:
        let post = action.comment.post_id;
        nextState = merge({}, state)
        nextState[post].comments.push(action.comment);
        return nextState;
      default:
        return state;
    }
}

export default PostsReducer