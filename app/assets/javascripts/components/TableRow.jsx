var TableRow = React.createClass({
  render: function() {
    return (
      <tr>
        <td className="action-td"><b> {this.props.letter }</b></td>
        <td className="hover-td">{ this.props.card }</td>
      </tr>
    );
  }
});
