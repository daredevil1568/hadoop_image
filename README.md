1. capture_image_from_video.cpp take a video as input and generats images from video frame at fixed interval . This will generate a lots of input image for our project
2. copy image folder to hdfs
3. generate a inputpath.txt file which will contain path for each image
4. BinaryFileToHadoopSequencialFile.java conver each image into hadoop sequencial file. Output will be like image_name Image(in Byte Form)
5. we can run this program using runBinary.sh
6. project.java program read the sequencial file generated in previous step and conver it into BufferedImage and again into IplImage and detect face in it and again conver image into byte form and write back
7. We can run this program using runproject.sh

8. javacv.jar is a jar file required to use javacv in your program
9. facedetection.java is a program which uses javacv library for face detection . The input to the program is the image folder and it stores the generated image in another folder. Few of the output generated is stored in output folder
