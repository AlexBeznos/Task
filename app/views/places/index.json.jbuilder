json.places @places do |place|
  json.name      place.name # I see the same lines here as in show action, will be much cleaner if you will move this code to partial and reuse in both files.
  json.address   place.address
  json.owner     place.owner
end
