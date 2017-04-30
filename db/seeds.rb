photo_list = [
  { title: "Myra's birthday", date: "2013-02-02", description: "This is my favourite photo of Myra's birthday. It was a wonderful day.", file_location: "my-photo/myras-birthday-20130202.jpg" },
  { title: "Family outing", date: "2014-11-13", description: "Spending some time at the park after a long week.", file_location: "my-photo/family-outing-20141113.jpg" },
  { title: "Anniversary", date: "2010-11-22", description: "This is  our 2nd anniversary.", file_location: "my-photo/my-anniversary-20101122.jpg" }
]

photo_list.each do |photo|
  Photo.create(title: photo[:title], date: photo[:date], description: photo[:description], file_location: photo[:description])
end
