INSERT INTO Posts (UserId, Title, Content, CreatedAt, IsReviewed, IsVisible, ReviewNotes)
                    VALUES
                        (1, 'Post Nice', 'Content 1', '2022-01-01', 1, 1, 'Review notes 1'),
                        (2, 'Good Post', 'Content 2 All Good', '2022-01-02', 1, 1, 'Review notes 2'),
                        (2, 'Good Post 2', 'Small content, but good', '2022-01-02', 1, 1, NULL),
                        (3, 'Post 3', 'R4R Content 3 good', '2022-01-03', 0, 0, NULL),
                        (4, 'Post 4', 'R4R Content 4 good', '2022-01-04', 0, 0, NULL),
                        (3, 'Post 5', 'R4R Content 3 bad', '2022-01-03', 0, 0, NULL),
                        (1, 'Post Ugly', 'Bad Content', '2022-01-01', 1, 0, NULL);