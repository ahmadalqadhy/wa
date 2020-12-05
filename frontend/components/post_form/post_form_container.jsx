import { connect } from 'react-redux'
import { createPost } from '../../actions/posts_actions'
import PostForm from './post_form'

const mSTP = ({ entities }) => ({
    // currentUser: entities.users[session.id]
    entities
})

const mDTP = dispatch => ({
    createPost: post => dispatch(createPost(post)),
})

export default connect(mSTP, mDTP)(PostForm)