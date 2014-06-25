config = {_id: 'rs2', members: [{_id: 0, host: '192.168.1.12:10021'},{_id: 1, host: '192.168.1.12:10022'},{_id: 2, host: '192.168.1.12:10023',arbiterOnly:true}]}
rs.initiate(config)
rs.conf()
rs.status()
