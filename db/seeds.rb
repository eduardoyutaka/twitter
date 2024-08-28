for user_id in 1..10_000
  email = Faker::Internet.email
  User.create(email: Faker::Internet.email, password: "12345678")
  p "User #{user_id} created with email #{email}"
end

# Each user follows all users with id greater than its own
for follower_id in 1..9_999
  for followee_id in (follower_id+1)..10_000
    Follow.create(follower_id: follower_id, followee_id: followee_id)
    p "User #{follower_id} followed user #{followee_id}"
  end
end

for tweet_id in 1..1_000_000
  Tweet.create(sender_id: rand(1..1000), body: Faker::Lorem.sentence(word_count: 20))
  p "Created #{tweet_id} tweets"
end
