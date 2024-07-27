// src/components/PostContainer.js
import React, { useState, useEffect } from 'react';
import { getPosts } from '../services/postService';
import Post from './Post';

const PostContainer = () => {
    const [posts, setPosts] = useState([]);
    const [currentIndex, setCurrentIndex] = useState(0);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);

    useEffect(() => {
        const fetchPosts = async () => {
            try {
                const data = await getPosts();
                setPosts(data);
            } catch (err) {
                setError(err);
            } finally {
                setLoading(false);
            }
        };

        fetchPosts();
    }, []);

    const handleNext = () => {
        setCurrentIndex((prevIndex) => (prevIndex + 1) % posts.length);
    };

    const handlePrev = () => {
        setCurrentIndex((prevIndex) => (prevIndex - 1 + posts.length) % posts.length);
    };

    if (loading) return <div>Loading...</div>;
    if (error) return <div>Error: {error.message}</div>;
    if (posts.length === 0) return <div>No posts available</div>;

    return (
        <div className="post-container">
            <Post post={posts[currentIndex]} />
            <div className="navigation-buttons">
                <button onClick={handlePrev} disabled={posts.length <= 1}>Previous</button>
                <button onClick={handleNext} disabled={posts.length <= 1}>Next</button>
            </div>
        </div>
    );
};

export default PostContainer;
