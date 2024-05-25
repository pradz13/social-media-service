USE social_media_db;
CREATE TABLE USER_PROFILE(
    id int NOT NULL,
    profile_picture_uri varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    phone_number BIGINT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE SKILLS(
    id int NOT NULL,
    name varchar(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE USER_SKILLS(
    id int NOT NULL,
    user_id int NOT NULL,
    skill_id int NOT null,
    PRIMARY KEY(id),
    CONSTRAINT FK_USER FOREIGN KEY (user_id) REFERENCES USER_PROFILE(id),
    CONSTRAINT FK_SKILLS FOREIGN KEY (skill_id) REFERENCES SKILLS(id)
);

CREATE TABLE POST(
    id int NOT NULL,
    user_id int NOT NULL,
    post_content LONGTEXT NOT null,
    PRIMARY KEY(id),
    CONSTRAINT FK_USER_WITH_POST FOREIGN KEY (user_id) REFERENCES USER_PROFILE(id)
);

CREATE TABLE COMMENT(
    id int NOT NULL,
    user_id int NOT NULL,
    post_id int NOT NULL,
    comment_content LONGTEXT NOT null,
    PRIMARY KEY(id),
    CONSTRAINT FK_USER_WITH_COMMENT FOREIGN KEY (user_id) REFERENCES USER_PROFILE(id),
    CONSTRAINT FK_POST_WITH_COMMENT FOREIGN KEY (post_id) REFERENCES POST(id)
);

CREATE TABLE LIKES(
    id int NOT NULL,
    entity_id int NOT NULL,
    entity_type varchar(50) NOT NULL,
    user_id int NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT FK_USER_WITH_LIKES FOREIGN KEY (user_id) REFERENCES USER_PROFILE(id),
    CONSTRAINT FK_POST_WITH_LIKES FOREIGN KEY (entity_id) REFERENCES POST(id),
    CONSTRAINT FK_COMMENT_WITH_LIKES FOREIGN KEY (entity_id) REFERENCES COMMENT(id)
);

CREATE TABLE CONNECTION(
	id int NOT NULL,
    user_id_1 int NOT NULL,
    user_id_2 int NOT NULL,
    is_accepted bool NOT NULL, -- 0 is considered true else false
    PRIMARY KEY(id),
    CONSTRAINT FK_USER_WITH_CONNECTION_1 FOREIGN KEY (user_id_1) REFERENCES USER_PROFILE(id),
    CONSTRAINT FK_USER_WITH_CONNECTION_2 FOREIGN KEY (user_id_2) REFERENCES USER_PROFILE(id)
);
