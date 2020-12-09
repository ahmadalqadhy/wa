import { connect } from 'react-redux';
import { login, signupConstituents } from '../../actions/session_actions';
import ConstituentForm from './constituent_form';


const mapDispatchToProps = dispatch => {
    return {
        signup: (user) => dispatch(signupConstituents(user)),
        login: (user) => dispatch(login(user))
    };
};

export default connect(null, mapDispatchToProps)(ConstituentForm);