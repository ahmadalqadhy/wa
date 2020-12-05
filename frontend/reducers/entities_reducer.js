import { combineReducers } from 'redux'
import legislatorsReducer from "./legislators_reducer";
import constituentsReducer from "./constituents_reducer"
import postsReducer from "./posts_reducer"

const entitiesReducer = combineReducers({
    legislators: legislatorsReducer,
    constituents: constituentsReducer,
    posts: postsReducer,
});

export default entitiesReducer;