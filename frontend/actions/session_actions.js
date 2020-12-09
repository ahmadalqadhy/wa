import * as APIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const CLEAR_SESSION_ERRORS = 'CLEAR_SESSION_ERRORS'

export const receiveCurrentUser = currentUser => ({
    type: RECEIVE_CURRENT_USER,
    currentUser
});

export const logoutCurrentUser = () => ({
    type: LOGOUT_CURRENT_USER,
});

export const signupConstituents = user => dispatch => (
    APIUtil.signupConstituents(user)
        .then(
            user => (dispatch(receiveCurrentUser(user))),
            )
);
export const signupLegislators = user => dispatch => (
    APIUtil.signupLegislators(user)
        .then(
            user => (dispatch(receiveCurrentUser(user))),
            )
);

export const login = user => dispatch => (
    APIUtil.login(user)
        .then(
            user => (dispatch(receiveCurrentUser(user))),
            )
);

export const logout = () => dispatch => {
    return(
        APIUtil.logout()
        .then(user => (dispatch(logoutCurrentUser()))
        )
    )
}
