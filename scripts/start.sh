#!/bin/bash

pkill -f apollo
java -Dfile.encoding=UTF-8 -jar apollo-configservice/target/apollo-configservice-2.4.0-SNAPSHOT.jar &
java -Dfile.encoding=UTF-8 -jar apollo-adminservice/target/apollo-adminservice-2.4.0-SNAPSHOT.jar &
java -Dfile.encoding=UTF-8 -jar apollo-portal/target/apollo-portal-2.4.0-SNAPSHOT.jar &

wait  # 等待所有进程完成