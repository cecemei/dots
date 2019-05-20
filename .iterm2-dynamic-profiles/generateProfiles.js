const fs = require('fs');
const template = require('./template.json');

const warRepos = fs.readdirSync('/Users/yingqian/Documents').filter( (dirName) => {
  return dirName.startsWith('oo') || dirName.startsWith('sp') || dirName.startsWith('sl');
}).concat([
  'etc'
]);

const warProfiles = warRepos.map( (repo) => {
  return Object.assign({}, template, {
    "Name": "war-"+repo,
    "Guid": "war-"+repo,
    "Initial Text": template["Initial Text"].replace(/main/gi, "war-"+repo),
    "Working Directory": "\/Users\/yingqian\/Documents\/" + repo,
  });
});

const repos = fs.readdirSync('/Users/yingqian/workspace').filter( (dirName) => {
  return dirName.startsWith('oo') || dirName.startsWith('sp') || dirName.startsWith('sl') || dirName.startsWith('pls') || dirName.startsWith('infra');
});

const infra = [
  'mongod',
  'elasticsearch',
  'rabbitmq',
  'etc',
  'dots',
  'dev'
];

const infraProfiles = infra.map( (entry) => {
  return Object.assign({}, template, {
    "Name": entry,
    "Guid": entry,
    "Initial Text": template["Initial Text"].replace(/main/gi, entry),
    "Working Directory": template["Working Directory"],
  });
});

const profiles = repos.map( (repo) => {
  return Object.assign({}, template, {
    "Name": repo,
    "Guid": repo,
    "Initial Text": template["Initial Text"].replace(/main/gi, repo),
    "Working Directory": template["Working Directory"] + repo,
  });
}).concat(infraProfiles);

const dynamicProfileDir = '/Users/yingqian/Library/Application Support/iTerm2/DynamicProfiles/';
fs.writeFileSync(dynamicProfileDir + 'profiles.json', JSON.stringify({ Profiles: profiles }, null, 2), { encoding: 'utf8' });
