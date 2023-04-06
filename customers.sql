select a.customer_id, b.name, b.email, min(a.created_at) as first_order_at, count(a.created_at)
from analytics-engineers-club.coffee_shop.orders a
left join analytics-engineers-club.coffee_shop.customers b on a.customer_id=b.id
group by 1,2,3
order by first_order_at
limit 5
