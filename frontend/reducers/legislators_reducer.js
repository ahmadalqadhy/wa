import { RECEIVE_LEGISLATORS} from '../actions/legislators_actions'

const legislatorsReducer = (state = {}, action) => {
    Object.freeze(state)

    switch (action.type) {
        case RECEIVE_LEGISLATORS:
            return action.legislators
        default:
            return state
    }
}

export default legislatorsReducer