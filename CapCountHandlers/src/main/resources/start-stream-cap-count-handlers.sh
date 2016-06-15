clear
export PATH=/home/ec2-user/jdk/bin:$PATH:$HOME/bin
export JAVA_HOME=/home/ec2-user/jdk

/cakeapps/spark/bin/spark-submit --deploy-mode client --supervise --conf spark.root.logger=ALL,FILE --driver-class-path /cakeapps/cap-count-handlers/cake-jars/spark-core-2.2.jar:/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-core-1.10.16.jar:/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-s3-1.10.16.jar:/cakeapps/cap-count-handlers/cake-jars/hadoop-aws-2.6.0.jar:/cakeapps/cap-count-handlers/cake-jars/jetty-server-9.0.2.v20130417.jar:/cakeapps/cap-count-handlers/cake-jars/jetty-util-9.0.2.v20130417.jar:/cakeapps/cap-count-handlers/cake-jars/jetty-http-9.0.2.v20130417.jar:/cakeapps/cap-count-handlers/cake-jars/jetty-io-9.0.2.v20130417.jar:/cakeapps/cap-count-handlers/cake-jars/spark-csv_2.11-1.2.0.jar:/cakeapps/cap-count-handlers/cake-jars/commons-csv-1.1.jar:/cakeapps/cap-count-handlers/cake-jars/jtds-1.3.1.jar:/cakeapps/cap-count-handlers/cake-jars/joda-time-2.8.1.jar:/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-kinesis-1.10.16.jar:/cakeapps/cap-count-handlers/cake-jars/amazon-kinesis-client-1.4.0.jar:/cakeapps/cap-count-handlers/cake-jars/spark-streaming-kinesis-asl_2.10-1.5.1.jar:/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-dynamodb-1.10.16.jar:/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-cloudwatch-1.10.16.jar:/cakeapps/cap-count-handlers/cake-jars/cassandra-driver-core-2.1.8.jar:/cakeapps/cap-count-handlers/cake-jars/guava-14.0.1_2.jar:/cakeapps/cap-count-handlers/cake-jars/HdrHistogram-2.1.4.jar:/cakeapps/cap-count-handlers/cake-jars/lz4-1.3.0.jar  --jars /cakeapps/cap-count-handlers/cake-jars/spark-core-2.2.jar,/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-core-1.10.16.jar,/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-s3-1.10.16.jar,/cakeapps/cap-count-handlers/cake-jars/hadoop-aws-2.6.0.jar,/cakeapps/cap-count-handlers/cake-jars/jetty-server-9.0.2.v20130417.jar,/cakeapps/cap-count-handlers/cake-jars/jetty-util-9.0.2.v20130417.jar,/cakeapps/cap-count-handlers/cake-jars/jetty-http-9.0.2.v20130417.jar,/cakeapps/cap-count-handlers/cake-jars/jetty-io-9.0.2.v20130417.jar,/cakeapps/cap-count-handlers/cake-jars/spark-csv_2.11-1.2.0.jar,/cakeapps/cap-count-handlers/cake-jars/commons-csv-1.1.jar,/cakeapps/cap-count-handlers/cake-jars/jtds-1.3.1.jar,/cakeapps/cap-count-handlers/cake-jars/joda-time-2.8.1.jar,/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-kinesis-1.10.16.jar,/cakeapps/cap-count-handlers/cake-jars/amazon-kinesis-client-1.4.0.jar,/cakeapps/cap-count-handlers/cake-jars/spark-streaming-kinesis-asl_2.10-1.5.1.jar,/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-dynamodb-1.10.16.jar,/cakeapps/cap-count-handlers/cake-jars/aws-java-sdk-cloudwatch-1.10.16.jar,/cakeapps/cap-count-handlers/cake-jars/cassandra-driver-core-2.1.8.jar,/cakeapps/cap-count-handlers/cake-jars/guava-14.0.1_2.jar,/cakeapps/cap-count-handlers/cake-jars/HdrHistogram-2.1.4.jar,/cakeapps/cap-count-handlers/cake-jars/lz4-1.3.0.jar --properties-file /cakeapps/cap-count-handlers/cap-stream-count-handlers.conf.qa.sparkMaster --class com.getcake.capcount.services.CapCountStreamHandler /cakeapps/cap-count-handlers/stream-cap-count-handlers.jar /cakeapps/cap-count-handlers/cap-stream-count-handlers.conf.qa.sparkMaster /cakeapps/cap-count-handlers/client-meta-data.conf > stream-cap-count-handlers.log
