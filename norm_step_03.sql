--Normalization Step-03
ALTER TABLE shopping_trend
ADD CONSTRAINT fk_st
FOREIGN KEY (st_id)
REFERENCES shipping_types(type_id);