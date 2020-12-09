import PostIndex from './posts_index';
import { requestPosts, deletePost } from '../../actions/posts_actions'
import { logout } from "../../actions/session_actions"
import { connect } from 'react-redux';

const mapStateToProps = (state) => {
    return({
    currentUser: state.session.id,
    posts: Object.keys(state.entities.posts).map(key => state.entities.posts[key]),
})
};

const mapDispatchToProps = (dispatch) => ({
    requestPosts: () => dispatch(requestPosts()),
    deletePost: (id) => dispatch(deletePost(id)),
    logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(PostIndex);