import PostShow from './post_show';
import { requestPost, deletePost } from '../../actions/posts_actions'
import { deleteComment } from '../../actions/comments_actions'
import { connect } from 'react-redux';

const msp = (state, ownProps) => {
    return({
        matchedid: ownProps.match.params.postid,
        post: state.entities.posts[ownProps.match.params.postid],
        sessionid: state.session.id
    })
}

const mdp = (dispatch) => {
    return ({
        requestPost: (id) => dispatch(requestPost(id)),
        deletePost: (id) => dispatch(deletePost(id)),
        deleteComment: (id) => dispatch(deleteComment(id))
    })
}

export default connect(msp, mdp)(PostShow)