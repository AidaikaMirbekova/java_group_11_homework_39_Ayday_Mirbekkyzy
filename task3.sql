select
categories.category,
suppliers.supplier,
date(action_date)
from actions
inner join suppliers on actions.supplier_id = suppliers.id
inner join products on actions.product_id = products.id
inner join categories on products.category_id = categories.id
where supplier_id=(select id from suppliers where supplier = 'IDT')
and date(action_date) between '2016-06-01' and '2016-08-31';