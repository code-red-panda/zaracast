class Show {
  const Show({
    required this.id,
    required this.name,
    this.image = '',
  });

  final int id;
  final String name;
  final String image;
}

const shows = <Show>[
  Show(
    id: 1,
    name: 'Darknet Diaries',
    image:
        'https://imgs.search.brave.com/wEefazznPb5QoGAY4vMGKmo9jSRsG1AeFoWj-qCXMsA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NTF2MVlQZUhrT0wu/anBn',
  ),
  Show(
    id: 2,
    name: 'The Daily',
    image:
        'https://imgs.search.brave.com/9fb9TGnUNhbbNepzqei5PKkpoDtqpwyGyh3L9cZG5DA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1Qk0yVmpaak01/TjJVdE9XVmtaaTAw/Wm1JMkxUZ3paV1l0/TXpsbU1EWTJZMkUx/TTJReVhrRXlYa0Zx/Y0djQC5qcGc',
  ),
  Show(
    id: 3,
    name: 'Hacked',
    image:
        'https://imgs.search.brave.com/G-lrXRxbngYd2ixb2vR704s4mbICNXTEcWPj2ycWRBU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWdh/cGhvbmUuaW1naXgu/bmV0L3BvZGNhc3Rz/LzBjNzZkYjIwLTIw/NjEtMTFlYS05NmZm/LTAzM2QxNzE3OGRi/ZC9pbWFnZS91cGxv/YWRzXzJGMTU3OTI5/ODE4NjM0MS1vaXYy/ZTh4c2djLTE0YjQ2/NmUzM2UxODA4NTUx/NGMwMmY1MjU2ZTll/MzA3XzJGSGFja2Vk/KzMwMDB4MzAwMC5w/bmc_aXhsaWI9cmFp/bHMtNC4zLjEmbWF4/LXc9MzAwMCZtYXgt/aD0zMDAwJmZpdD1j/cm9wJmF1dG89Zm9y/bWF0LGNvbXByZXNz',
  ),
  Show(
    id: 4,
    name: 'Hamish & Andy',
    image:
        'https://imgs.search.brave.com/AnNrgRoIkpC8CMS5jSpT728fRj9OV8GpY0CMzdm1IFY/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/ZG1wLWNhdGFsb2ct/aW1hZ2VzLXByb2Qv/aW1hZ2VzL2YyM2Jh/ZTQ3LWNkOTgtNDc1/ZC1hZjE5LWM3MTgy/ZDdhMjFhMy9mMjNi/YWU0Ny1jZDk4LTQ3/NWQtYWYxOS1jNzE4/MmQ3YTIxYTMtLTE3/NjA2MDU3NzEuX1NY/NTc2X1NZNTc2X0JM/MF9RTDEwMF8uanBn',
  ),
  Show(
    id: 5,
    name: 'The Joe Rogan Experience',
    image:
        'https://imgs.search.brave.com/N1lgkkDJbWvxuVOQKlGqU_4NQkS7j4Oexkw7i77hII4/rs:fit:860:0:0:0/g:ce/aHR0cDovL3N0YXRp/Yy5saWJzeW4uY29t/L3AvYXNzZXRzLzcv/MS9mLzMvNzFmMzAx/NGUxNGVmMjcyMi9K/UkVpVHVuZXNJbWFn/ZTIuanBn',
  ),
  Show(
    id: 6,
    name: 'Linux Unplugged',
    image:
        'https://imgs.search.brave.com/Tt5AE3zXFOBd9vQFXEqbagteR8Cq5q6XFHjq93MbAqk/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWd2/Mi0yLWYuc2NyaWJk/YXNzZXRzLmNvbS9p/bWcvd29yZF9kb2N1/bWVudC80MTQxMTQ0/NjUvb3JpZ2luYWwv/MjE2eDIxNi81Mjcw/NjVjZTRjLzE1NjEx/NTIwMzQ_dj0x',
  ),
  Show(
    id: 7,
    name: 'Axe Of The Blood God',
    image:
        'https://imgs.search.brave.com/GGyzIsh2akso1fYYWfVDbVc8iWEBHETyltDj3CD7dz8/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMxLnNyY2RuLmNv/bS93b3JkcHJlc3Mv/d3AtY29udGVudC91/cGxvYWRzLzIwMjEv/MDIvQmVzdC1WaWRl/by1HYW1lLVBvZGNh/c3QtQXhlLU9mLVRo/ZS1CbG9vZC1Hb2Qu/anBn',
  ),
  Show(
    id: 8,
    name: 'Crime Junkie',
    image:
        'https://imgs.search.brave.com/gNEo5THNujrBnfs-AnMyuokD0WC1R1knfPKyotgo2dw/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL1Mv/ZG1wLWNhdGFsb2ct/aW1hZ2VzLXByb2Qv/aW1hZ2VzL2Q2ZTM5/NDZlLTZiM2YtNDhk/Yy1hM2FlLWZkYzdj/OWQ2OTlmMC9mNjE1/MDI4Ny03NjY2LTRl/ZmMtOTFlOS0yNDYy/NTAyNzVmOWMtLTE5/OTMzNzI1MTEuX1NY/NTc2X1NZNTc2X0JM/MF9RTDEwMF8uanBn',
  ),
];
