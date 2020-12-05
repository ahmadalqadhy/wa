@posts.each do |post|
    json.set! post.id do
        json.extract! post, :id, :title, :body, :status, :author_id
            json.author do
                json.name post.author.name
            end
        # json.comments post.comments
    end
end