delimiter $$
create trigger before_projectmembers_insert
	after insert on PROJECT_MEMBERS
	FOR EACH ROW
BEGIN
	update PROJECT_MEMBERS set member6 = NEW.manager where project_id=NEW.project_id ;
END$$
delimiter ;
