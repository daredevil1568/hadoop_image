javac -cp ${HADOOP_HOME}/share/hadoop/common/*:${HADOOP_HOME}/share/hadoop/mapreduce/*:${HADOOP_HOME}/share/hadoop/common/lib/*:${HADOOP_HOME}/share/hadoop/hdfs/*:${HADOOP_HOME}/share/hadoop/tools/*:${HADOOP_HOME}/share/hadoop/yarn/*:${HADOOP_HOME}/share/hadoop/httpfs BinaryFilesToHadoopSequenceFile.java

jar -cvf BinaryFilesToHadoopSequenceFile.jar *.class
hdfs dfs -rm -r /user/hduser/output/SequencialFile
#hdfs dfs -mkdir /user/hduser/output/SequencialFile
hadoop jar ${HADOOP_HOME}/programs/BinaryFilesToHadoopSequenceFile.jar BinaryFilesToHadoopSequenceFile /user/hduser/input/inputpath.txt  /user/hduser/output/SequencialFile
