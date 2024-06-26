import React from "react";
import { Link } from "react-router-dom";
import { useParams } from "react-router-dom";
import SoftBox from "components/SoftBox";
import SoftTypography from "components/SoftTypography";
import Grid from "@mui/material/Grid";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import TextField from "@mui/material/TextField";
import Button from "@mui/material/Button";
import IconButton from "@mui/material/IconButton";
import EditIcon from "@mui/icons-material/Edit";
import DashboardLayout from "examples/LayoutContainers/DashboardLayout";
import DashboardNavbar from "examples/Navbars/DashboardNavbar";

const students = [
  { id: 1, name: "1", email: "john.doe@example.com" },
  { id: 2, name: "2", email: "jane.smith@example.com" },
  { id: 3, name: "3", email: "alice.johnson@example.com" },
  // Add more students as needed
];
const topics = [
  { id: 1, name: "1" },
  { id: 2, name: "2" },
  { id: 3, name: "3" },
];

function EditQuestion() {
  const { id } = useParams();

  return (
    <DashboardLayout>
      <DashboardNavbar />
      <SoftBox py={3}>
        <SoftBox mb={3}>
          <Grid container spacing={3} justifyContent="center">
            <Grid item xs={12} lg={11}> {/* Adjusted width */}
              <SoftBox p={3}>
                <SoftTypography variant="h4" mb={3}>Question Information</SoftTypography>

                {/* Course Information Section */}
                <Card variant="outlined" sx={{ mb: 3 }}>
                  <CardContent>
                    <Grid container spacing={2} direction="column">
                      <Grid item xs={12} display="flex" alignItems="center">
                        <TextField label=" Name" variant="outlined" fullWidth />
                        <IconButton aria-label="edit">
                          <EditIcon />
                        </IconButton>
                      </Grid>
                      
                      <Grid item xs={12} display="flex" alignItems="center">
                        <TextField label="Description" variant="outlined" fullWidth multiline rows={4} />
                        <IconButton aria-label="edit">
                          <EditIcon />
                        </IconButton>
                      </Grid>
                      <Grid item xs={12} display="flex" alignItems="center">
                        <TextField label="Deadline" variant="outlined" fullWidth />
                        <IconButton aria-label="edit">
                          <EditIcon />
                        </IconButton>
                      </Grid>
                      <Grid item xs={12} display="flex" alignItems="center">
                        <TextField label="Testcase" variant="outlined" fullWidth />
                        <IconButton aria-label="edit">
                          <EditIcon />
                        </IconButton>
                      </Grid>
                    </Grid>
                    <Grid container spacing={2} justifyContent="flex-end" mt={2}>
                      <Grid item xs={12} sm={3}>
                        <Button variant="contained" color="secondary" fullWidth>
                          Save changes
                        </Button>
                      </Grid>
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

export default EditQuestion;
