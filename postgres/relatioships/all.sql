
drop table hostel;
create  table  hostel(
    id bigserial  primary key ,
    student_id bigint references  students(id) ,
    name text,
    room integer
);

create table subject(
    id bigserial  primary key ,
    name text
)

create table