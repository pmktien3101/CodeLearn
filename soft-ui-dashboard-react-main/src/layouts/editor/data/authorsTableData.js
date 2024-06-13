import React from "react";
import PropTypes from "prop-types";
import { Link } from "react-router-dom";
import SoftBox from "components/SoftBox";
import SoftTypography from "components/SoftTypography";
import SoftAvatar from "components/SoftAvatar";
import SoftBadge from "components/SoftBadge";
import team2 from "assets/images/team-2.jpg";
import team3 from "assets/images/team-3.jpg";
import team4 from "assets/images/team-4.jpg";

function Author({ image, name, email }) {
  return (
    <SoftBox display="flex" alignItems="center" px={1} py={0.5}>
      <SoftBox mr={2}>
        <SoftAvatar src={image} alt={name} size="sm" variant="rounded" />
      </SoftBox>
      <SoftBox display="flex" flexDirection="column">
        <SoftTypography variant="button" fontWeight="medium">
          {name}
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
  name: PropTypes.string.isRequired,
  email: PropTypes.string.isRequired,
};

function Function({ job, org }) {
  return (
    <SoftBox display="flex" flexDirection="column">
      <SoftTypography variant="caption" fontWeight="medium" color="text">
        {job}
      </SoftTypography>
      <SoftTypography variant="caption" color="secondary">
        {org}
      </SoftTypography>
    </SoftBox>
  );
}

Function.propTypes = {
  job: PropTypes.string.isRequired,
  org: PropTypes.string.isRequired,
};

const authorsTableData = {
  columns: [
    { name: "author", align: "left" },
    { name: "nameCourse", align: "left" },
    { name: "startDate", align: "center" },
    { name: "endDate", align: "center" },
    { name: "action", align: "center" },
  ],
  rows: [
    {
      author: <Author image={team2} name="John Michael" email="john@creative-tim.com" />,
      nameCourse: <Function job="PRJ301" org="Java Web Application" />,
      startDate: (
        <SoftTypography variant="caption" color="secondary" fontWeight="medium">
          23/04/18
        </SoftTypography>
      ),
      endDate: (
        <SoftTypography variant="caption" color="secondary" fontWeight="medium">
          23/04/18
        </SoftTypography>
      ),
      action: (
        <Link to="/editor/edit-course/1">
          <SoftBadge variant="gradient" badgeContent="Edit" color="success" size="xs" container />
        </Link>
      ),
    },
    {
      author: <Author image={team3} name="John Michael" email="john@creative-tim.com" />,
      nameCourse: <Function job="PRJ301" org="Java Web Application" />,
      startDate: (
        <SoftTypography variant="caption" color="secondary" fontWeight="medium">
          23/04/18
        </SoftTypography>
      ),
      endDate: (
        <SoftTypography variant="caption" color="secondary" fontWeight="medium">
          11/01/19
        </SoftTypography>
      ),
      action: (
        <Link to="/editor/edit-course/2">
          <SoftBadge variant="gradient" badgeContent="Edit" color="success" size="xs" container />
        </Link>
      ),
    },
    {
      author: <Author image={team4} name="John Michael" email="john@creative-tim.com" />,
      nameCourse: <Function job="PRJ301" org="Java Web Application" />,
      startDate: (
        <SoftTypography variant="caption" color="secondary" fontWeight="medium">
          23/04/18
        </SoftTypography>
      ),
      endDate: (
        <SoftTypography variant="caption" color="secondary" fontWeight="medium">
          19/09/17
        </SoftTypography>
      ),
      action: (
        <Link to="/editor/edit-course/3">
          <SoftBadge variant="gradient" badgeContent="Edit" color="success" size="xs" container />
        </Link>
      ),
    },
  ],
};

export default authorsTableData;
