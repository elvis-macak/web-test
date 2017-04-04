const CONFIG = require('../config')(process.env.ENV_NAME);

describe('Common', ()=>{
  for (url of CONFIG.urls) {
    ((url)=>{
      it(`Header&Console: ${url}`, ()=>{
        browser.url(url);
        expect(browser.isExisting('.nav-container .nav-bar')).toBe(true);
        expect(browser.log('browser').value.filter(l=>l.level==='SEVERE')).toEqual([]);
      });
    })(url);
  }
});
