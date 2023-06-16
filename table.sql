-- 회원테이블
create table member(
    member_no number primary key,
    member_name varchar2(30) not null,
    member_email varchar2(30) not null,
    member_password varchar2(60) not null,
    member_tel varchar2(11) not null,
    member_birth date not null,
    member_type varchar2(10) not null
);
create sequence member_seq;

-- 인증번호 테이블
create table cert(
    member_email varchar2(30) not null,
    secret varchar2(60) not null,
    limit date default sysdate,
    constraint cert_pk primary key(member_email,secret)
);
-- 영화 테이블
create table movie(
    movie_no number primary key not null,
    movie_title varchar2(30) not null,
    movie_director varchar2(30) not null,
    movie_genre varchar2(30) not null,
    movie_description varchar2(4000) not null,
    movie_duration varchar2(3) not null,
    movie_created date not null,
    movie_age number not null
);
create sequence movie_seq;

-- 상영관 테이블
create table theater(
    theater_no number primary key not null,
    theater_name varchar2(30) not null,
    location varchar2(20) not null,
    seat_count number not null
);
create sequence theater_seq;

-- 상영일정 테이블
create table schedule(
    schedule_no number primary key not null,
    movie_no references movie(movie_no) not null,
    theater_no references theater(theater_no) not null,
    start_time date not null,
    end_time date not null    
);
create sequence schedule_seq;

-- 좌석 테이블
create table seat(
    seat_id number primary key not null,
    schedule_no references schedule(schedule_no) not null,
    seat_number varchar2(5) not null,
    seat_status number not null
);

create sequence seat_seq;

-- 예매 테이블
create table reservation(
    reservation_no number primary key not null,
    schedule_no references schedule(schedule_no) not null,
    member_no references member(member_no) not null,
    movie_no references movie(movie_no) not null,
    seat_id references seat(seat_id) not null,
    reservation_count number not null,
    reservation_date date not null
);

create sequence reservation_seq;

-- 리뷰 테이블
create table review(
    review_no number primary key not null,
    movie_no references movie(movie_no) not null,
    member_no references member(member_no) not null,
    review_content varchar2(1000) not null,
    review_like number default 0,
    review_score number,
    review_date date default sysdate not null
);

create sequence review_seq;

-- 리뷰 좋아요 테이블
create table review_like(
    member_no references member(member_no) not null,
    review_no references review(review_no) not null
);

-- 첨부파일 테이블
create table attachment(
    attachment_no number primary key not null,
    attachment_name varchar2(256) not null,
    attachment_type varchar2(60) not null,
    attachment_size number not null
);
create sequence attachment_seq;

-- 영화포스터 첨부파일 테이블
create table movie_poster_attachment(
    movie_poster_no number primary key not null,
    attchment_no references attachment(attachment_no) not null,
    movie_no references movie(movie_no) not null
);
create sequence movie_poster_attachment_seq;
