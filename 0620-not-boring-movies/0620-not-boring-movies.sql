SELECT id, movie, description, rating
FROM Cinema
Where description != 'boring' and id % 2 = '1'
ORDER BY rating DESC
 