config = {_id: 'rs1', members: [{_id: 0, host: '192.168.1.12:10011'},{_id: 1, host: '192.168.1.12:10012'},{_id: 2, host: '192.168.1.12:10013',arbiterOnly:true}]}
rs.initiate(config)
rs.conf()
rs.status()
