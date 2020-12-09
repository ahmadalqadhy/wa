import { connect } from "react-redux";
import { createComment } from "../../actions/comments_actions";
import CommentForm from "./comment_form";

const msp = (state, ownProps) => {
  const postId = ownProps.postId;
  return {
    currentUser: state.session.id,  
    body: '',
    postId: ownProps.postId
  };
};

const mdp = (dispatch) => {
  return {
    createComment: (comment) => dispatch(createComment(comment)),
  };
};

export default connect(msp, mdp)(CommentForm);