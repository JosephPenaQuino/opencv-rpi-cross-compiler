FROM josephpena/rpicv4:v1.0.0
ENV PKG_CONFIG_PATH=/usr/lib/arm-linux-gnueabihf/pkgconfig:/usr/share/pkgconfig
ENTRYPOINT ["arm-linux-gnueabihf-g++", "-o", "/project/bin/main",\
"-I/opt/opencv-4.1.0/include/opencv4", "-L/opt/opencv-4.1.0/lib",\
"-lopencv_aruco", "-lopencv_bgsegm", "-lopencv_bioinspired",\
"-lopencv_calib3d",\
"-lopencv_ccalib", "-lopencv_core", "-lopencv_datasets",\
"-lopencv_dnn_objdetect", "-lopencv_dnn", "-lopencv_dpm", "-lopencv_face",\
"-lopencv_features2d", "-lopencv_flann", "-lopencv_fuzzy", "-lopencv_gapi",\
"-lopencv_hfs", "-lopencv_highgui", "-lopencv_imgcodecs", "-lopencv_img_hash",\
"-lopencv_imgproc", "-lopencv_line_descriptor", "-lopencv_ml",\
"-lopencv_objdetect", "-lopencv_optflow", "-lopencv_phase_unwrapping",\
"-lopencv_photo", "-lopencv_plot", "-lopencv_quality", "-lopencv_reg",\
"-lopencv_rgbd", "-lopencv_saliency", "-lopencv_shape", "-lopencv_stereo",\
"-lopencv_stitching", "-lopencv_structured_light", "-lopencv_superres",\
"-lopencv_surface_matching", "-lopencv_text", "-lopencv_tracking",\
"-lopencv_videoio", "-lopencv_video", "-lopencv_videostab",\
"-lopencv_xfeatures2d", "-lopencv_ximgproc", "-lopencv_xobjdetect",\
"-lopencv_xphoto"]

CMD ["/project/src/main.cpp"]