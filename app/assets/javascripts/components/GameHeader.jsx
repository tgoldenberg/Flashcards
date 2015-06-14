var GameHeader = React.createClass({
  render: function() {
    return (
      <div className="col-sm-12 games-show-wrapper">
        <div className="image-gradient-dynamic games-show-header">
          <img src="https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/mountains.png" alt=""/>
          <div className="overlay"></div>
          <div className="copy">
            <h2>You are playing the following deck: <b> {this.props.data.deck.name}</b></h2>
            <div className="score-holder flexbox">
              <p className="score-counter">Correct answers: <b>  {this.props.data.game.right}</b></p>
              <p className="score-counter">Incorrect answers: <b> {this.props.data.game.wrong }</b></p>
            </div>
          </div>
        </div>
      </div>
    );
  }
});
