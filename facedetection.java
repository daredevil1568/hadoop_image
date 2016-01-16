import com.googlecode.javacv.cpp.opencv_core.IplImage;
import static com.googlecode.javacv.cpp.opencv_core.*;
import static com.googlecode.javacv.cpp.opencv_highgui.*;
import static com.googlecode.javacv.cpp.opencv_objdetect.*;
import java.io.*; 
public class facedetection{
 
	public static final String XML_FILE = 
			"haarcascade_frontalface_default.xml";
 
	public static void main(String[] args){
File folder = new File("/home/gaurav/Pictures");
File[] listOfFiles = folder.listFiles();

    for (int i = 0; i < listOfFiles.length; i++) {
      if (listOfFiles[i].isFile()) {
        System.out.println(listOfFiles[i].getName());
 
		IplImage img = cvLoadImage("/home/gaurav/Pictures/"+listOfFiles[i].getName());		
		detect(img);	
}

}	
	}	
 
	public static void detect(IplImage src){
long start=System.currentTimeMillis();
 
		CvHaarClassifierCascade cascade = new 
				CvHaarClassifierCascade(cvLoad(XML_FILE));
		CvMemStorage storage = CvMemStorage.create();
		CvSeq sign = cvHaarDetectObjects(
				src,
				cascade,
				storage,
				1.5,
				3,
				CV_HAAR_DO_CANNY_PRUNING);
 
		cvClearMemStorage(storage);
 
		int total_Faces = sign.total();	

 
		for(int i = 0; i < total_Faces; i++){
			CvRect r = new CvRect(cvGetSeqElem(sign, i));
			cvRectangle (
					src,
					cvPoint(r.x(), r.y()),
					cvPoint(r.width() + r.x(), r.height() + r.y()),
					CvScalar.RED,
					2,
					CV_AA,
					0);
 
		}
long end=System.currentTimeMillis();	
 		
		cvSaveImage("/home/gaurav/imageprocessing/javacv-bin/output/"+String.valueOf(start)+".JPG", src);
System.out.println(end-start);
		cvWaitKey(0);
 
	}			
}
