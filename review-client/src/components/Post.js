// src/Post.js
import React from 'react';

const Post = ({ post }) => {
    return (
        <div className="post">
            <h2>{post.Title}</h2>
            <p>{post.Content}</p>
            <p><strong>Created At:</strong> {new Date(post.CreatedAt).toLocaleString()}</p>
            <p><strong>Reviewed:</strong> {post.IsReviewed ? "Yes" : "No"}</p>
            <p><strong>Visible:</strong> {post.IsVisible ? "Yes" : "No"}</p>
            {post.ReviewNotes && <p><strong>Review Notes:</strong> {post.ReviewNotes}</p>}
        </div>
    );
};

export default Post;
