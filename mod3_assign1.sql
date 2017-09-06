-- Kenneth Frank

USE ap_DB; 

IF OBJECT_ID('pets') IS NOT NULL
DROP TABLE pets;

IF OBJECT_ID('owners') IS NOT NULL
DROP TABLE owners;

GO

-- Now, create the ONE side first; they're created in reverse order.
-- The "parent" table has to exist before you can reference it


--

CREATE TABLE owners
(

	owner_ID CHAR(4),
	owner_name VARCHAR(16),
	owner_address VARCHAR(50),
	owner_phoneNumber VARCHAR(13)
	--
	CONSTRAINT owner_PK PRIMARY KEY(owner_ID),


);
--
CREATE TABLE pets
(

	pet_ID CHAR(4),
	pet_name VARCHAR(16),
	pet_date DATETIME
	--
	CONSTRAINT pet_PK PRIMARY KEY(pet_ID) 
	CONSTRAINT pets_owners_FK FOREIGN KEY(pet_ID)

);
