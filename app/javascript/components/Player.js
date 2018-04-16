import React from "react"
import PropTypes from "prop-types"
class Player extends React.Component {
  render () {
    const row = this.props.players.map((data) =>
      <tr>
        <td>{data.name}</td>
        <td>{data.position}</td>
        <td>{data.jerseyNumber}</td>
        <td>{data.dateOfBirth}</td>
        <td>{data.nationality}</td>
        <td>{data.contractUntil}</td>
        <td>{data.marketValue}</td>
      </tr>
      );
      return (
        <table className="table">
          <thead>
            <tr>
              <th>Name</th>
              <th>Position</th>
              <th>Jersey Number</th>
              <th>Date Of Birth</th>
              <th>Nationality</th>
              <th>Contract Until</th>
              <th>Market Value</th>
            </tr>
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
