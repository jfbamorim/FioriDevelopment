# FioriDevelopment
Fiori Applications Development

The first application is an easy one. 
On the backend (Eclipse + ADT + BTP Free Trial account), for this development two tables were created:
- ZTORDERS_HEADER
- ZTORDERS_ITEM

After this, it were created two CDS Views and used Restful Application Programming model
in order to make it avaliable for consumption in the frontend side.

At this point, the freestyle Fiori application will show a master list with the
data from the orders header. In case of a click on any order, it will present
more details on the requested order.

In the future, this will have more fields added, such as:
- Total value of order;
- Delivery address;
- More informations/detail on the order;
Additionaly, will add some user actions such as: change the order status.

And finally, it will end by adding a map to check where the order is at that moment.
