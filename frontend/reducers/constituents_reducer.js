// import { RECEIVE_CURRENT_USER } from '../actions/session_actions'
import { RECEIVE_CONSTITUENTS} from '../actions/constituents_actions'

const constituentsReducer = (state = {}, action) => {
    Object.freeze(state)

    switch (action.type) {
        // case RECEIVE_CURRENT_USER:
        //     return Object.assign({}, state, { [action.currentUser.id]: action.currentUser })
        case RECEIVE_CONSTITUENTS:
            return action.constituents
        default:
            return state
    }
}

export default constituentsReducer