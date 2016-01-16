javac -cp ${HADOOP_HOME}/share/hadoop/common/*:${HADOOP_HOME}/share/hadoop/mapreduce/*:${HADOOP_HOME}/share/hadoop/common/lib/*:${HADOOP_HOME}/share/hadoop/hdfs/*:${HADOOP_HOME}/share/hadoop/tools/*:${HADOOP_HOME}/share/hadoop/yarn/*:${HADOOP_HOME}/share/hadoop/httpfs/*:${HADOOP_HOME}/programs/javacv-bin/javacv.jar:${HADOOP_HOME}/programs/javacv-bin/javacpp.jar project.java

hdfs dfs -rm -r /user/hduser/output/SequencialFile/result
jar -cvf project.jar *.class
#hdfs dfs -rm -r /user/gauravk/output/SequencialFile
#hdfs dfs -mkdir /user/gauravk/output/SequencialFile
#hadoop jar my_jar.jar classname -libjars JTS.jar inputFiles outputFiles
hadoop jar ${HADOOP_HOME}/programs/project.jar project -libjars ${HADOOP_HOME}/programs/javacv-bin/javacv.jar /user/hduser/output/SequencialFile/part-r-00000  /user/hduser/output/SequencialFile/result
