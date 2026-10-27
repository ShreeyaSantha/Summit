CREATE TABLE public.users (
    id UUID PRIMARY KEY
        REFERENCES auth.users(id) ON DELETE CASCADE,

    name TEXT NOT NULL
        CHECK (length(trim(name)) > 0),

    date_of_birth DATE,

    created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);