// import { RECEIVE_CURRENT_USER } from '../actions/session_actions'
import { RECEIVE_LEGISLATORS} from '../actions/legislators_actions'

const legislatorsReducer = (state = {}, action) => {
    Object.freeze(state)

    switch (action.type) {
        // case RECEIVE_CURRENT_USER:
        //     return Object.assign({}, state, { [action.currentUser.id]: action.currentUser })
        case RECEIVE_LEGISLATORS:
            return action.legislators
        default:
            return state
    }
}

export default legislatorsReducer