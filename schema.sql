create table "Cards"(
        "id" integer NOT NULL,
        primary key ("id")
);

create table "stations"(
        "id "integer NOT NULL,
        "name" text NOT NULL,
        "line" text NOT NULL,
        primary key ("id")
);

create table "Swipes"(
        "id" integer,
    "card_id" integer,
    "station_id" integer,
    "type" text NOT NULL CHECK ("type" IN ("enter", "exit", "deposit")),
    "datetime" numeric NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "amount" numeric NOT NULL CHECK("amount" != 0),
    FOREIGN KEY ("card_id") references "Cards"("id"),
    FOREIGN KEY ("station_id") references "station"("id")
);