const fs = require('fs');
const path = require('path');

const OUT_DIR = path.resolve(path.join(__dirname, './out'));
const BASE_URL = 'https://hit-u-badminton.web.app';

const listPaths = (dir) => {
  if (dir === path.join(OUT_DIR, '_next')) {
    return [];
  }
  return fs.readdirSync(dir, { withFileTypes: true }).flatMap((dirent) => {
    if (dirent.isDirectory()) {
      if (dirent.name === "admin") {
        return [];
      }
      return listPaths(`${dir}/${dirent.name}`);
    }
    if (dirent.isFile()) {
      if (dirent.name.slice(-5) !== '.html') {
        return [];
      }
      const filename =
        dirent.name.slice(-10) === 'index.html' ? '' : dirent.name.slice(0, -5);
      return [`${dir}/${filename}`.replace(OUT_DIR + '/', '')];
    }
    return [];
  });
};

const paths = listPaths(OUT_DIR);
const sitemaptxt = paths.map((path) => `${BASE_URL}/${path}`).join('\n');
fs.writeFileSync(path.join(OUT_DIR, 'sitemap.txt'), sitemaptxt);

console.log('Success to generate sitemap.xml.');
