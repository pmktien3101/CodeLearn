import React from "react";
import { Link } from "react-router-dom";
import SoftBox from "components/SoftBox";
import SoftTypography from "components/SoftTypography";
import Card from "@mui/material/Card";
import Button from "@mui/material/Button";
import DashboardLayout from "examples/LayoutContainers/DashboardLayout";
import DashboardNavbar from "examples/Navbars/DashboardNavbar";

const topics = [
    { id: 1, name: "Topic 1" },
    { id: 2, name: "Topic 2" },
    { id: 3, name: "Topic 3" },
];

const StudentResult = () => {
    return (
        <DashboardLayout>
            <DashboardNavbar />
            <SoftBox py={3}>
                <SoftBox mb={3}>
                    <Card>
                        <SoftBox display="flex" justifyContent="space-between" alignItems="center" p={3}>
                            <SoftTypography variant="h4">Student 1</SoftTypography>
                        </SoftBox>
                        <SoftBox p={3}>
                            {topics.map((topic) => (
                                <SoftBox
                                    key={topic.id}
                                    display="flex"
                                    justifyContent="space-between"
                                    alignItems="center"
                                    mb={2}
                                >
                                    <SoftTypography variant="body1">{topic.name}</SoftTypography>
                                    <Link to={`/teaching/student-result/topic/${topic.id}`}>
                                        <Button variant="contained" color="primary">
                                            View Result
                                        </Button>
                                    </Link>
                                </SoftBox>
                            ))}
                        </SoftBox>
                    </Card>
                </SoftBox>
            </SoftBox>
        </DashboardLayout>
    );
};

export default StudentResult;
