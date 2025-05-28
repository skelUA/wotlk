ALTER TABLE warden_checks
    MODIFY result VARCHAR(40) NULL,
    ADD mpq_blocked TINYINT UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE warden_checks
  ADD UNIQUE INDEX uniq_str_on_type152 (
    (CASE WHEN type = 152 THEN str ELSE NULL END)
  );
