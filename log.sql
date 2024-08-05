-- This is a SQL comment
select * from "scans" where "package_id"= (
    select "id" from "packages" where "from_address_id"=(
    select "id" from "addresses" where "address"="900 Somerville Avenue" and "contents" like "%congratulatory%"
    )) and "address_id"= (
    select "to_address_id" from "packages" where "from_address_id"=(
    select "id" from "addresses" where "address"="900 Somerville Avenue" and "contents" like "%congratulatory%"
    ));
    -- action==> drop   854==> reciver's person id   384==> pack id
-- *** The Lost Letter ***


-- This is a SQL comment
select * from "scans" where "package_id"=(select "id" from "packages" where "from_address_id" is null) ;
select * from "addresses" where "id"=(select "address_id" from "scans" where "package_id"=(select "id" from "packages" where "from_address_id" is null) and "action"="Drop");
-- *** The Devious Delivery ***


-- This is a SQL comment
select * from packages where "to_address_id"=(select "id" from "addresses" where "address"="728 Maple Place");
select * from "scans" where "id"=(select "id" from packages where "to_address_id"=(select "id" from "addresses" where "address"="728 Maple Place"));
select "name" from "drivers" where "id" =(select "driver_id"from "scans" where "id"=(select "id" from packages where "to_address_id"=(select "id" from "addresses" where "address"="728 Maple Place")));
-- *** The Forgotten Gift ***

