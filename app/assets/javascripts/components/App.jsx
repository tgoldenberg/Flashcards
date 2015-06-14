var App = React.createClass({

  getInitialState: function() {
    return { data: this.props, messages: [] };
  },

  handleNewAnswer: function(data) {
    var newData = this.state.data;
    newData.messages = data.messages;
    newData.game = data.game;
    newData.card = data.card;
    newData.cards = data.cards;
    this.setState({data: newData});
    return false;
  },

  render: function() {
    var idx = this.state.data.game.card_idx;
    var arr = this.state.data.all_cards;
    var currentCard = arr[idx];
    var table = [];

    var data = this.state.data;

    $.each(data.cards, function(idx, card) {
      table.push(<TableRow card={card} letter={data.letters[idx]} />);
    });
    var messages = [];
    $.each(this.state.messages, function(idx, msg) {
      messages.push(<Message msg={msg}/>)
    });
    var tableTitle = <h2>This spirit animal has the <b>following attribute: </b></h2>;

    return (
      <div className="app-container">
        <GameHeader data={this.state.data }/>
        <div className="col-sm-12 card-wrapper">
          <Card card={currentCard } />
          <div className="col-md-7 table-wrapper">
            { tableTitle }
            <Table table={table} />
            <br /><br />
            <ButtonGroup choice1={data.cards[0]} choice2={data.cards[1]} choice3={data.cards[2]} data={data} sendAnswer={this.handleNewAnswer}/>
          </div>
        </div>
      </div>
    );
  }
});
