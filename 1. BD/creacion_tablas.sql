IF object_id('PRODUCT', 'U') is null
	CREATE TABLE PRODUCT (
		[prod_id] nvarchar(255),
		[prod_name] nvarchar(255),
		[prod_condition] int,
		[prod_status] int,
		PRIMARY KEY( [prod_id] )
	);

IF object_id('PRODUCT_CONDITION', 'U') is null
	CREATE TABLE PRODUCT_CONDITION (
		[cond_id] int,
		[cond_name] nvarchar(255),
		PRIMARY KEY( [cond_id] )
	);

IF object_id('PRODUCT_STATUS', 'U') is null
	CREATE TABLE PRODUCT_STATUS (
		[cond_id] int,
		[cond_name] nvarchar(255),
		PRIMARY KEY( [cond_id] )
	);
