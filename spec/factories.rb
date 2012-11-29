
Factory.define :user do |user|
  user.name                     "Michael Hartl"
  user.email                    "mhartl@example.com"
end

Factory.define :event do |event|
  event.name                     "funky event"
  event.date                    Time.now
end