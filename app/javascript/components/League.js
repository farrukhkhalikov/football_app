import React from "react"
import PropTypes from "prop-types"
class League extends React.Component {
  render () {
    const row = this.props.standing.map((data) =>
      <tr>
        <td>{data.rank}</td>
        <td>{data.team}</td>
        <td>{data.playedGames}</td>
        <td>{data.points}</td>
        <td>{data.goals}</td>
        <td>{data.goalsAgainst}</td>
        <td>
         <a href={"/players?team_id="+ data.teamId}>Show Players</a>
        </td>
      </tr>
    );
    return (
      <table className="table">
        <thead>
          <tr>
            <th>Rank</th>
            <th>Team Name</th>
            <th>Played Games</th>
            <th>Points</th>
            <th>Goals</th>
            <th>Goals Against</th>
            <th>Goal Difference</th>
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

export default League
