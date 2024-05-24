USE social_media_db;
INSERT INTO USER_PROFILE(id, profile_picture_uri, name, email, phone_number) 
VALUES(1, 'link 1', 'Pradipta Nag', 'pradipta.nag2@gmail.com', 9434250848);

INSERT INTO USER_PROFILE(id, profile_picture_uri, name, email, phone_number) 
VALUES(2, 'link 2', 'Arpita Nag', 'arpita.nag2@gmail.com', 9830596230);

INSERT INTO SKILLS(id, name)
VALUES(1, 'Java');
INSERT INTO SKILLS(id, name)
VALUES(2, 'C++');
INSERT INTO SKILLS(id, name)
VALUES(3, 'Python');

INSERT INTO USER_SKILLS(id, user_id, skill_id)
VALUES(1, 1, 1);
INSERT INTO USER_SKILLS(id, user_id, skill_id)
VALUES(2, 1, 2);
INSERT INTO USER_SKILLS(id, user_id, skill_id)
VALUES(3, 2, 2);
INSERT INTO USER_SKILLS(id, user_id, skill_id)
VALUES(4, 2, 3);

commit;
