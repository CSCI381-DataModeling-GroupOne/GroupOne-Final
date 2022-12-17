
create or replace function deny_change_CountryHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_CountryHistory 
  before update or delete on "Audit"."CountryHistory" 
  for each statement 
  execute function deny_change_CountryHistory(); 
