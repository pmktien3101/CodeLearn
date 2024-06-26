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

function EditTopic() {
  const { id } = useParams();

  return (
    <DashboardLayout>
      <DashboardNavbar />
      <SoftBox py={3}>
        <SoftBox mb={3}>
          <Grid container spacing={3} justifyContent="center">
            <Grid item xs={12} lg={11}> {/* Adjusted width */}
              <SoftBox p={3}>
                <SoftTypography variant="h4" mb={3}>Topic Information</SoftTypography>

                {/* Course Information Section */}
                <Card variant="outlined" sx={{ mb: 3 }}>
                  <CardContent>
                    <Grid container spacing={2} direction="column">
                      <Grid item xs={12} display="flex" alignItems="center">
                        <TextField label="Topic Name" variant="outlined" fullWidth />
                        <IconButton aria-label="edit">
                          <EditIcon />
                        </IconButton>
                      </Grid>
                      <Grid item xs={12} display="flex" alignItems="center">
                        <TextField label="Type" variant="outlined" fullWidth />
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
                    </Grid>
                  </CardContent>
                </Card>

                {/* Topic List Section */}
                <Card variant="outlined">
                  <CardContent>
                    <SoftTypography variant="h5" mb={2}>Question List</SoftTypography>
                    <Grid container spacing={2}>
                      {topics.map((topic) => (
                        <Grid item xs={12} key={topic.id} display="flex" alignItems="center">
                          <Card variant="outlined" sx={{ flexGrow: 1 }}>
                            <CardContent>
                              <SoftTypography variant="body1"><strong>Question:</strong> {topic.name}</SoftTypography>
                            </CardContent>
                          </Card>
                          <Link to={`/editor/editTopic/editQuestion/${topic.id}`}>
                            <IconButton aria-label="edit">
                              <EditIcon />
                            </IconButton>
                          </Link>
                        </Grid>
                      ))}
                      <Grid item xs={12} mt={2}>
                        <Card variant="outlined" sx={{ flexGrow: 1, display: 'flex', justifyContent: 'center', alignItems: 'center' }}>
                          <CardContent>
                            <SoftTypography variant="body1" align="center">
                              Add more question
                            </SoftTypography>
                          </CardContent>
                        </Card>
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

export default EditTopic;