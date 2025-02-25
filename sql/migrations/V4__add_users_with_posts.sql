WITH new_users AS (
    INSERT INTO users (user)
    VALUES ('Alex'), ('Max')
    RETURNING id, username
)
-- Добавляем по одному посту для каждого нового пользователя
INSERT INTO posts (text, owner_id)
SELECT 'Первый пост от ' || username, id
FROM new_users;