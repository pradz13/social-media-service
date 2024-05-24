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
