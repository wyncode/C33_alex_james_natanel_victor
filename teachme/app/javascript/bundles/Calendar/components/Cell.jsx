import React from 'react'
import dateFns from 'date-fns'

const Cell = props => {
  return(
    <div
        className={`calendar-col cell ${
          !dateFns.isSameMonth(props.day, props.currentMonth)
            ? "disabled"
            : dateFns.isSameDay(props.day, props.currentDate) ? "current" : ""
        }`}
    >
    <div className="calendar-events">
      {
        props.lessons.map(lesson => {
          return(
            <div key={lesson.id} className="calendar-event">
              {
                lesson ?
                <s className="cal-lesson"></s> :
                lesson.description
              }
            </div>
          )
        })
      }
    </div>

      <span className="number">
        {dateFns.format(props.day, "D")}
      </span>
    </div>
  )
}

export default Cell
