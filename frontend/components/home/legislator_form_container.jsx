import { connect } from 'react-redux';
import { login, signupLegislators } from '../../actions/session_actions';
import LegislatorForm from './legislator_form';

// const mapStateToProps = ({ errors }) => {
//     return {
//         errors: errors.session,
//     };
// };

const mapDispatchToProps = dispatch => {
    return {
        signup: (user) => dispatch(signupLegislators(user)),
        login: (user) => dispatch(login(user)),
    };
};

export default connect(null, mapDispatchToProps)(LegislatorForm);