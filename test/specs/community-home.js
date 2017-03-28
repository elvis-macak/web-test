const CONFIG = require('config')(process.env.ENV_NAME);

describe('Community', ()=>{
  beforeAll(()=>{
    browser.url(CONFIG.prefixUrl('/community'));
  });

  it(`Sidebar`, ()=>{
    expect(browser.isExisting('.community-sidebar')).toBe(true);
    expect(browser.$('.community-sidebar .entity-item').length).not.toBe(0);
  });
});
