
json.pagy @trying

@posts.each do |post|
    json.set! post.id do
        json.extract! post, :id, :title, :body, :status, :author_id
            json.author do
                json.name post.author.name
                json.chamber post.author.chamber
                json.party post.author.party
            end
        json.comments post.comments.each do |comment|
            json.extract! comment, :id, :body, :post_id
                json.author do
                    json.name comment.author.name
                    json.id comment.author.id
                end
        end
    end
end