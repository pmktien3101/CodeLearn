import React, { useEffect, useState } from "react";
import Card from "@mui/material/Card";
import { Link } from "react-router-dom";
import SoftBox from "components/SoftBox";
import SoftTypography from "components/SoftTypography";
import SoftAvatar from "components/SoftAvatar";
import SoftBadge from "components/SoftBadge";
import DashboardLayout from "examples/LayoutContainers/DashboardLayout";
import DashboardNavbar from "examples/Navbars/DashboardNavbar";
import Table from "examples/Tables/Table";
import axiosClient from "api/axiosClient";
import PropTypes from 'prop-types';


const columns = [
  { name: "author", align: "left" },
  { name: "nameCourse", align: "left" },
  { name: "startDate", align: "center" },
  { name: "endDate", align: "center" },
  { name: "action", align: "center" },
];

function Author({ image, author, email }) {
  return (
    <SoftBox display="flex" alignItems="center" px={1} py={0.5}>
      <SoftBox mr={2}>
        <SoftAvatar src={image} alt={author} size="sm" variant="rounded" />
      </SoftBox>
      <SoftBox display="flex" flexDirection="column">
        <SoftTypography variant="button" fontWeight="medium">
          {author}
        </SoftTypography>
        <SoftTypography variant="caption" color="secondary">
          {email}
        </SoftTypography>
      </SoftBox>
    </SoftBox>
  );
}

Author.propTypes = {
  image: PropTypes.string.isRequired,
  author: PropTypes.string.isRequired,
  email: PropTypes.string.isRequired,
};



function Teaching() {
  const [courses, setCourses] = useState([]);

  useEffect(() => {
    const fetchCourses = async () => {
      try {
        const data = await axiosClient.get("/courses");
        setCourses(data);
      } catch (error) {
        console.error("Failed to fetch courses data:", error);
      }
    };

    fetchCourses();
  }, []);

  const rows = courses.map((course) => ({
    author: <Author image={ course["image"]} author={ course["author"]} email={ course["email"]} />,
    nameCourse: (<SoftTypography variant="caption" color="secondary" fontWeight="medium">
      {course["nameCourse"]}
    </SoftTypography>),
    startDate: (
      <SoftTypography variant="caption" color="secondary" fontWeight="medium">
        {course["start-date"]}
      </SoftTypography>
    ),
    endDate: (
      <SoftTypography variant="caption" color="secondary" fontWeight="medium">
        {course["end-date"]}
      </SoftTypography>
    ),
    action: (
      <Link to={`/teaching/course-infor/${course.id}`}>
        <SoftBadge variant="gradient" badgeContent="View" color="dark" size="xs" container />
      </Link>
    ),
  }));

  return (
    <DashboardLayout>
      <DashboardNavbar />
      <SoftBox py={3}>
        <SoftBox mb={3}>
          <Card>
            <SoftBox display="flex" justifyContent="space-between" alignItems="center" p={3}>
              <SoftTypography variant="h6">My Teaching Courses</SoftTypography>
            </SoftBox>
            <SoftBox
              sx={{
                "& .MuiTableRow-root:not(:last-child)": {
                  "& td": {
                    borderBottom: ({ borders: { borderWidth, borderColor } }) =>
                      `${borderWidth[1]} solid ${borderColor}`,
                  },
                },
              }}
            >
              <Table columns={columns} rows={rows} />
            </SoftBox>
          </Card>
        </SoftBox>
      </SoftBox>
    </DashboardLayout>
  );
}

export default Teaching;
