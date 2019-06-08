import React from 'react'
import { Modal, ModalHeader, ModalBody } from 'reactstrap'
import dateFns from 'date-fns'

const CalendarModal = props => (
  <Modal isOpen={props.modalOpen} toggle={props.closeModal}>
    <ModalHeader toggle={props.closeModal}>
      { dateFns.format(props.selectedDate, 'dddd, MMMM Do') }
    </ModalHeader>
    <ModalBody>
      AHHHHH!!
    </ModalBody>
  </Modal>
)

export default CalendarModal
