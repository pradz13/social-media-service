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
VALUES(3, 2, 1);
INSERT INTO USER_SKILLS(id, user_id, skill_id)
VALUES(4, 2, 2);
INSERT INTO USER_SKILLS(id, user_id, skill_id)
VALUES(5, 2, 3);

INSERT INTO POST(id, user_id, post_content)
VALUES(1, 1, 'Post 1');
INSERT INTO POST(id, user_id, post_content)
VALUES(2, 1, 'Post 2');
INSERT INTO POST(id, user_id, post_content)
VALUES(3, 1, 'Post 3');
INSERT INTO POST(id, user_id, post_content)
VALUES(4, 2, 'Post 4');

INSERT INTO COMMENT(id, user_id, post_id, comment_content)
VALUES(1, 1, 1, 'Comment 1');
INSERT INTO COMMENT(id, user_id, post_id, comment_content)
VALUES(2, 1, 1, 'Comment 2');
INSERT INTO COMMENT(id, user_id, post_id, comment_content)
VALUES(3, 1, 1, 'Comment 3');
INSERT INTO COMMENT(id, user_id, post_id, comment_content)
VALUES(4, 2, 1, 'Comment 4');

INSERT INTO LIKES(id, entity_id, entity_type, user_id) values
(1, 1, 'POST', 1);
INSERT INTO LIKES(id, entity_id, entity_type, user_id) values
(2, 1, 'COMMENT', 2);

INSERT INTO CONNECTION(id, user_id_1, user_id_2, is_accepted)
VALUES(1, 1, 2, 0);

INSERT INTO RECOMMENDATION(id, user_id, recipient_id, recommendation_text)
VALUES(1, 1, 2, 'RECOMMENDATION 1');

commit;
