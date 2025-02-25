WITH new_users AS (
    INSERT INTO users (user)
    VALUES ('Alex'), ('Max')
    RETURNING id, user
)
-- Добавляем по одному посту для каждого нового пользователя
INSERT INTO posts (text, owner_id)
SELECT CONCUT('Первый пост от ', user), id
FROM new_users;