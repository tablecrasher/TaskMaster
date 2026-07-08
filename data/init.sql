/* This file is the schema initialization for the tasks table. It runs 
automatically once, when the Postgres container first starts with an empty 
directory. We have 4 timestamp columns instead of a status column so that 
we'll know if the task completed even when the machine executing our task 
crashes. */

CREATE TABLE tasks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    command TEXT NOT NULL, 
    scheduled_at TIMESTAMPTZ NOT NULL,
    picked_at TIMESTAMPTZ,
    started_at TIMESTAMPTZ,
    completed_at TIMESTAMPTZ,
    failed_at TIMESTAMPTZ
);
