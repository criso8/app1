class Notifications < ActionMailer::Base

default from: "workouts@example.com"

def new_workout(workouts)
@greeting = "Why hello there!"
@id = workouts.id

mail to: workouts.user.email
end

end