var ButtonGroup = React.createClass({
  handleSubmit: function(e) {
    e.preventDefault();
    // var selection = $(this).parent.find("selection-input").val();
    var answer = e.target.children[0].value;
    var gameId = this.props.data.game.id;
    var func = this.props.sendAnswer;
    var allCards = this.props.data.all_cards;
    if (answer == allCards[allCards.length - 1].answer) {
      window.location = "/";
    } else {
      $.ajax({
        url: "/games/" + gameId + "/guess",
        method: "post",
        data: {id: gameId, selection: answer},
        dataType: "json",
        success: function(data) {
          func(data);
        }
      });
    }
  },
  render: function() {
    return (
      <div className="button-wrapper">
        <div className="col-sm-3 col-sm-offset-1">
          <form className="" action="/games/{this.state.game.id}/guess" method="post" onSubmit={this.handleSubmit}>
            <input type="hidden" className="selection-input" name="selection" value={this.props.choice1}/>
            <input type="submit" name="name" value="A" className="hero-button"/>
          </form>
        </div>
        <div className="col-sm-3">
          <form className="" action="/games/{this.state.game.id}/guess" method="post" onSubmit={this.handleSubmit}>
            <input type="hidden" className="selection-input" name="selection" value={this.props.choice2} />
            <input type="submit" name="name" value="B" className="hero-button"/>
          </form>
        </div>
        <div className="col-sm-3">
          <form className="" action="/games/{this.state.game.id}/guess" method="post" onSubmit={this.handleSubmit}>
            <input type="hidden" className="selection-input" name="selection" value={this.props.choice3} />
            <input type="submit" name="name" value="C" className="hero-button"/>
          </form>
        </div>
      </div>

    );
  }
});
