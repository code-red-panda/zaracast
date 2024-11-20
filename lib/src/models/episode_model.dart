class Episode {
  const Episode({
    required this.id,
    required this.name,
    required this.showId,
    this.date = 0,
    this.duration = 0,
    this.durationRemaining = 0,
    this.image = '',
    this.isPlayed = false,
    this.isSaved = false,
    this.sort = 0,
  });

  final int id;
  final String name;
  final int date;
  final int duration;
  final int durationRemaining;
  final String image;
  final bool isPlayed;
  final bool isSaved;
  final int showId;
  final int sort;
}

var episodes = <Episode>[
  Episode(
    id: 1,
    name: 'Chris Rock',
    date: 1730359111,
    duration: 7269,
    durationRemaining: 4985,
    image: 'https://darknetdiaries.com/imgs/shark.jpg',
    isSaved: true,
    showId: 1,
    sort: 4,
  ),
  Episode(
    id: 2,
    name: 'Elon Musk',
    date: 1729311511,
    duration: 7269,
    durationRemaining: 4985,
    image:
        'https://imgs.search.brave.com/08SO6iUVyDtXk1ueHR6bDpD1kW6F2cQ8XT0ZjkD4Tdo/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pMS5z/bmRjZG4uY29tL2Fy/dHdvcmtzLWJEV2pi/RHJFeGZUajV6MjAt/c3dGcmR3LXQ1MDB4/NTAwLmpwZ',
    showId: 5,
  ),
  Episode(
    id: 3,
    name: 'All The Voting Things',
    date: 1730339111,
    duration: 7269,
    durationRemaining: 4985,
    image:
        'https://imgs.search.brave.com/9fb9TGnUNhbbNepzqei5PKkpoDtqpwyGyh3L9cZG5DA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk0yVmpaak01/TjJVdE9XVmtaaTAw/Wm1JMkxUZ3paV1l0/TXpsbU1EWTJZMkUx/TTJReVhrRXlYa0Zx/Y0djQC5qcGc',
    isPlayed: true,
    showId: 1,//showId: 2,
    sort: 1,
  ),
  Episode(
    id: 4,
    name: 'September The Elember',
    date: 1730359111,
    duration: 7269,
    durationRemaining: 4985,
    image:
        'https://imgs.search.brave.com/9fb9TGnUNhbbNepzqei5PKkpoDtqpwyGyh3L9cZG5DA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk0yVmpaak01/TjJVdE9XVmtaaTAw/Wm1JMkxUZ3paV1l0/TXpsbU1EWTJZMkUx/TTJReVhrRXlYa0Zx/Y0djQC5qcGc',
    showId: 1,//showId: 2,
    sort: 7,
  ),
  Episode(
    id: 5,
    name: 'MURDERED: Jessica Chambers',
    date: 1727842711,
    duration: 7269,
    durationRemaining: 4985,
    image:
        'https://imgs.search.brave.com/0eN0WnCrk7QJC-ALFvlyu55YFHIMIcTIVFQ94CPQXlE/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/ZG1wLWNhdGFsb2ct/aW1hZ2VzLXByb2Qv/aW1hZ2VzL2Q2ZTM5/NDZlLTZiM2YtNDhk/Yy1hM2FlLWZkYzdj/OWQ2OTlmMC81NTg2/Njc4Yy1iZDdhLTQx/M2QtYTZiOS0xZWQy/MjczNTAxOWYtMjAw/NzA0NDExMi5fU1g1/NzZfU1k1NzZfQkww/X1FMMTAwXy5qcGc',
    isSaved: true,
    showId: 1,//showId: 8,
    sort: 2,
  ),
  Episode(
    id: 6,
    name: 'The Boys Do Something So Outrageous It Will Knock Your Boots Off',
    date: 1730531911,
    duration: 7269,
    durationRemaining: 4985,
    image:
        'https://imgs.search.brave.com/AnNrgRoIkpC8CMS5jSpT728fRj9OV8GpY0CMzdm1IFY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/ZG1wLWNhdGFsb2ct/aW1hZ2VzLXByb2Qv/aW1hZ2VzL2YyM2Jh/ZTQ3LWNkOTgtNDc1/ZC1hZjE5LWM3MTgy/ZDdhMjFhMy9mMjNi/YWU0Ny1jZDk4LTQ3/NWQtYWYxOS1jNzE4/MmQ3YTIxYTMtLTE3/NjA2MDU3NzEuX1NY/NTc2X1NZNTc2X0JM/MF9RTDEwMF8uanBn',
    showId: 1,//showId: 4,
    sort: 6,
  ),
  Episode(
    id: 7,
    name: 'Lisa',
    date: 1731291511,
    duration: 7269,
    durationRemaining: 0,
    image: 'https://darknetdiaries.com/imgs/lisa.jpg',
    isPlayed: true,
    isSaved: true,
    showId: 1,//showId: 1,
    sort: 5,
  ),
  Episode(
    id: 8,
    name: 'Donald Trump',
    date: 1731118711,
    duration: 7269,
    durationRemaining: 4985,
    image:
        'https://imgs.search.brave.com/7yc80_o7HmJqzbdnZ6SUnSMo3t_MXATQQatDVh9GPso/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wb2Rj/YXN0LW5vdGVzLXVw/bG9hZHMuaW1naXgu/bmV0LzIwMjQvMTAv/MjYwMDI5MjQvZG9u/YWxkLXRydW1wLmpw/ZWc_dz02NDAmaD02/NDAmYXV0bz1mb3Jt/YXQsY29tcHJlc3M',
    showId: 1,//showId: 5,
    sort: 3,
  ),
];
