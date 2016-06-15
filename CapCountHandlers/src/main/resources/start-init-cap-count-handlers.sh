clear
export PATH=/home/ec2-user/jdk/bin:$PATH:$HOME/bin
export JAVA_HOME=/home/ec2-user/jdk

/cakeapps/spark/bin/spark-submit  --conf spark.root.logger=ALL,FILE --jars ./cake-jars/spark-core-2.2.jar,./cake-jars/aws-java-sdk-core-1.10.16.jar,./cake-jars/aws-java-sdk-s3-1.10.16.jar,./cake-jars/hadoop-aws-2.6.0.jar,./cake-jars/jetty-server-9.0.2.v20130417.jar,./cake-jars/jetty-util-9.0.2.v20130417.jar,./cake-jars/jetty-http-9.0.2.v20130417.jar,./cake-jars/jetty-io-9.0.2.v20130417.jar,./cake-jars/spark-csv_2.11-1.2.0.jar,./cake-jars/commons-csv-1.1.jar,./cake-jars/jtds-1.3.1.jar,./cake-jars/joda-time-2.8.1.jar,./cake-jars/aws-java-sdk-kinesis-1.10.16.jar,./cake-jars/amazon-kinesis-client-1.4.0.jar,./cake-jars/spark-streaming-kinesis-asl_2.10-1.5.1.jar,./cake-jars/aws-java-sdk-dynamodb-1.10.16.jar,./cake-jars/aws-java-sdk-cloudwatch-1.10.16.jar,./cake-jars/cassandra-driver-core-2.1.8.jar,./cake-jars/guava-14.0.1_2.jar,./cake-jars/HdrHistogram-2.1.4.jar,./cake-jars/lz4-1.3.0.jar  --properties-file cap-init-req-count-handlers.conf.qa.sparkMaster --class com.getcake.capcount.services.CapCountInitializeRequestHandler /cakeapps/cap-count-handlers/init-cap-count-handlers.jar cap-init-req-count-handlers.conf.qa.sparkMaster client-meta-data.conf > init-cap-count-handlers.log