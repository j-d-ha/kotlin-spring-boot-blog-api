-- V3__Create_comments_table.sql
-- Create comments table with proper foreign key constraints

CREATE TABLE comments
(
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id    INTEGER  NOT NULL,
    blog_id    INTEGER  NOT NULL,
    message    TEXT     NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    FOREIGN KEY (blog_id) REFERENCES blogs (id) ON DELETE CASCADE,
    UNIQUE (user_id, blog_id)
);

-- Create indexes for better query performance
CREATE INDEX idx_comments_user_id ON comments (user_id);
CREATE INDEX idx_comments_blog_id ON comments (blog_id);
CREATE INDEX idx_comments_created_at ON comments (created_at);