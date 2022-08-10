CREATE TABLE IF NOT EXISTS public.customer
(
    "customer_Id" integer NOT NULL,
    customer_fname character varying COLLATE pg_catalog."default",
    customer_lname character varying COLLATE pg_catalog."default",
    customer_segment character varying COLLATE pg_catalog."default",
    customer_country character varying COLLATE pg_catalog."default",
    customer_state character varying COLLATE pg_catalog."default",
    customer_city character varying COLLATE pg_catalog."default",
    customer_street character varying COLLATE pg_catalog."default",
    CONSTRAINT "Customer_Id" PRIMARY KEY ("customer_Id")
);

CREATE TABLE IF NOT EXISTS public.orders
(
    order_id integer NOT NULL,
    customer_id integer,
    product_card_id integer,
    delivery_status character varying(255) COLLATE pg_catalog."default",
    payment_type character varying(9) COLLATE pg_catalog."default",
    real_days_for_shipping integer,
    scheduled_days_for_shipment integer,
    benefit_per_order numeric,
    sales_per_customer numeric,
    shipping_mode character varying(255) COLLATE pg_catalog."default",
    late_delivery_risk integer,
    latitude numeric,
    longitude numeric,
    market character varying(255) COLLATE pg_catalog."default",
    order_item_discount numeric,
    order_item_discount_rate numeric,
    order_item_product_price numeric,
    order_item_profit_ratio numeric,
    order_item_quantity numeric,
    sales numeric,
    order_item_total numeric,
    order_profit_per_order numeric,
    order_region character varying(255) COLLATE pg_catalog."default",
    order_status character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT orders_pkey PRIMARY KEY (order_id)
);

CREATE TABLE IF NOT EXISTS public.product
(
    product_card_id integer NOT NULL,
    product_name character varying COLLATE pg_catalog."default",
    product_price numeric,
    department_name character varying COLLATE pg_catalog."default",
    category_name character varying COLLATE pg_catalog."default",
    department_id integer,
    category_id integer,
    CONSTRAINT "Product_Code" PRIMARY KEY (product_card_id)
);

ALTER TABLE IF EXISTS public.orders
    ADD CONSTRAINT fk_customer FOREIGN KEY (customer_id)
    REFERENCES public.customer (customer_Id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.orders
    ADD CONSTRAINT fk_product FOREIGN KEY (product_card_id)
    REFERENCES public.product (product_card_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


SELECT * FROM orders
INNER JOIN product
ON orders.product_card_id = product.product_card_id
INNER JOIN customer
ON orders.customer_id = customer.customer_id