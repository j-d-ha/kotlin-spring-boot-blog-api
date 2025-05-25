-- V2__Create_blogs_table.sql
-- Create blogs table with proper foreign key constraints

CREATE TABLE blogs
(
    id         INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id  INTEGER  NOT NULL,
    title      TEXT     NOT NULL,
    content    TEXT,
    score      REAL     NOT NULL DEFAULT 0.0,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (author_id) REFERENCES users (id) ON DELETE CASCADE
);

-- Create indexes for better query performance
CREATE INDEX idx_blogs_author_id ON blogs (author_id);
CREATE INDEX idx_blogs_created_at ON blogs (created_at);
CREATE INDEX idx_blogs_score ON blogs (score);
CREATE INDEX idx_blogs_title ON blogs (title);