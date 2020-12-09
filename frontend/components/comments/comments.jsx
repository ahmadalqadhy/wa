import React from "react";

const Comments = ({ comments, deleteComment, currentUser }) => {

  let allComments = comments ? (
    comments.map((comment) => {
    
      let action
      if (comment.author.id === currentUser){
          action = <i onClick={() => deleteComment(comment)} className="far fa-trash-alt item-icon"></i>
      } else{
          action = null
      }
      return (
        <ul className="comment" key={comment.id}>
          <li className="comment-author">{`${comment.author.name}:`}</li>
          <li className="comment-body">{action} {comment.body}</li>
        </ul>
      );
    })
  ) : (
    <span></span>
  );

  return (
    <div>
      <ul className="comments-container">{allComments}</ul>
    </div>
  );
};

export default Comments;
