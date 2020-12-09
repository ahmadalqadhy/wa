import { RECEIVE_CONSTITUENTS} from '../actions/constituents_actions'

const constituentsReducer = (state = {}, action) => {
    Object.freeze(state)

    switch (action.type) {
        case RECEIVE_CONSTITUENTS:
            return action.constituents
        default:
            return state
    }
}

export default constituentsReducer