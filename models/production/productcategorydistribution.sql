SELECT
    c."categoryId",
    c."categoryName",
    COUNT(p."productId") AS total_products
FROM
    {{ ref('stgCategories') }} c
LEFT JOIN
    {{ ref('stgProducts') }} p ON c."categoryId" = p."categoryId"
GROUP BY
    c."categoryId",
    c."categoryName"
ORDER BY
    total_products DESC
