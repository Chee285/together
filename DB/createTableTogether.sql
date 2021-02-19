create table members(
    mem_id varchar2(20),
    mem_pwd varchar2(30) not null,
    mem_name varchar2(15) not null,
    mem_birthday date,
    mem_nickname varchar2(30) not  null,
    mem_phone_num varchar2(11) not null,
    mem_balance number(7),
    mem_profile_img varchar(100),
    mem_status_message varchar2(100),
    mem_status number(1),
    constraint members_pk primary key (mem_id)
);

create table category(
    cat_no number(2),
    cat_name varchar2(15),
    constraint category_pk primary key(cat_no)
);

create table together_info(
   info_no number(4),
    cat_no number(2),
    mem_id varchar2(20),
    tog_name varchar2(100) not null,
    info_confirm varchar2(2000) not null,
    info_confirm_cnt varchar2(30) not null,
    info_application_fee varchar2(30) not null,
    info_img varchar2(100) not null,
    info_intro varchar2(2000) not null,
    info_upload_date date default sysdate not null,
    info_status number(1) default 1,
    constraint together_info_pk primary key (info_no),
    constraint category_no_fk foreign key(cat_no) references category(cat_no),
    constraint member_id_fk foreign key (mem_id) references members(mem_id)
);

create table together(
    tog_no varchar2(8),
    info_no number(4),
    tog_version number(3),
    tog_sum number(8),
    tog_people number(4) default 1,
    tog_start_date date not null,
    tog_end_date date not null,
    tog_status number(1) default 1,
    constraint together_no_pk primary key (tog_no),
    constraint together_info_no_fk foreign key (info_no) references together_info(info_no)
);

create table sign_together(
    sign_no number(5),
    tog_no varchar2(8),
    mem_id varchar2(20),
    sign_total_achv number(3),
    sign_achv number(3),
    sign_status number(1),
    constraint together_sign_pk primary key (sign_no  ),
    constraint sign_together_fk foreign key (tog_no) references together(tog_no),
    constraint sign_member_fk foreign key (mem_id) references members(mem_id)
);

create table photo_shoot(
    pho_no number(4),
    mem_id varchar2(20),
    tog_no varchar2(8),
    pho_good varchar2(100) not null,
    pho_impression varchar2(100) not null,
    pho_like_cnt number(4) default 0,
    pho_status number(1) default 1,
    constraint photo_pk primary key (pho_no),
    constraint photo_member_fk foreign key (mem_id) references members(mem_id),
    constraint photo_together_fk foreign key(tog_no) references together (tog_no)
    
);

create table like_photo(
    mem_id varchar2(20),
    pho_no number(4),
    constraint like_member_fk foreign key (mem_id) references members(mem_id),
    constraint like_photo_fk foreign key (pho_no) references photo_shoot(pho_no)
);
