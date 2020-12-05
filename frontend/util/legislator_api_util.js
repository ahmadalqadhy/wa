export const fetchLegislators = () => (
    $.ajax({
        url: '/api/legislators',
        method: 'GET'
    })
)