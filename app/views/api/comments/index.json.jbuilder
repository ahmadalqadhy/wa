@comments.each do |comment|
    json.set! comment.id do
        json.partial! "api/comments/comment", comment: comment
        json.author comment.author
    end
end