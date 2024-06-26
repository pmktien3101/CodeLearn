import React from "react";
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

const students = [
  { id: 1, question: "1"},
  { id: 2, question: "2"},
  { id: 3, question: "3"},
];

function CourseInfor() {
  const { id } = useParams();

  return (
    <DashboardLayout>
      <DashboardNavbar />
      <SoftBox py={3}>
        <SoftBox mb={3}>
          <Grid container spacing={3} justifyContent="center">
            <Grid item xs={12} lg={11}>
              <SoftBox p={3}>
                <SoftTypography variant="h4" mb={3}>Student 1</SoftTypography>
                <Card variant="outlined">
                  <CardContent>
                    <SoftTypography variant="h5" mb={2}>Topic 1</SoftTypography>
                    <Grid container spacing={2}>
                      {students.map((student) => (
                        <Grid item xs={12} key={student.id}>
                          <Card variant="outlined">
                            <CardContent>
                              <Grid container spacing={2} alignItems="center">
                                <Grid item xs={8}>
                                  <SoftTypography variant="body1"><strong>Question:</strong> {student.name}</SoftTypography>
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
