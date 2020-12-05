import * as LegislatorAPIUtil from '../util/legislator_api_util'

export const RECEIVE_LEGISLATORS = 'RECEIVE_LEGISLATORS'

const receiveAllLegislators = legislators => ({
    type: RECEIVE_LEGISLATORS,
    legislators
})


export const requestLegislators = () => dispatch => (
    LegislatorAPIUtil.fetchLegislators()
        .then(legislators => {
            return (
                dispatch(receiveAllLegislators(legislators))
            )
        }
    )
)