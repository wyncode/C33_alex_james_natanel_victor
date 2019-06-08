import React from 'react'
import dateFns from 'date-fns'
import Header from './Header'
import Days from './Days'
import Cells from './Cells'

export default class Calendar extends React.Component {
  state = {
    currentMonth: new Date(),
    currentDate: new Date(),
    lessons:{}
  }

  nextMonth = () => {
    this.setState({
      currentMonth: dateFns.addMonths(this.state.currentMonth, 1)
    })
  }

  prevMonth = () => {
    this.setState({
      currentMonth: dateFns.subMonths(this.state.currentMonth, 1)
    })
  }

componentDidMount(){
  fetch(`/user_lessons/${this.props.userId}`)
    .then(response => response.json())
    .then(data => this.setState({lessons:data}))
}

  render(){
    const { currentMonth, currentDate } = this.state
    return(
      <div className="calendar">
        <Header
          currentMonth={currentMonth}
          prevMonth={this.prevMonth}
          nextMonth={this.nextMonth}
        />
        <Days />
        <Cells
          currentMonth={currentMonth}
          currentDate={currentDate}
          lessons={this.state.lessons}
        />
      </div>
    )
  }
}
