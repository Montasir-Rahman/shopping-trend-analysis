--Normalization Step-02
UPDATE shopping_trend
SET st_id = shipping_types.type_id
FROM shipping_types
WHERE shopping_trend.shipping_type = shipping_types.type_name;