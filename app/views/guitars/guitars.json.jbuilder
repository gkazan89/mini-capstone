json.array! @guitars.each do |guitar|
  json.name guitar.name
  json.id guitar.id
  json.price guitar.price
  json.image_url guitar.image_url
  json.description guitar.description
end
