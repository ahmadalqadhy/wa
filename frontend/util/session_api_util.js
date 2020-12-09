export const login = user => {
    return (
        $.ajax({
            method: 'POST',
            url: '/api/session',
            data: { user }
        })
    )
}

export const signupLegislators = legislator => {
    return(
        $.ajax({
            method: 'POST',
            url: '/api/legislators',
            data: { legislator }
        })
    )
}

export const signupConstituents = constituent => (
    $.ajax({
        method: 'POST',
        url: '/api/constituents',
        data: { constituent }
    })
);

export const logout = () => (
    $.ajax({
        method: 'DELETE',
        url: '/api/session'
    })
);