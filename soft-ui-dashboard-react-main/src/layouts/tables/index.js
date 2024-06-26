import React, { useEffect, useState } from "react";
import Card from "@mui/material/Card";
import { Link } from "react-router-dom";
import SoftBox from "components/SoftBox";
import SoftTypography from "components/SoftTypography";
import SoftBadge from "components/SoftBadge";
import DashboardLayout from "examples/LayoutContainers/DashboardLayout";
import DashboardNavbar from "examples/Navbars/DashboardNavbar";
import Table from "examples/Tables/Table";
import axios from "axios";

const columns = [
  { name: "nameCourse", align: "left" },
  { name: "startDate", align: "center" },
  { name: "endDate", align: "center" },
  { name: "action", align: "center" },
];

function Teaching() {
  const [courses, setCourses] = useState([]);

  useEffect(() => {
    const fetchCourses = async () => {
      try {
        const response = await axios.get("http://localhost:8080/course/get-all-course");
        setCourses(response.data);
      } catch (error) {
        console.error("Failed to fetch courses data:", error);
      }
    };

    fetchCourses();
  }, []);

  const rows = Array.isArray(courses) ? courses.map((course) => ({
    nameCourse: (
      <SoftTypography variant="caption" color="secondary" fontWeight="medium">
        {course.name}
      </SoftTypography>
    ),
    startDate: (
      <SoftTypography variant="caption" color="secondary" fontWeight="medium">
        {course.startDate}
      </SoftTypography>
    ),
    endDate: (
      <SoftTypography variant="caption" color="secondary" fontWeight="medium">
        {course.endDate}
      </SoftTypography>
    ),
    action: (
      <Link to={`/teaching/course-infor/${course.courseUuid}`}>
        <SoftBadge variant="gradient" badgeContent="View" color="dark" size="xs" container />
      </Link>
    ),
  })) : [];

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
