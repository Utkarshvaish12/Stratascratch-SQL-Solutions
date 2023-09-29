select count(shipment_id),date_format(shipment_date,'%Y-%M') as date_ym 
from amazon_shipment
group by month(shipment_date);