-- CreateTable
CREATE TABLE "accounts" (
    "id" SERIAL NOT NULL,
    "external_code" TEXT NOT NULL,
    "usuario_id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "acronym" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "accounts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "users" (
    "id" SERIAL NOT NULL,
    "external_code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "categories" (
    "id" SERIAL NOT NULL,
    "external_code" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "parent_id" INTEGER,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "categories_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "movements" (
    "id" SERIAL NOT NULL,
    "external_code" INTEGER NOT NULL,
    "account_id" INTEGER NOT NULL,
    "purchase_id" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "value" INTEGER NOT NULL,
    "date_time" TIMESTAMP(3) NOT NULL,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "movements_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "products" (
    "id" SERIAL NOT NULL,
    "external_code" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "default_unit" TEXT NOT NULL,
    "category_id" INTEGER,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "products_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "purchase" (
    "id" SERIAL NOT NULL,
    "external_code" INTEGER NOT NULL,
    "supplier_id" INTEGER,
    "number_installments" INTEGER NOT NULL,
    "full_amount_discount" INTEGER,
    "discount_value" INTEGER,
    "amount_charged" INTEGER NOT NULL,
    "date_time" TIMESTAMP(3) NOT NULL,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "purchase_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "purchase_items" (
    "id" SERIAL NOT NULL,
    "external_code" INTEGER NOT NULL,
    "purchase_id" INTEGER NOT NULL,
    "product_id" INTEGER,
    "description" TEXT NOT NULL,
    "supplier_code" TEXT,
    "value" INTEGER NOT NULL,
    "unit" TEXT NOT NULL,
    "unitary_value" INTEGER NOT NULL,
    "total_amount" INTEGER NOT NULL,
    "discount" INTEGER,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "purchase_items_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "suppliers" (
    "id" SERIAL NOT NULL,
    "external_code" TEXT NOT NULL,
    "business_name" TEXT NOT NULL,
    "commercial_name" TEXT,
    "cpf_cnpj" TEXT,
    "address" TEXT,
    "uf" TEXT,
    "create_in" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "created_by" INTEGER,
    "update_in" TIMESTAMP(3),
    "last_changed_by" INTEGER,

    CONSTRAINT "suppliers_pkey" PRIMARY KEY ("id")
);
