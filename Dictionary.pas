unit Dictionary;

interface

const
SQL_SELECT_ALL_STATUSES_4_USER='Select * from order_status as OrdStat where OrdStat.user_id = :uid;';

SQL_SELECT_ALL_CODES='SELECT * FROM public.' + #34 + 'dct_ImmutableSalesFunnelStatuses' + #34 + '';

SQL_DELETE_STATUS_BY_ID='DELETE FROM order_status WHERE id = :id;';

SQL_SELECT_ORDERS_WITH_STATUS_TO_AVOID_SQL_ERROR='select orders.id FROM orders LEFT OUTER JOIN order_status ON orders.order_status = order_status.id WHERE orders.user_id=:uid AND order_status.id = :statusid';

SQL_INSERT_NEW_STATUS='INSERT INTO order_status (status, user_id) VALUES (:status, :userid);';

SQL_UPDATE_ORDER_STATUS='UPDATE order_status SET status = :status WHERE order_status.id=:id;';

SQL_FUNCTION_UPDATE_ORDER_CODE='Select * from update_order_status_code(:code, :id);';




implementation



end.
