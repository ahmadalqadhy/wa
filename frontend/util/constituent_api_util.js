export const fetchConstituents = () => (
    $.ajax({
        url: '/api/constituents',
        method: 'GET'
    })
)