const PlayIt = require('playit.gg');

(async () => {
  // Start PlayIt
  const playit = await PlayIt();

  // Create A PlayIt Tunnel
  const tunnel = await playit.createTunnel({ proto: 'tcp', port: 80, ip: '192.168.31.210' });

  playit.onError(console.error);
  playit.onWarning(console.warn);

  console.log(`http://${tunnel.url}`); // Print the tunnel url
})();