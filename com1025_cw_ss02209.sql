

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Admin', 'admin@admin.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-08-14 05:09:19');



CREATE TABLE `studentclass` (
  `classid` int(11) NOT NULL,
  `classname` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'John Nell', '2020-07-08 12:49:09', '2020-08-08 15:16:59'),
(2, 'Max Bell', '2020-08-08 14:30:23', '2020-08-08 15:15:09'),
(3, 'Soren Kierkegaard', '2020-08-08 14:35:08', NULL),
(4, 'Tom Wayne', '2020-07-08 14:35:21', NULL),
(5, 'Bob Sendon', '2020-08-08 14:35:36', NULL),
(9, 'Frank Rover', '2020-07-08 15:22:03', NULL);


CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2020-08-08 20:04:55', '2020-08-15 05:54:41'),
(3, 'physics', 6, 4, 1111, 15, '2020-08-08 20:17:31', '2020-08-15 06:13:17');


CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2020-08-04 18:35:25', '2020-08-06 16:00:42'),
(5, 'Technology', 1, '2020-08-04 18:35:39', '2020-08-08 17:13:03'),
(6, 'Science', 1, '2020-08-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 0, '2020-08-04 18:36:16', '0000-00-00 00:00:00');



CREATE TABLE `tbldepartment` (
  `deptid` int(11) NOT NULL,
  `deptname` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2020-08-15 06:09:47', '2020-08-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2020-08-15 06:12:27', '2020-08-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2020-08-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2020-08-15 06:23:23', '2020-08-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2020-08-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2020-08-15 18:02:55', NULL, 0, NULL);



CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'John Nell', 'j.nell@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2020-08-11 15:37:05', '2020-08-15 18:26:21'),
(4, 'SID005', 'Soren Kierkegaard', 'skierk@gmail.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 0, '2020-08-11 15:41:27', '2020-08-15 17:43:03'),
(8, 'SID009', 'Tom Wayne', 'twayne@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2020-08-11 15:58:28', '2020-08-15 13:42:44'),
(9, 'SID010', 'Bob Sendon', 'bsendon@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2020-08-15 13:40:30', NULL),
(10, 'SID011', 'Frank Rover', 'frover@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2020-08-15 18:00:59', NULL);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `studentclass`
  ADD PRIMARY KEY (`classid`);

ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`deptid`);

ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);




ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `studentclass`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;


ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;


ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;


ALTER TABLE `tbldepartment`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

