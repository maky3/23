SELECT DISTINCT fv.value
FROM products p
JOIN products_to_category ptc ON p.id = ptc.product_id
JOIN products_to_filters_value ptfv ON p.id = ptfv.product_id
JOIN filters_value fv ON ptfv.filter_value_id = fv.id
JOIN filters f ON fv.filter_id = f.id
WHERE ptc.category_id = 2
AND p.status = 1
AND f.id = 2;