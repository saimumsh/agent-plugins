# Naming conventions (default; the Technical Standards win if they differ)
- Tables: plural snake_case (`order_items`); columns: snake_case (`created_at`)
- PK: `id`; FK: `<singular_table>_id` (`user_id`)
- Timestamps: `created_at`, `updated_at`, `deleted_at` (soft delete), all with time zone
- Booleans: `is_`/`has_` prefix; money: `<name>_minor` (integer) + `currency` (ISO 4217)
- Constraints: `pk_<table>`, `fk_<table>_<column>`, `uq_<table>_<columns>`, `ck_<table>_<rule>`
- Indexes: `ix_<table>_<columns>`; partial: `ix_<table>_<columns>_where_<cond>`
- No reserved words, no abbreviations except `id`, consistent singular/plural
