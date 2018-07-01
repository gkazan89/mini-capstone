json.array! @guitars.each do |guitar|
  json.partial! "guitar.json.jbuilder", guitar: guitar
end
