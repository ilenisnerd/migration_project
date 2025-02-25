WITH new_users AS (
    INSERT INTO users (name)
    VALUES ('Alex'), ('Max')
    RETURNING id, name
) -- Добавляем по одному посту для каждого нового пользователя

INSERT INTO posts (text, owner_id)
SELECT CONCAT('Первый пост от ', name), id
FROM new_users;