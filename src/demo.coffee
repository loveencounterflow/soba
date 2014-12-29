














#-----------------------------------------------------------------------------------------------------------
router.on 'gimme-json', ( socket, P, next ) =>
  help 'gimme-json'
  [ name, ] = P
  client_id = @get_client_id null, socket
  value     = { 'foo': 42, 'bar': true, 'client-id': client_id, }
  socket.emit 'heres-json', value
  next()
