import React, { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import SoftBox from "components/SoftBox";
import SoftTypography from "components/SoftTypography";
import Grid from "@mui/material/Grid";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import TextField from "@mui/material/TextField";
import Button from "@mui/material/Button";
import DashboardLayout from "examples/LayoutContainers/DashboardLayout";
import DashboardNavbar from "examples/Navbars/DashboardNavbar";
import axiosClient from "api/axiosClient";

function CourseInfor() {
  const { id } = useParams();
  const [course, setCourse] = useState(null);
  const [students, setStudents] = useState([]);

  useEffect(() => {
    const fetchCourse = async () => {
      try {
        const { data } = await axiosClient.get(`/courses/${id}`);
        setCourse(data);
      } catch (error) {
        console.error("Failed to fetch course data:", error);
      }
    };

    fetchCourse();
  }, [id]);

  useEffect(() => {
    const fetchStudents = async () => {
      try {
        const { data } = await axiosClient.get("/students");
        setStudents(data);
      } catch (error) {
        console.error("Failed to fetch student data:", error);
      }
    };

    fetchStudents();
  }, []);

  if (!course) {
    return <div>Loading...</div>;
  }

  return (
    <DashboardLayout>
      <DashboardNavbar />
      <SoftBox py={3}>
        <SoftBox mb={3}>
          <Grid container spacing={3} justifyContent="center">
            <Grid item xs={12} lg={11}>
              <SoftBox p={3}>
                <SoftTypography variant="h4" mb={3}>Course Information</SoftTypography>

                {/* Course Information Section */}
                <Card variant="outlined" sx={{ mb: 3 }}>
                  <CardContent>
                    <Grid container spacing={2}>
                      <Grid item xs={12} sm={6}>
                        <TextField label="Course Name" variant="outlined" fullWidth value={course.nameCourse} readOnly />
                      </Grid>
                      <Grid item xs={12} sm={6}>
                        <TextField label="Instructor" variant="outlined" fullWidth value={course.author} readOnly />
                      </Grid>
                      <Grid item xs={12}>
                        <TextField label="Description" variant="outlined" fullWidth multiline rows={4} value={course.description} readOnly />
                      </Grid>
                    </Grid>
                  </CardContent>
                </Card>

                <Card variant="outlined">
                  <CardContent>
                    <SoftTypography variant="h5" mb={2}>Student List</SoftTypography>
                    <Grid container spacing={2}>
                      {students.map((student) => (
                        <Grid item xs={12} key={student.id}>
                          <Card variant="outlined">
                            <CardContent>
                              <Grid container spacing={2} alignItems="center">
                                <Grid item xs={8}>
                                  <SoftTypography variant="body1"><strong>Name:</strong> {student.name}</SoftTypography>
                                  <SoftTypography variant="body2"><strong>Email:</strong> {student.email}</SoftTypography>
                                </Grid>
                                <Grid item xs={4} style={{ textAlign: 'right' }}>
                                  <Link to={`/teaching/student-result/${student.id}`}>
                                    <Button variant="contained" color="secondary">
                                      Student Result
                                    </Button>
                                  </Link>
                                </Grid>
                              </Grid>
                            </CardContent>
                          </Card>
                        </Grid>
                      ))}
                    </Grid>
                  </CardContent>
                </Card>
              </SoftBox>
            </Grid>
          </Grid>
        </SoftBox>
      </SoftBox>
    </DashboardLayout>
  );
}

export default CourseInfor;
