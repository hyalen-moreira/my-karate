function fn() {
  var port = karate.properties['karate.server.port'];
  port = port || '8080';

  karate.log('---> I am here');

  return { mockServerUrl: 'http://localhost:' + port + '/' }
}