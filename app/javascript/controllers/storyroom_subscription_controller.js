import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="storyroom-subscription"
export default class extends Controller {
  static values = { storyroomId: Number }

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "StoryroomChannel", id: this.storyroomIdValue },
      { received: data => console.log(data) }
    )
    console.log(`Subscribed to the storyroom with the id ${this.storyroomIdValue}.`)
  }
}
