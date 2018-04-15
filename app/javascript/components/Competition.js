import React from "react"
import PropTypes from "prop-types"
class Competition extends React.Component {
  render () {
    const row = this.props.competitions.map((data) =>
    <tr>
      <td key={data.caption}>{data.caption}</td>
      <td key={data.league}>{data.league}</td>
      <td key={data.year}>{data.year}</td>
      <td>
        <a href={"/teams?competition_id="+ data.id}>Show teams</a>
      </td>
      <td>
        <a href={"/leagues?competition_id="+ data.id}>Show league table</a>
      </td>
    </tr>
    );
    return (
    <table class="table">
      <thead>
        <th>Caption</th>
        <th>League</th>
        <th>Year</th>
        <th></th>
        <th></th>
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
