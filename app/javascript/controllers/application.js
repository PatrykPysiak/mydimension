import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

$(window).on('beforeunload', function() {
  $(window).scrollTop(0);
});

export { application }
