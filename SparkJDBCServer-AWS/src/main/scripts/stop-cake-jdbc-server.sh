/home/ec2-user/spark-1.4.0-bin-hadoop2.6/bin/spark-submit --jars ./cake-jars/guava-11.0.2.jar,./cake-jars/aws-java-sdk-core-1.10.16.jar,./cake-jars/aws-java-sdk-s3-1.10.16.jar,./cake-jars/hadoop-aws-2.6.0.jar --properties-file cake-spark-jdbc-server.conf.qa.localfiles.sparkMaster  --class com.getcake.sparkjdbc.SparkJDBCServer ./cake-spark-jdbc-server-09-09-15.jar cake-spark-jdbc-server.conf.qa.localfiles.sparkMaster &
/home/ec2-user/spark-1.4.0-bin-hadoop2.6/sbin/stop-slave.sh spark://ip-10-128-1-78:7077 &
/home/ec2-user/spark-1.4.0-bin-hadoop2.6/sbin/stop-master.sh &
