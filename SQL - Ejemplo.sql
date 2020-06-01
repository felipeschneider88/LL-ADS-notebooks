--Join usando el where
select c.*, u.DisplayName
from dbo.Comments c, dbo.Users u
where c.UserId = u.Id and u.id = 3;



--Inner join
select c.*, u.DisplayName
from dbo.Comments c inner join  dbo.Users u on (c.UserId = u.Id)
 where u.id = 3;


 --bullshit query
select c.*
from dbo.Comments c 
where c.userId in (
        select u.Id 
        from dbo.Users u
        where u.Id = 3
        )

--Usuarrios que no hicieron ningun comentario?
select U.*
from dbo.Users u
where not exists (select UserId from dbo.Comments c where c.UserId = u.AccountId)


--Usuarrios que no hicieron ningun post?
select u.*
from dbo.Users u 
where u.AccountId not in (select distinct p.OwnerUserId from dbo.Posts p )

select count(Id) from dbo.Users
select count( distinct(UserId)) from dbo.Comments

select *
from dbo.Comments 
where UserId = 8

