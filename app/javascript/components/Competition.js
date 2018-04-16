import React from "react"
import PropTypes from "prop-types"
class Competition extends React.Component {
  render () {
    const row = this.props.competitions.map((data) =>
    <tr>
      <td>{data.caption}</td>
      <td>{data.league}</td>
      <td>{data.year}</td>
      <td>
        <a href={"/teams?competition_id="+ data.id}>Show teams</a>
      </td>
      <td>
        <a href={"/leagues?competition_id="+ data.id}>Show league table</a>
      </td>
    </tr>
    );
    return (
    <table className="table">
      <thead>
        <tr>
          <th>Caption</th>
          <th>League</th>
          <th>Year</th>
          <th></th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        {row}
      </tbody>
    </table>
    );
  }
}

Competition.propTypes = {
  caption: PropTypes.string,
  league: PropTypes.string,
  year: PropTypes.string
};
export default Competition
