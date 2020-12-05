import * as ConstituentAPIUtil from '../util/constituent_api_util'

export const RECEIVE_CONSTITUENTS = 'RECEIVE_CONSTITUENTS'

const receiveAllConstituents = constituents => ({
    type: RECEIVE_CONSTITUENTS,
    constituents
})


export const requestConstituents = () => dispatch => (
    ConstituentAPIUtil.fetchConstituents()
        .then(constituents => {
            return (
                dispatch(receiveAllConstituents(constituents))
            )
        }
    )
)