CREATE TABLE account (
  account_uuid       binary(36) NOT NULL, 
  user_uuid          binary(36) NOT NULL, 
  username           varchar(40) NOT NULL, 
  password           varchar(100), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (account_uuid));
CREATE TABLE assessment (
  assessment_uuid    binary(36) NOT NULL, 
  submission_uuid    binary(36) NOT NULL, 
  assessment_number  int(10), 
  mark               decimal(5, 2), 
  assessment_date    datetime NULL, 
  feedback           varchar(40), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (assessment_uuid));
CREATE TABLE category (
  category_uuid      binary(36) NOT NULL, 
  course_uuid        binary(36) NOT NULL, 
  name               varchar(40) NOT NULL, 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (category_uuid));
CREATE TABLE course (
  course_uuid        binary(36) NOT NULL, 
  account_uuid       binary(36) NOT NULL, 
  topic_uuid         binary(36) NOT NULL, 
  name               varchar(40), 
  description        varchar(100), 
  start_date         datetime NULL, 
  end_date           datetime NULL, 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (course_uuid));
CREATE TABLE dd_assessment_status (
  code               varchar(5) NOT NULL, 
  assessment_uuid    binary(36) NOT NULL, 
  name               varchar(50) NOT NULL, 
  description        varchar(255), 
  priority           tinyint(3), 
  editable           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  PRIMARY KEY (code));
CREATE TABLE dd_course_status (
  code               varchar(5) NOT NULL, 
  course_uuid        binary(36) NOT NULL, 
  name               varchar(50) NOT NULL, 
  description        varchar(255), 
  priority           tinyint(3), 
  editable           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  PRIMARY KEY (code));
CREATE TABLE dd_enrollment_status (
  code               varchar(5) NOT NULL, 
  enrollment_uuid    binary(36) NOT NULL, 
  name               varchar(50) NOT NULL, 
  description        varchar(255), 
  priority           tinyint(3), 
  editable           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  PRIMARY KEY (code));
CREATE TABLE enrollment (
  enrollment_uuid    binary(36) NOT NULL, 
  account_uuid       binary(36) NOT NULL, 
  course_uuid        binary(36) NOT NULL, 
  enroll_date        datetime NULL, 
  readonly           tinyint(1), 
  average_score      decimal(5, 2), 
  inactive           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (enrollment_uuid));
CREATE TABLE question (
  question_uuid      binary(36) NOT NULL, 
  topic_uuid         binary(36) NOT NULL, 
  name               varchar(100), 
  description        varchar(255), 
  deadline           datetime NULL, 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (question_uuid));
CREATE TABLE role (
  role_uuid          binary(36) NOT NULL, 
  name               varchar(40) NOT NULL, 
  description        varchar(100), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (role_uuid));
CREATE TABLE submission (
  submission_uuid    binary(36) NOT NULL, 
  account_uuid       binary(36) NOT NULL, 
  question_uuid      binary(36) NOT NULL, 
  course_uuid        binary(36) NOT NULL, 
  submission_time    datetime NULL, 
  `file`             varchar(100), 
  mark               decimal(5, 2), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (submission_uuid));
CREATE TABLE topic (
  topic_uuid         binary(36) NOT NULL, 
  account_uuid       binary(36) NOT NULL, 
  name               varchar(100) NOT NULL, 
  type               varchar(20), 
  description        varchar(100), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (topic_uuid));
CREATE TABLE `user` (
  user_uuid          binary(36) NOT NULL, 
  first_name         varchar(20), 
  middle_name        varchar(20), 
  last_name          varchar(20), 
  avatar             varchar(100), 
  email              varchar(40), 
  birthday           datetime NULL, 
  address            varchar(40), 
  numberphone        varchar(10), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (user_uuid));
CREATE TABLE usergroup (
  usergroup_uuid     binary(36) NOT NULL, 
  name               varchar(40) NOT NULL, 
  description        varchar(100), 
  inactive           tinyint(1), 
  readonly           tinyint(1), 
  created_date       datetime NULL, 
  created_user       varchar(40), 
  last_modified_date datetime NULL, 
  last_modified_user varchar(40), 
  PRIMARY KEY (usergroup_uuid));
CREATE TABLE usergroup_role (
  usergroup_role_uuid binary(36) NOT NULL, 
  usergroup_uuid      binary(36) NOT NULL, 
  role_uuid           binary(36) NOT NULL, 
  PRIMARY KEY (usergroup_role_uuid));
CREATE TABLE usergroup_user (
  usergroup_user_uuid binary(36) NOT NULL, 
  usergroup_uuid      binary(36) NOT NULL, 
  user_uuid           binary(36) NOT NULL, 
  PRIMARY KEY (usergroup_user_uuid));
ALTER TABLE submission ADD CONSTRAINT FKsubmission206812 FOREIGN KEY (account_uuid) REFERENCES account (account_uuid);
ALTER TABLE submission ADD CONSTRAINT FKsubmission315350 FOREIGN KEY (question_uuid) REFERENCES question (question_uuid);
ALTER TABLE enrollment ADD CONSTRAINT FKenrollment705644 FOREIGN KEY (account_uuid) REFERENCES account (account_uuid);
ALTER TABLE enrollment ADD CONSTRAINT FKenrollment467103 FOREIGN KEY (course_uuid) REFERENCES course (course_uuid);
ALTER TABLE question ADD CONSTRAINT FKquestion199182 FOREIGN KEY (topic_uuid) REFERENCES topic (topic_uuid);
ALTER TABLE topic ADD CONSTRAINT FKtopic162258 FOREIGN KEY (account_uuid) REFERENCES account (account_uuid);
ALTER TABLE submission ADD CONSTRAINT FKsubmission592030 FOREIGN KEY (course_uuid) REFERENCES course (course_uuid);
ALTER TABLE course ADD CONSTRAINT FKcourse957178 FOREIGN KEY (account_uuid) REFERENCES account (account_uuid);
ALTER TABLE account ADD CONSTRAINT FKaccount582936 FOREIGN KEY (user_uuid) REFERENCES `user` (user_uuid);
ALTER TABLE usergroup_user ADD CONSTRAINT FKusergroup_573651 FOREIGN KEY (usergroup_uuid) REFERENCES usergroup (usergroup_uuid);
ALTER TABLE usergroup_user ADD CONSTRAINT FKusergroup_306197 FOREIGN KEY (user_uuid) REFERENCES `user` (user_uuid);
ALTER TABLE usergroup_role ADD CONSTRAINT FKusergroup_480638 FOREIGN KEY (usergroup_uuid) REFERENCES usergroup (usergroup_uuid);
ALTER TABLE usergroup_role ADD CONSTRAINT FKusergroup_123278 FOREIGN KEY (role_uuid) REFERENCES role (role_uuid);
ALTER TABLE course ADD CONSTRAINT FKcourse497350 FOREIGN KEY (topic_uuid) REFERENCES topic (topic_uuid);
ALTER TABLE assessment ADD CONSTRAINT FKassessment66566 FOREIGN KEY (submission_uuid) REFERENCES submission (submission_uuid);
ALTER TABLE dd_assessment_status ADD CONSTRAINT FKdd_assessm702493 FOREIGN KEY (assessment_uuid) REFERENCES assessment (assessment_uuid);
ALTER TABLE dd_enrollment_status ADD CONSTRAINT FKdd_enrollm753459 FOREIGN KEY (enrollment_uuid) REFERENCES enrollment (enrollment_uuid);
ALTER TABLE dd_course_status ADD CONSTRAINT FKdd_course_411268 FOREIGN KEY (course_uuid) REFERENCES course (course_uuid);
ALTER TABLE category ADD CONSTRAINT FKcategory45671 FOREIGN KEY (course_uuid) REFERENCES course (course_uuid);
