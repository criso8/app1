require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_workout" do
    mail = Notifications.new_workout
    assert_equal "New workout", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
