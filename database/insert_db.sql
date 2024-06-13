INSERT INTO user (user_uuid, address, avatar, birthday, created_date, created_user, email, first_name, inactive, last_modified_date, last_modified_user, last_name, middle_name, numberphone, readonly) VALUES
('da6a0d75-14a0-4b50-b0db-8312c6b3d82b', '123 Main St', 'avatar1.jpg', '1990-01-01 00:00:00.000000', '2023-01-01 00:00:00.000000', 'creator1', 'user1@example.com', 'John', 0, '2023-01-01 12:00:00.000000', 'modifier1', 'Doe', 'Michael', '1234567890', 0),
('b79b7e4c-8d7e-4b1d-9e7e-8c7d7c7e7e7e', '456 Elm St', 'avatar2.jpg', '1991-02-02 00:00:00.000000', '2023-01-02 00:00:00.000000', 'creator2', 'user2@example.com', 'Jane', 0, '2023-01-02 12:00:00.000000', 'modifier2', 'Smith', 'Anne', '2345678901', 0),
('d89a8e5b-9d8d-4d3e-8c8e-9d8c9e8e8e8e', '789 Oak St', 'avatar3.jpg', '1992-03-03 00:00:00.000000', '2023-01-03 00:00:00.000000', 'creator3', 'user3@example.com', 'Michael', 1, '2023-01-03 12:00:00.000000', 'modifier3', 'Johnson', 'David', '3456789012', 1),
('e9b9a8e6-9e9e-4d4e-9c9e-9d9e9e9e9e9e', '101 Pine St', 'avatar4.jpg', '1993-04-04 00:00:00.000000', '2023-01-04 00:00:00.000000', 'creator4', 'user4@example.com', 'Emily', 0, '2023-01-04 12:00:00.000000', 'modifier4', 'Brown', 'Elizabeth', '4567890123', 0),
('f9a9b8e7-8e8e-4d5e-8d8e-9e8e9d8e8e8e', '202 Maple St', 'avatar5.jpg', '1994-05-05 00:00:00.000000', '2023-01-05 00:00:00.000000', 'creator5', 'user5@example.com', 'William', 1, '2023-01-05 12:00:00.000000', 'modifier5', 'Davis', 'Alexander', '5678901234', 1);

INSERT INTO account (account_uuid, created_date, created_user, inactive, last_modified_date, last_modified_user, password, readonly, username, user_uuid) VALUES
('e9c35d5d-33b5-4d18-8e58-015d5a5f7f9b', '2023-01-01 00:00:00.000000', 'creator1', 0, '2023-01-01 12:00:00.000000', 'modifier1', 'password1', 0, 'username1', 'da6a0d75-14a0-4b50-b0db-8312c6b3d82b'),
('d55c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e', '2023-01-02 00:00:00.000000', 'creator2', 0, '2023-01-02 12:00:00.000000', 'modifier2', 'password2', 0, 'username2', 'b79b7e4c-8d7e-4b1d-9e7e-8c7d7c7e7e7e'),
('c77a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f', '2023-01-03 00:00:00.000000', 'creator3', 1, '2023-01-03 12:00:00.000000', 'modifier3', 'password3', 1, 'username3', 'd89a8e5b-9d8d-4d3e-8c8e-9d8c9e8e8e8e'),
('b88d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f', '2023-01-04 00:00:00.000000', 'creator4', 0, '2023-01-04 12:00:00.000000', 'modifier4', 'password4', 0, 'username4', 'e9b9a8e6-9e9e-4d4e-9c9e-9d9e9e9e9e9e'),
('a99e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g', '2023-01-05 00:00:00.000000', 'creator5', 1, '2023-01-05 12:00:00.000000', 'modifier5', 'password5', 1, 'username5', 'f9a9b8e7-8e8e-4d5e-8d8e-9e8e9d8e8e8e');

INSERT INTO topic (topic_uuid, created_date, created_user, description, inactive, last_modified_date, last_modified_user, name, readonly, type, account_uuid) VALUES
('99c35d5d-33b5-4d18-8e58-015d5a5f7f9b', '2023-01-01 00:00:00.000000', 'creator1', 'Topic 1 Description', 0, '2023-01-01 12:00:00.000000', 'modifier1', 'Topic 1', 0, 'Type 1', 'a99e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g'),
('955c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e', '2023-01-02 00:00:00.000000', 'creator2', 'Topic 2 Description', 0, '2023-01-02 12:00:00.000000', 'modifier2', 'Topic 2', 0, 'Type 2', 'b88d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f'),
('977a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f', '2023-01-03 00:00:00.000000', 'creator3', 'Topic 3 Description', 1, '2023-01-03 12:00:00.000000', 'modifier3', 'Topic 3', 1, 'Type 3', 'c77a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f'),
('988d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f', '2023-01-04 00:00:00.000000', 'creator4', 'Topic 4 Description', 0, '2023-01-04 12:00:00.000000', 'modifier4', 'Topic 4', 0, 'Type 4', 'd55c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e'),
('999e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g', '2023-01-05 00:00:00.000000', 'creator5', 'Topic 5 Description', 1, '2023-01-05 12:00:00.000000', 'modifier5', 'Topic 5', 1, 'Type 5', 'e9c35d5d-33b5-4d18-8e58-015d5a5f7f9b');

INSERT INTO course (course_uuid, created_date, created_user, description, end_date, inactive, last_modified_date, last_modified_user, name, readonly, start_date, account_uuid, topic_uuid) VALUES
('e9c35d5d-33b5-4d18-8e58-015d5a5f7f9b', '2023-01-01 00:00:00.000000', 'creator1', 'Course 1 Description', '2023-02-01 00:00:00.000000', 0, '2023-01-31 12:00:00.000000', 'modifier1', 'Course 1', 0, '2023-01-01 00:00:00.000000', 'a99e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g', '99c35d5d-33b5-4d18-8e58-015d5a5f7f9b'),
('d55c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e', '2023-02-01 00:00:00.000000', 'creator2', 'Course 2 Description', '2023-03-01 00:00:00.000000', 0, '2023-02-28 12:00:00.000000', 'modifier2', 'Course 2', 0, '2023-02-01 00:00:00.000000', 'b88d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f', '955c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e'),
('c77a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f', '2023-03-01 00:00:00.000000', 'creator3', 'Course 3 Description', '2023-04-01 00:00:00.000000', 1, '2023-03-31 12:00:00.000000', 'modifier3', 'Course 3', 1, '2023-03-01 00:00:00.000000', 'c77a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f', '977a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f'),
('b88d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f', '2023-04-01 00:00:00.000000', 'creator4', 'Course 4 Description', '2023-05-01 00:00:00.000000', 0, '2023-04-30 12:00:00.000000', 'modifier4', 'Course 4', 0, '2023-04-01 00:00:00.000000', 'd55c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e', '988d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f'),
('a99e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g', '2023-05-01 00:00:00.000000', 'creator5', 'Course 5 Description', '2023-06-01 00:00:00.000000', 1, '2023-05-31 12:00:00.000000', 'modifier5', 'Course 5', 1, '2023-05-01 00:00:00.000000', 'e9c35d5d-33b5-4d18-8e58-015d5a5f7f9b', '999e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g');

INSERT INTO category (category_uuid, created_date, created_user, inactive, last_modified_date, last_modified_user, name, readonly, course_uuid) VALUES
('c0a7e11b-2f3c-4a73-a3e2-01b5bdf8cf6d', '2023-01-01 00:00:00.000000', 'creator1', 0, '2023-01-01 12:00:00.000000', 'modifier1', 'Category 1', 0, 'e9c35d5d-33b5-4d18-8e58-015d5a5f7f9b'),
('e1d8f22a-7b2d-4e10-b7f4-02a8e597045a', '2023-01-02 00:00:00.000000', 'creator2', 0, '2023-01-02 12:00:00.000000', 'modifier2', 'Category 2', 0, 'd55c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e'),
('b2e6d33c-4f3a-4bc2-93c7-03a7b1637480', '2023-01-03 00:00:00.000000', 'creator3', 1, '2023-01-03 12:00:00.000000', 'modifier3', 'Category 3', 1, 'c77a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f'),
('a3c4b55d-5e4f-4d91-8b6e-04d6f29b2c6e', '2023-01-04 00:00:00.000000', 'creator4', 0, '2023-01-04 12:00:00.000000', 'modifier4', 'Category 4', 0, 'b88d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f'),
('f4e5a66f-6d5c-4a5b-9e3f-05e4c3772b0f', '2023-01-05 00:00:00.000000', 'creator5', 1, '2023-01-05 12:00:00.000000', 'modifier5', 'Category 5', 1, 'a99e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g');

INSERT INTO role (role_uuid, created_date, created_user, description, inactive, last_modified_date, last_modified_user, name, readonly) VALUES
('r0a7e11b-2f3c-4a73-a3e2-01b5bdf8cf6d', '2023-01-01 00:00:00.000000', 'creator1', 'Role 1 description', 0, '2023-01-01 12:00:00.000000', 'modifier1', 'Role 1', 0),
('r1d8f22a-7b2d-4e10-b7f4-02a8e597045a', '2023-01-02 00:00:00.000000', 'creator2', 'Role 2 description', 0, '2023-01-02 12:00:00.000000', 'modifier2', 'Role 2', 0),
('r2e6d33c-4f3a-4bc2-93c7-03a7b1637480', '2023-01-03 00:00:00.000000', 'creator3', 'Role 3 description', 1, '2023-01-03 12:00:00.000000', 'modifier3', 'Role 3', 1),
('r3c4b55d-5e4f-4d91-8b6e-04d6f29b2c6e', '2023-01-04 00:00:00.000000', 'creator4', 'Role 4 description', 0, '2023-01-04 12:00:00.000000', 'modifier4', 'Role 4', 0),
('r4e5a66f-6d5c-4a5b-9e3f-05e4c3772b0f', '2023-01-05 00:00:00.000000', 'creator5', 'Role 5 description', 1, '2023-01-05 12:00:00.000000', 'modifier5', 'Role 5', 1);

INSERT INTO question (question_uuid, created_date, created_user, deadline, description, inactive, last_modified_date, last_modified_user, name, readonly, topic_uuid) VALUES
('q0a7e11b-2f3c-4a73-a3e2-01b5bdf8cf6d', '2023-01-01 00:00:00.000000', 'creator1', '2023-01-10 00:00:00.000000', 'Question 1 description', 0, '2023-01-01 12:00:00.000000', 'modifier1', 'Question 1', 0, '99c35d5d-33b5-4d18-8e58-015d5a5f7f9b'),
('q1d8f22a-7b2d-4e10-b7f4-02a8e597045a', '2023-01-02 00:00:00.000000', 'creator2', '2023-01-11 00:00:00.000000', 'Question 2 description', 0, '2023-01-02 12:00:00.000000', 'modifier2', 'Question 2', 0, '955c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e'),
('q2e6d33c-4f3a-4bc2-93c7-03a7b1637480', '2023-01-03 00:00:00.000000', 'creator3', '2023-01-12 00:00:00.000000', 'Question 3 description', 1, '2023-01-03 12:00:00.000000', 'modifier3', 'Question 3', 1, '977a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f'),
('q3c4b55d-5e4f-4d91-8b6e-04d6f29b2c6e', '2023-01-04 00:00:00.000000', 'creator4', '2023-01-13 00:00:00.000000', 'Question 4 description', 0, '2023-01-04 12:00:00.000000', 'modifier4', 'Question 4', 0, '988d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f'),
('q4e5a66f-6d5c-4a5b-9e3f-05e4c3772b0f', '2023-01-05 00:00:00.000000', 'creator5', '2023-01-14 00:00:00.000000', 'Question 5 description', 1, '2023-01-05 12:00:00.000000', 'modifier5', 'Question 5', 1, '999e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g');

INSERT INTO submission (submission_uuid, created_date, created_user, file, inactive, last_modified_date, last_modified_user, mark, readonly, submission_time, account_uuid, course_uuid, question_uuid) VALUES
('s0a7e11b-2f3c-4a73-a3e2-01b5bdf8cf6d', '2023-01-01 00:00:00.000000', 'creator1', 'file1.pdf', 0, '2023-01-01 12:00:00.000000', 'modifier1', 9.5, 0, '2023-01-01 08:00:00.000000', 'a99e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g', 'b88d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f', 'q0a7e11b-2f3c-4a73-a3e2-01b5bdf8cf6d'),
('s1d8f22a-7b2d-4e10-b7f4-02a8e597045a', '2023-01-02 00:00:00.000000', 'creator2', 'file2.pdf', 0, '2023-01-02 12:00:00.000000', 'modifier2', 8.7, 0, '2023-01-02 09:00:00.000000', 'b88d4c4c-89d7-4d6e-8e8e-6f8e6f8f8f8f', 'c77a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f', 'q1d8f22a-7b2d-4e10-b7f4-02a8e597045a'),
('s2e6d33c-4f3a-4bc2-93c7-03a7b1637480', '2023-01-03 00:00:00.000000', 'creator3', 'file3.pdf', 1, '2023-01-03 12:00:00.000000', 'modifier3', 6.0, 1, '2023-01-03 10:00:00.000000', 'c77a3b3b-78c6-4c5d-8d9d-5f7e5f7f7f7f', 'd55c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e', 'q2e6d33c-4f3a-4bc2-93c7-03a7b1637480'),
('s3c4b55d-5e4f-4d91-8b6e-04d6f29b2c6e', '2023-01-04 00:00:00.000000', 'creator4', 'file4.pdf', 0, '2023-01-04 12:00:00.000000', 'modifier4', 7.5, 0, '2023-01-04 11:00:00.000000', 'd55c1a1a-67b6-4a4d-8d8d-4e6d5e6e5e6e', 'e9c35d5d-33b5-4d18-8e58-015d5a5f7f9b', 'q3c4b55d-5e4f-4d91-8b6e-04d6f29b2c6e'),
('s4e5a66f-6d5c-4a5b-9e3f-05e4c3772b0f', '2023-01-05 00:00:00.000000', 'creator5', 'file5.pdf', 1, '2023-01-05 12:00:00.000000', 'modifier5', 9.0, 1, '2023-01-05 12:00:00.000000', 'e9c35d5d-33b5-4d18-8e58-015d5a5f7f9b', 'a99e5d5d-9a8d-4d7e-8f8f-7g8f7g8g8g8g', 'q4e5a66f-6d5c-4a5b-9e3f-05e4c3772b0f');

