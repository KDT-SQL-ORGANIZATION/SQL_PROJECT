use medical;

use team5;
select * from marry;

select * from child;



alter table child
modify column 연도 int primary key;

select * from gardon;
alter table gardon
modify column 연도 int primary key;

alter table gardon
add foreign key(연도) references child(연도); 

alter table birth
add foreign key(연도) references child(연도); 

alter table marry 
add foreign key(연도) references child(연도);

alter table birth
modify column 연도 int primary key;

select duplicate(*)
from birth;