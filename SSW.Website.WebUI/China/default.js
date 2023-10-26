const data = [{
  state: 'done',
  site: 'SSW Website',
  url: 'https://www.ssw.com.au/ssw/employment/default.aspx',
  time: {
    AU_PC: ['8', '2'],
    CN_KOALA: ['5', '3'],
    CN_iPhone: ['14']
  },
  developer: 'Barry',
    comments: [
    'Load time prior to fix was 2m30s',
    'Followed the Chinafy rules to fix',
    'SSW.ServiceDetector.js has been applied to prevent blocked resources from being loaded in China',
    'Load time is faster in China than Australia because in China the blocked resources do not need to be loaded, so the page weight is less. In Australia, 2.9MB is transferred. In China, only 1.2MB is transferred.  e.g. Facebook, Google, Twitter'
  ]
}, {
  state: 'done',
  site: 'SSW Rules',
  url: 'https://rules.ssw.com.au/rules-to-better-internationalization',
  time: {
    AU_PC: ['4', '3'],
    CN_KOALA: ['9', '6'],
    CN_iPhone: ['14']
  },
  developer: 'Jean',
  comments: [
    'Load time prior to fix was approx. 2m30s',
    'Followed the Chinafy rules to fix',
    'Using SSW.ServiceDetector.js with GeoIP detection to prevent blocked resources from being loaded in China'
  ]
}, {
  state: 'done',
  site: 'SSW Timepro',
  url: 'https://ssw.sswtimepro.com/Timesheet/IL/2019-04-08/Add',
  time: {
    AU_PC: ['10', '5'],
    CN_KOALA: ['10', '6'],
    CN_iPhone: ['7']
  },
  developer: 'Isaac Lu',
  comments: [
      'Load time prior to fix was variable between 12s and 45s',
      'Followed the Chinafy rules to fix',
      'Added gzip for main.js',
      'Moved unstable .js files to local instead of using CDN',
      'Removed js file request causing 404 error'
  ]
}, {
  state: 'done',
  site: 'SSW Sugarlearning',
  url: 'https://www.sugarlearning.com/SSW/backlog/isaac_lu?',
  time: {
    AU_PC: ['4', '3'],
    CN_KOALA: ['6', '4'],
    CN_iPhone: ['6']
  },
  developer: 'Matt',
  comments: [
    'Load time prior to fix was 42s',
    'Size of main.js has been reduced to 37kb from 2.2MB'
  ]
}, {
  state: 'todo',
  site: 'SSW TV',
  url: 'https://tv.ssw.com',
  time: {
    AU_PC: ['14', '3'],
    CN_KOALA: ['52', '4'],
    CN_iPhone: ['165']
  },
  developer: 'Tiago',
        comments: [
            'This url redirects to Youtube which is blocked in China',
            'The old site had a problem with php update and it will redirect to right url until the new site is ready'
  ]
}, {
  state: 'done',
  site: 'SSW Firebootcamp',
  url: 'https://firebootcamp.com/hands-on-workshops',
  time: {
    AU_PC: ['7','3'],
    CN_KOALA: ['10', '3'],
    CN_iPhone: ['8']
  },
  developer: 'Barry,Eden',
  comments: [
    'Load time prior to fix was approx 2m30s',
    'Followed the Chinafy rules to fix',
    'JS calls youtube, googleapi, twitter are now prevented from loading in China using SSW.ServiceDetector.js '
  ]
}];

function newLine(url, n) {
    if (url.length < n) {
        return url;
    } else {
        var s1 = url.substring(0, n);
        var s2 = url.substring(n, url.length);
        var res = s1 + '</br>' + s2;
        return res;
    }
}
function compareByKoala(a, b) {
  return a.time.CN_KOALA[0];
}

function format(time) {
  const min = Math.floor(time / 60) + '';
  const sec = time % 60 + '';

  const timeSrt = `${min.padStart(2, '0')}:${sec.padStart(2, '0')}`;

  return `<span class="${time > 15 ? 'red' : ''}">${timeSrt}</span>`;
}

function renderTable(id, data) {
  const table = document.getElementById(id);
  const tbody = document.createElement('tbody');
  data.sort(compareByKoala);

  const rowsHtml = data.map(r => {
    console.log(r);
    r.url = newLine(r.url,25);
    const rowHtml = `
      <tr>
          <td>${r.site}</br>
            <a href="${r.url}" target="_blank">${r.url}</a>
          </td>
          <td>${format(r.time.AU_PC[0])}${r.time.AU_PC[1] ? `&nbsp;&nbsp;(${format(r.time.AU_PC[1])})` : ''}</td>
          <td class="bold">${format(r.time.CN_KOALA[0])}${r.time.CN_KOALA[1] ? `&nbsp;&nbsp;(${format(r.time.CN_KOALA[1])})` : ''}</td>
          <td>${format(r.time.CN_iPhone[0])}${r.time.CN_iPhone[1] ? `&nbsp;&nbsp;(${format(r.time.CN_iPhone[1])})` : ''}</td>
          <td>${r.developer}</td>
          <td>
            <span class="bold">${r.state === 'done' ? 'Done' : 'Todo'}</span>
            <div class="${r.state === 'done' ? '' : 'red'}">${r.comments.map((c, i) => `${i + 1}. ${c}`).join('<br>')}</div>
          </td>
      </tr>`;

      return rowHtml;
  });

  tbody.innerHTML = rowsHtml.join('');
  table.appendChild(tbody);
}

renderTable('SSW', data);
