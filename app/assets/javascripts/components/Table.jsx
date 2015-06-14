var Table = React.createClass({
  render: function() {
    return (
      <table className="tables">
        <thead>
          <br />
          <tr><p>Choose one of the following:</p></tr>
        </thead>
        <br />
        <tbody>
          { this.props.table }
        </tbody>
      </table>
    );
  }
});
