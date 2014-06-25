db.runCommand({addshard:"rs1/192.168.1.12:10011,192.168.1.12:10012,192.168.1.12:10013"})
db.runCommand({addshard:"rs2/192.168.1.12:10021,192.168.1.12:10022,192.168.1.12:10023"})
//切分数据库和集合：
db.runCommand({"enablesharding" : "userdata"})
db.runCommand({"shardcollection" : "userdata.info", "key" : {"userid": 1}})