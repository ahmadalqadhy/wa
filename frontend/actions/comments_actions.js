import * as CommentApiUtil from "../util/comment_api_util";
import { requestPost } from "./posts_actions";

export const RECEIVE_COMMENT = "RECEIVE_COMMENT";
export const REMOVE_COMMENT = "REMOVE_COMMENT";

const receiveComment = (comment) => {
  return {
    type: RECEIVE_COMMENT,
    comment,
  };
};

const removeComment = comment => {
  return({
      type: REMOVE_COMMENT,
      comment
  })
}

export const createComment = (comment) => (dispatch) => {
  return CommentApiUtil.createComment(comment).then((comment) => {
    return (
      dispatch(receiveComment(comment))
    )
  });
};

export const fetchComments = (post_id) => (dispatch) => {
  return CommentApiUtil.fetchComments(post_id).then((post) => {
    return dispatch(requestPost(post));
  });
};

export const deleteComment = (comment) => dispatch => {
    return(
    CommentApiUtil.deleteComment(comment.id)
        .then(() => dispatch(removeComment(comment)))
)}