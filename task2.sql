select
products.product,
suppliers.supplier
from actions
inner join suppliers on actions.supplier_id = suppliers.id
inner join products on actions.product_id = products.id
where not exists (SELECT *
FROM actions
WHERE actions.product_id = products.id AND
supplier_id = 4)
