create table if not exists dop_json
(
	data json
);

select * from dop_json;

insert into dop_json
select * from json_object('{animal_id, animal_name, kind}', '{1, "Арчи", "Собака"}');