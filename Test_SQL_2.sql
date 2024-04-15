WITH item_counts AS (
    SELECT item, COUNT(*) AS total_sold
    FROM item_bought
    GROUP BY item
)
SELECT 
    (SELECT item FROM item_counts ORDER BY total_sold DESC LIMIT 1) AS best_selling_item,
    (SELECT item FROM item_counts OFFSET (SELECT COUNT(*) FROM item_counts) / 2 LIMIT 1) AS middle_selling_item,
	(SELECT item FROM item_counts ORDER BY total_sold ASC LIMIT 1) AS worst_selling_item;