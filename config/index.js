const urlPrefixes = {
  dev: 'http://192.168.33.10:5010',
  dragon: 'https://dragon-emma.glowing.com',
  titan: 'https://titan-emma.glowing.com',
  prod: 'https://glowing.com',
};

module.exports = (env)=>{
  env = env || 'prod';
  return {
    // functions
    prefixUrl: u=>urlPrefixes[env]+u,

    // data
    urls: require('./urls').map(u=>urlPrefixes[env]+u)
  };
}

