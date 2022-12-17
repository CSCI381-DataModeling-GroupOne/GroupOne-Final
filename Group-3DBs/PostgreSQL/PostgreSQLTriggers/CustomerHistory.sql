
create or replace function deny_change_CustomerHistory() returns trigger as $$
    begin 
        raise exception 'Cannot update or delete table %s.', tg_table_name;
        return null;
    end; 
$$ language plpgsql;

create trigger uTdu_CustomerHistory 
  before update or delete on "Audit"."CustomerHistory" 
  for each statement 
  execute function deny_change_CustomerHistory(); 
