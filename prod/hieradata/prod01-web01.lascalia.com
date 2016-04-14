---
dns_servers:
  - 10.1.1.10

users:
  testuser:
    home: '/home/testuser'
