import React from "react"
import PropTypes from "prop-types"
class Player extends React.Component {
  render () {
    const row = this.props.players.map((data) =>
      <tr>
        <td key={data.name}>{data.name}</td>
        <td key={data.position}>{data.position}</td>
        <td key={data.jerseyNumber}>{data.jerseyNumber}</td>
        <td key={data.dateOfBirth}>{data.dateOfBirth}</td>
        <td key={data.nationality}>{data.nationality}</td>
        <td key={data.contractUntil}>{data.contractUntil}</td>
        <td key={data.marketValue}>{data.marketValue}</td>
      </tr>
      );
      return (
        <table class="table">
          <thead>
            <th>Name</th>
            <th>Position</th>
            <th>Jersey Number</th>
            <th>Date Of Birth</th>
            <th>Nationality</th>
            <th>Contract Until</th>
            <th>Market Value</th>
          </thead>
          <tbody>
            {row}
          </tbody>
        </table> 
      );
  }
}

Player.propTypes = {
  name: PropTypes.string
};
export default Player
