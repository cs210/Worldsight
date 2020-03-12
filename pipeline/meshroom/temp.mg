{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2019.2.0",
        "fileVersion": "1.1",
        "nodesVersions": {
            "Meshing": "3.0",
            "ImageMatching": "1.1",
            "CameraInit": "2.0",
            "DepthMapFilter": "3.0",
            "StructureFromMotion": "2.0",
            "Publish": "1.2",
            "FeatureMatching": "2.0",
            "MeshFiltering": "2.0",
            "FeatureExtraction": "1.1",
            "Texturing": "5.0",
            "DepthMap": "2.0",
            "PrepareDenseScene": "3.0"
        }
    },
    "graph": {
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 97,
                "split": 1
            },
            "uids": {
                "0": "546b9608d40daab08ffc29fce53ffeda3ef51093"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 3815300,
                        "poseId": 3815300,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3766.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:51\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.85611\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:51\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:51\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"482\", \"Exif:SubsecTimeOriginal\": \"482\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.5603\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"183.363\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"183.363\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.99\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 51.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 4779001,
                        "poseId": 4779001,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3420.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:55\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.12976\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:55\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:55\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.18003\", \"Exif:SubsecTimeDigitized\": \"735\", \"Exif:SubsecTimeOriginal\": \"735\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00172414\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.8111\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"270.291\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"270.291\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 55.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 10650013,
                        "poseId": 10650013,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8820.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:39\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.60786\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:39\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:39\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.27962\", \"Exif:SubsecTimeDigitized\": \"733\", \"Exif:SubsecTimeOriginal\": \"733\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00160772\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.1203\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"269.439\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"269.439\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 39.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 57150008,
                        "poseId": 57150008,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_0103.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:21\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.77724\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:21\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:21\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.49174\", \"Exif:SubsecTimeDigitized\": \"557\", \"Exif:SubsecTimeOriginal\": \"557\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00138889\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.065\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"123.275\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"123.275\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.64\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 21.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 75806368,
                        "poseId": 75806368,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7743.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:32\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.99074\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:32\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:32\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"773\", \"Exif:SubsecTimeOriginal\": \"773\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.514\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"270.683\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"270.683\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.6\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.32\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 32.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 97179437,
                        "poseId": 97179437,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7777.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:49\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.6693\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:49\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:49\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.24332\", \"Exif:SubsecTimeDigitized\": \"358\", \"Exif:SubsecTimeOriginal\": \"358\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00165017\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0022\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"274.8\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"274.8\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 49.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 101161222,
                        "poseId": 101161222,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5439.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:09\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.50866\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:09\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:09\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.810175\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1372\", \"Exif:SubsecTimeDigitized\": \"506\", \"Exif:SubsecTimeOriginal\": \"506\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000888099\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.39\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"10.2599\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"10.2599\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.56\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 9.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 105645916,
                        "poseId": 105645916,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4191.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:47\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.59295\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:47\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:47\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.24332\", \"Exif:SubsecTimeDigitized\": \"362\", \"Exif:SubsecTimeOriginal\": \"362\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00165017\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0308\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"293.813\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"293.813\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 47.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 109047774,
                        "poseId": 109047774,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3230.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:12\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.74019\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:12\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:12\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.53603\", \"Exif:SubsecTimeDigitized\": \"382\", \"Exif:SubsecTimeOriginal\": \"382\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00134771\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.9032\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"250.004\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"250.004\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.48\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.17\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 12.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 131494093,
                        "poseId": 131494093,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4637.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:10\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.43023\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:10\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:10\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.810175\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1372\", \"Exif:SubsecTimeDigitized\": \"854\", \"Exif:SubsecTimeOriginal\": \"854\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000888099\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.3566\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"19.1185\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"19.1185\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.56\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 10.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 135626175,
                        "poseId": 135626175,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4939.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:02\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.30458\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:02\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:02\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.11219\", \"Exif:SubsecTimeDigitized\": \"068\", \"Exif:SubsecTimeOriginal\": \"068\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00180832\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.606\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"245.905\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"245.905\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 1.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 165450802,
                        "poseId": 165450802,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2993.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:12\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.63292\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:12\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:12\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.810175\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1372\", \"Exif:SubsecTimeDigitized\": \"059\", \"Exif:SubsecTimeOriginal\": \"059\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000888099\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.3282\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"18.7896\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"18.7896\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.56\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 11.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 182961641,
                        "poseId": 182961641,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1690.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:57\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.39824\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:57\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:57\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.15431\", \"Exif:SubsecTimeDigitized\": \"859\", \"Exif:SubsecTimeOriginal\": \"859\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00175439\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.4149\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"269.806\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"269.806\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 57.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 205653641,
                        "poseId": 205653641,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2197.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:12\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.32932\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:12\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:12\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"385\", \"Exif:SubsecTimeOriginal\": \"385\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7608\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"65.268\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"65.268\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 12.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 210759998,
                        "poseId": 210759998,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4619.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:34\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.78189\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:34\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:34\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.727\", \"Exif:SubsecTimeDigitized\": \"638\", \"Exif:SubsecTimeOriginal\": \"638\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00118064\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.9499\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"250.901\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"250.901\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.45\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.1\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.74\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 34.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 231371795,
                        "poseId": 231371795,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4701.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:45\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.71325\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:45\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:45\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.24332\", \"Exif:SubsecTimeDigitized\": \"197\", \"Exif:SubsecTimeOriginal\": \"197\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00165017\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0793\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"282.738\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"282.738\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 44.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 257368049,
                        "poseId": 257368049,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_0034.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:49\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.39433\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:49\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:49\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.186219\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"323\", \"Exif:SubsecTimeOriginal\": \"323\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.6488\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"223.768\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"223.768\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 49.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 284487276,
                        "poseId": 284487276,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2171.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:55\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.69456\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:55\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:55\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.186219\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"103\", \"Exif:SubsecTimeOriginal\": \"103\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0016\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"135.023\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"135.023\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 54.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 297808245,
                        "poseId": 297808245,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3481.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:48\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.60855\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:48\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:48\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.24332\", \"Exif:SubsecTimeDigitized\": \"391\", \"Exif:SubsecTimeOriginal\": \"391\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00165017\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0098\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"278.882\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"278.882\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 48.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 298064953,
                        "poseId": 298064953,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2008.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:56\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.00066\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:56\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:56\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.186219\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"649\", \"Exif:SubsecTimeOriginal\": \"649\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.8886\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"107.578\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"107.578\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.9\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 56.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 329994031,
                        "poseId": 329994031,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9430.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:09\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.31453\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:09\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:09\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"276\", \"Exif:SubsecTimeOriginal\": \"276\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.9789\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"67.2684\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"67.2684\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 9.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 366077173,
                        "poseId": 366077173,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5840.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:27\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"10.0174\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:27\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:27\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.4599\", \"Exif:SubsecTimeDigitized\": \"834\", \"Exif:SubsecTimeOriginal\": \"834\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000710227\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.5841\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"107.687\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"107.687\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 27.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 370449394,
                        "poseId": 370449394,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5539.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:29\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.93378\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:29\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:29\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"920\", \"Exif:SubsecTimeOriginal\": \"920\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.6847\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"296.248\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"296.248\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.6\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.35\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 29.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 398197954,
                        "poseId": 398197954,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4276 2.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:50\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.40505\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:50\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:50\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.186219\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"656\", \"Exif:SubsecTimeOriginal\": \"656\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.1833\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"199.27\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"199.27\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 50.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 421335274,
                        "poseId": 421335274,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3962.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:54\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.74853\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:54\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:54\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"979\", \"Exif:SubsecTimeOriginal\": \"979\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.0902\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"146.024\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"146.024\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.6\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.21\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 54.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 448051089,
                        "poseId": 448051089,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7846.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:58\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.99597\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:58\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:58\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"596\", \"Exif:SubsecTimeOriginal\": \"596\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0094\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"119.556\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"119.556\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.54\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 58.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 504262974,
                        "poseId": 504262974,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7088.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:22\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.30796\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:22\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:22\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.727\", \"Exif:SubsecTimeDigitized\": \"953\", \"Exif:SubsecTimeOriginal\": \"953\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00118064\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.0805\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"105.959\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"105.959\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 22.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 507265677,
                        "poseId": 507265677,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9089.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:42\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.4337\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:42\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:42\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"8.9694\", \"Exif:SubsecTimeDigitized\": \"306\", \"Exif:SubsecTimeOriginal\": \"306\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00199601\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.5211\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"266.806\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"266.806\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.53\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.21\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 42.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 562012570,
                        "poseId": 562012570,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2798.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:04\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.74888\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:04\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:04\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"675\", \"Exif:SubsecTimeOriginal\": \"675\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7213\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"236.809\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"236.809\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.53\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.29\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 4.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 562410635,
                        "poseId": 562410635,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2483.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:49\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.82114\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:49\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:49\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"765\", \"Exif:SubsecTimeOriginal\": \"765\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.6093\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"202.698\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"202.698\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 49.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 599964401,
                        "poseId": 599964401,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9377.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:06\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.09997\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:06\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:06\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.727\", \"Exif:SubsecTimeDigitized\": \"048\", \"Exif:SubsecTimeOriginal\": \"048\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00118064\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.882\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"236.898\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"236.898\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.53\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.15\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 5.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 671810348,
                        "poseId": 671810348,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7579.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:41\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.40525\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:41\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:41\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.01494\", \"Exif:SubsecTimeDigitized\": \"006\", \"Exif:SubsecTimeOriginal\": \"006\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00193424\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.1796\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"262.113\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"262.113\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 40.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 685194435,
                        "poseId": 685194435,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2000.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:02\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.59027\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:02\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:02\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.810175\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1372\", \"Exif:SubsecTimeDigitized\": \"752\", \"Exif:SubsecTimeOriginal\": \"752\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000888099\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.8203\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"69.6019\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"69.6019\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.49\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.18\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 2.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 729286171,
                        "poseId": 729286171,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4591.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:28\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.7426\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:28\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:28\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.2609\", \"Exif:SubsecTimeDigitized\": \"933\", \"Exif:SubsecTimeOriginal\": \"933\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000814996\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.7218\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"113.552\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"113.552\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 28.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 749305715,
                        "poseId": 749305715,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1365.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:18\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.1514\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:18\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:18\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.0307\", \"Exif:SubsecTimeDigitized\": \"908\", \"Exif:SubsecTimeOriginal\": \"908\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00191205\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.9372\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"192.967\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"192.967\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.48\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 18.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 754258069,
                        "poseId": 754258069,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6439.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:07\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.4452\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:07\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:07\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.0398\", \"Exif:SubsecTimeDigitized\": \"914\", \"Exif:SubsecTimeOriginal\": \"914\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000949668\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.2821\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"256.977\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"256.977\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.53\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.18\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 7.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 777722127,
                        "poseId": 777722127,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5695.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:07\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.18222\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:07\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:07\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"071\", \"Exif:SubsecTimeOriginal\": \"071\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7525\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"75.6034\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"75.6034\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 6.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 780439715,
                        "poseId": 780439715,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1960.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:46\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.56924\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:46\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:46\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.24332\", \"Exif:SubsecTimeDigitized\": \"162\", \"Exif:SubsecTimeOriginal\": \"162\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00165017\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0796\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"279.539\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"279.539\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 45.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 801155699,
                        "poseId": 801155699,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2535.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:11\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.85134\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:11\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:11\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.67654\", \"Exif:SubsecTimeDigitized\": \"089\", \"Exif:SubsecTimeOriginal\": \"089\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00122249\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7791\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"256.208\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"256.208\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.2\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 10.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 838071166,
                        "poseId": 838071166,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4835.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:17\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.26017\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:17\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:17\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.15431\", \"Exif:SubsecTimeDigitized\": \"927\", \"Exif:SubsecTimeOriginal\": \"927\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00175439\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.2668\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"209.371\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"209.371\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.48\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.22\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 17.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 840347649,
                        "poseId": 840347649,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9792.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:23\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.0275\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:23\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:23\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"016\", \"Exif:SubsecTimeOriginal\": \"016\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.3452\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"339.348\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"339.348\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.23\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 22.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 844299210,
                        "poseId": 844299210,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1556.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:51\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.76377\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:51\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:51\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.47009\", \"Exif:SubsecTimeDigitized\": \"569\", \"Exif:SubsecTimeOriginal\": \"569\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00141044\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.9989\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"278.458\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"278.458\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 51.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 854104986,
                        "poseId": 854104986,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4720.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:35\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.31291\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:35\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:35\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.20706\", \"Exif:SubsecTimeDigitized\": \"916\", \"Exif:SubsecTimeOriginal\": \"916\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00169205\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.6938\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"278.088\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"278.088\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 35.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 869191359,
                        "poseId": 869191359,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4064.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:43\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.53457\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:43\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:43\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.5243\", \"Exif:SubsecTimeDigitized\": \"057\", \"Exif:SubsecTimeOriginal\": \"057\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.0013587\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7213\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"275.685\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"275.685\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 42.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 935398254,
                        "poseId": 935398254,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_0521.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:52\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.48811\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:52\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:52\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.186219\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"078\", \"Exif:SubsecTimeOriginal\": \"078\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.2224\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"180.189\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"180.189\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 51.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 956558340,
                        "poseId": 956558340,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2610.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:39\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.33691\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:39\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:39\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.20706\", \"Exif:SubsecTimeDigitized\": \"259\", \"Exif:SubsecTimeOriginal\": \"259\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00169205\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7303\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"292.356\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"292.356\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 38.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1036924804,
                        "poseId": 1036924804,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8917.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:01\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.14483\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:01\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:01\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"931\", \"Exif:SubsecTimeOriginal\": \"931\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0819\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"90.0149\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"90.0149\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.8\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 1.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1037657912,
                        "poseId": 1037657912,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6032.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:33\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.56644\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:33\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:33\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.39727\", \"Exif:SubsecTimeDigitized\": \"398\", \"Exif:SubsecTimeOriginal\": \"398\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00148368\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.6747\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"283.394\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"283.394\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 32.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1049802102,
                        "poseId": 1049802102,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6258.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:31\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.90444\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:31\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:31\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"173\", \"Exif:SubsecTimeOriginal\": \"173\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.448\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"283.075\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"283.075\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.61\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.32\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 30.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1064029251,
                        "poseId": 1064029251,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2792.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:22\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.87367\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:22\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:22\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.901968\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.2259\", \"Exif:SubsecTimeDigitized\": \"524\", \"Exif:SubsecTimeOriginal\": \"524\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000834725\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.4874\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"299.88\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"299.88\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.6\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.42\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 22.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1074840441,
                        "poseId": 1074840441,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5470.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:38\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.82354\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:38\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:38\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.36647\", \"Exif:SubsecTimeDigitized\": \"686\", \"Exif:SubsecTimeOriginal\": \"686\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00151515\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.1082\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"270.821\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"270.821\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 38.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1103489525,
                        "poseId": 1103489525,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9897.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:04\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.27331\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:04\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:04\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"229\", \"Exif:SubsecTimeOriginal\": \"229\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.4932\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"76.2265\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"76.2265\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 4.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1108700263,
                        "poseId": 1108700263,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8202.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:54\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.32047\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:54\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:54\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.25209\", \"Exif:SubsecTimeDigitized\": \"540\", \"Exif:SubsecTimeOriginal\": \"540\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00163934\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.8225\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"266.842\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"266.842\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 54.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1115641471,
                        "poseId": 1115641471,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7439.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:20\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.15972\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:20\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:20\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.901968\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.2259\", \"Exif:SubsecTimeDigitized\": \"804\", \"Exif:SubsecTimeOriginal\": \"804\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000834725\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.2453\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"316.836\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"316.836\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.42\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 20.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1128722851,
                        "poseId": 1128722851,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9388.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:36\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.25632\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:36\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:36\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.20706\", \"Exif:SubsecTimeDigitized\": \"897\", \"Exif:SubsecTimeOriginal\": \"897\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00169205\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.6913\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"270.762\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"270.762\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 36.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1135496744,
                        "poseId": 1135496744,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7219.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:27\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.0184\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:27\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:27\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"818\", \"Exif:SubsecTimeOriginal\": \"818\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.7752\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"312.872\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"312.872\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.56\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.31\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 27.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1142495873,
                        "poseId": 1142495873,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4090.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:56\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.40665\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:56\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:56\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.15431\", \"Exif:SubsecTimeDigitized\": \"729\", \"Exif:SubsecTimeOriginal\": \"729\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00175439\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.437\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"270.215\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"270.215\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.19\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 56.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1167515921,
                        "poseId": 1167515921,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8329.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:27\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.92388\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:27\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:27\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.780831\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1034\", \"Exif:SubsecTimeDigitized\": \"338\", \"Exif:SubsecTimeOriginal\": \"338\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000909091\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.5325\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"295.629\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"295.629\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.61\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 27.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1168980550,
                        "poseId": 1168980550,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8841.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:30\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.38945\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:30\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:30\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.90366\", \"Exif:SubsecTimeDigitized\": \"065\", \"Exif:SubsecTimeOriginal\": \"065\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00104384\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.456\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"117.244\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"117.244\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 29.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1249583509,
                        "poseId": 1249583509,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9441.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:05\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.70797\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:05\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:05\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.810175\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1372\", \"Exif:SubsecTimeDigitized\": \"327\", \"Exif:SubsecTimeOriginal\": \"327\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000888099\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.9605\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"63.4072\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"63.4072\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 5.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1252782871,
                        "poseId": 1252782871,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7460.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:19\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.50657\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:19\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:19\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.27962\", \"Exif:SubsecTimeDigitized\": \"921\", \"Exif:SubsecTimeOriginal\": \"921\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00160772\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.0327\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"165.735\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"165.735\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.48\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 19.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1252851242,
                        "poseId": 1252851242,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2195.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:38\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.31853\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:38\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:38\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.20706\", \"Exif:SubsecTimeDigitized\": \"128\", \"Exif:SubsecTimeOriginal\": \"128\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00169205\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7768\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"269.945\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"269.945\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 37.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1262183944,
                        "poseId": 1262183944,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1419.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:40\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.05737\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:40\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:40\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"957\", \"Exif:SubsecTimeOriginal\": \"957\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"84.752\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"268.146\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"268.146\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.45\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 40.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1270448124,
                        "poseId": 1270448124,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4681.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:59\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"7.67546\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:59\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:59\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"8.51847\", \"Exif:SubsecTimeDigitized\": \"407\", \"Exif:SubsecTimeOriginal\": \"407\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.0027248\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.592\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"269.021\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"269.021\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.16\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 59.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1302276759,
                        "poseId": 1302276759,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8964.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:13\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.75377\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:13\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:13\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.810175\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1372\", \"Exif:SubsecTimeDigitized\": \"531\", \"Exif:SubsecTimeOriginal\": \"531\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000888099\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.0991\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"10.4862\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"10.4862\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.6\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.23\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 13.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1323694397,
                        "poseId": 1323694397,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2983.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:46\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.85611\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:46\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:46\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"134\", \"Exif:SubsecTimeOriginal\": \"134\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.9941\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"226.375\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"226.375\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.19\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 45.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1328627009,
                        "poseId": 1328627009,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6925.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:40\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.66628\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:40\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:40\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.39727\", \"Exif:SubsecTimeDigitized\": \"416\", \"Exif:SubsecTimeOriginal\": \"416\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00148368\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7253\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"302.919\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"302.919\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 40.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1376886181,
                        "poseId": 1376886181,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4252.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:26\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.99708\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:26\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:26\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.4599\", \"Exif:SubsecTimeDigitized\": \"764\", \"Exif:SubsecTimeOriginal\": \"764\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000710227\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.4932\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"99.576\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"99.576\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 26.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1404118865,
                        "poseId": 1404118865,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4820.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:44\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.42081\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:44\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:44\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.07904\", \"Exif:SubsecTimeDigitized\": \"310\", \"Exif:SubsecTimeOriginal\": \"310\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00184843\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0793\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"275.186\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"275.186\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 44.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1441876077,
                        "poseId": 1441876077,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5437.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:43\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.75395\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:43\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:43\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.3866\", \"Exif:SubsecTimeDigitized\": \"505\", \"Exif:SubsecTimeOriginal\": \"505\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00149477\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.9424\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"257.712\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"257.712\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.21\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 43.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1477123058,
                        "poseId": 1477123058,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3761.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:47\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.74853\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:47\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:47\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"896\", \"Exif:SubsecTimeOriginal\": \"896\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.4183\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"216.246\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"216.246\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.28\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 47.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1521291296,
                        "poseId": 1521291296,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_9220.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:53\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.6421\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:53\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:53\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.59283\", \"Exif:SubsecTimeDigitized\": \"061\", \"Exif:SubsecTimeOriginal\": \"061\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00129534\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.994\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"251.256\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"251.256\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 52.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1536136407,
                        "poseId": 1536136407,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_0477.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:47\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.55706\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:47\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:47\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.186219\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"886\", \"Exif:SubsecTimeOriginal\": \"886\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.9585\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"235.654\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"235.654\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 47.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1625731560,
                        "poseId": 1625731560,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5067.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:56\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.91535\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:56\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:56\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"931\", \"Exif:SubsecTimeOriginal\": \"931\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.2509\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"135.169\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"135.169\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.54\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 56.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1627768268,
                        "poseId": 1627768268,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8146.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:41\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.71979\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:41\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:41\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.5243\", \"Exif:SubsecTimeDigitized\": \"812\", \"Exif:SubsecTimeOriginal\": \"812\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.0013587\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.7215\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"292\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"292\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 41.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1659232813,
                        "poseId": 1659232813,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2795.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:59\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.22054\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:59\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:59\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.516184\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.83222\", \"Exif:SubsecTimeDigitized\": \"690\", \"Exif:SubsecTimeOriginal\": \"690\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00109649\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.9582\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"90.0168\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"90.0168\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.32\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 59.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1674396058,
                        "poseId": 1674396058,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_7878.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:25\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.87443\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:25\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:25\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.49174\", \"Exif:SubsecTimeDigitized\": \"671\", \"Exif:SubsecTimeOriginal\": \"671\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00138889\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.4237\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"107.809\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"107.809\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 25.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1704460106,
                        "poseId": 1704460106,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1589.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:16\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.50021\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:16\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:16\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.901968\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.2259\", \"Exif:SubsecTimeDigitized\": \"563\", \"Exif:SubsecTimeOriginal\": \"563\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000834725\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.5778\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"2.20117\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"2.20117\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.77\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 16.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1706682164,
                        "poseId": 1706682164,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1009.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:24\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.92343\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:24\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:24\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.901968\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.2259\", \"Exif:SubsecTimeDigitized\": \"339\", \"Exif:SubsecTimeOriginal\": \"339\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000834725\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.5097\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"291.315\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"291.315\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.61\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.2\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 24.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1714739500,
                        "poseId": 1714739500,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_4673.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:44\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.96426\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:44\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:44\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"539\", \"Exif:SubsecTimeOriginal\": \"539\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.7471\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"243.364\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"243.364\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.45\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 44.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1716162126,
                        "poseId": 1716162126,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6210.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:29\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.90116\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:29\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:29\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.780831\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1034\", \"Exif:SubsecTimeDigitized\": \"078\", \"Exif:SubsecTimeOriginal\": \"078\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000909091\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.6576\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"294.772\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"294.772\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.33\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 28.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1716817184,
                        "poseId": 1716817184,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_5642.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:34\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.40754\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:34\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:34\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.39727\", \"Exif:SubsecTimeDigitized\": \"744\", \"Exif:SubsecTimeOriginal\": \"744\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00148368\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.6935\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"284.201\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"284.201\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 34.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1742900614,
                        "poseId": 1742900614,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_1652.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:03\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.2191\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:03\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:03\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.01494\", \"Exif:SubsecTimeDigitized\": \"175\", \"Exif:SubsecTimeOriginal\": \"175\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00193424\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"88.0016\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"256.534\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"256.534\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 2.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1767363400,
                        "poseId": 1767363400,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6353.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:42\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.00379\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:42\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:42\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"625\", \"Exif:SubsecTimeOriginal\": \"625\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.1608\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"258.549\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"258.549\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.45\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.29\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 42.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1769881660,
                        "poseId": 1769881660,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6476.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:04:53\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.78529\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:04:53\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:04:53\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"245\", \"Exif:SubsecTimeOriginal\": \"245\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.6795\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"172.246\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"172.246\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.59\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.91\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 53.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1780018269,
                        "poseId": 1780018269,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3946.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:21\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.0184\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:21\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:21\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"185\", \"Exif:SubsecTimeOriginal\": \"185\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.7149\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"351.806\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"351.806\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.53\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.17\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 20.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1808529253,
                        "poseId": 1808529253,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3201.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:19\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.07217\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:19\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:19\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"419\", \"Exif:SubsecTimeOriginal\": \"419\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.3954\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"4.90335\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"4.90335\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 19.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1811207269,
                        "poseId": 1811207269,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3045.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:00\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"7.54127\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:00\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:00\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"8.36647\", \"Exif:SubsecTimeDigitized\": \"906\", \"Exif:SubsecTimeOriginal\": \"906\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.0030303\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.6003\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"228.642\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"228.642\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 0.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1838649481,
                        "poseId": 1838649481,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_3489.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:24\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.656\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:24\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:24\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1901\", \"Exif:SubsecTimeDigitized\": \"336\", \"Exif:SubsecTimeOriginal\": \"336\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.000856164\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.3949\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"101.392\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"101.392\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.52\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 24.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1839812255,
                        "poseId": 1839812255,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2752.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:53\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.40505\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:53\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:53\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.186219\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.50216\", \"Exif:SubsecTimeDigitized\": \"689\", \"Exif:SubsecTimeOriginal\": \"689\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00137931\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.8713\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"153.784\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"153.784\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.21\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 53.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1863239095,
                        "poseId": 1863239095,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_6012.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:09\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.19386\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:09\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:09\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.94715\", \"Exif:SubsecTimeDigitized\": \"218\", \"Exif:SubsecTimeOriginal\": \"218\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00101317\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.3678\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"258.252\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"258.252\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.53\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 8.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1863392634,
                        "poseId": 1863392634,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_2984.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:17\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.4081\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:17\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:17\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"452\", \"Exif:SubsecTimeOriginal\": \"452\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.7881\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"16.5087\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"16.5087\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.5\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 17.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1921350933,
                        "poseId": 1921350933,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_0450.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:15\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.11549\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:15\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:15\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"290\", \"Exif:SubsecTimeOriginal\": \"290\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.9799\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"40.3252\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"40.3252\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.49\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.65\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 15.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1997369561,
                        "poseId": 1997369561,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8300.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:06:50\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.62154\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:06:50\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:06:50\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.36647\", \"Exif:SubsecTimeDigitized\": \"363\", \"Exif:SubsecTimeOriginal\": \"363\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00151515\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.9993\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"272.135\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"272.135\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.57\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.21\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 6, 50.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2048860237,
                        "poseId": 2048860237,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_0391.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:07:37\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.86596\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:07:37\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:07:37\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.727\", \"Exif:SubsecTimeDigitized\": \"470\", \"Exif:SubsecTimeOriginal\": \"470\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00118064\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"86.2749\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"235.124\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"235.124\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.43\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.1\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 7, 37.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2110861233,
                        "poseId": 2110861233,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_8910.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:24\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.0184\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:24\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:24\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"-0.238449\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.88854\", \"Exif:SubsecTimeDigitized\": \"933\", \"Exif:SubsecTimeOriginal\": \"933\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00105485\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"85.6177\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"325.092\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"325.092\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.56\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.23\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0.42\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 5, 24.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2121192446,
                        "poseId": 2121192446,
                        "path": "C:/Users/worldsightvr/Development/meshroom/Images/IMG_0811.JPG",
                        "intrinsicId": 3350375193,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.890000\", \"DateTime\": \"2017:10:17 15:05:00\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.08712\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2017:10:17 15:05:00\", \"Exif:DateTimeOriginal\": \"2017:10:17 15:05:00\", \"Exif:ExifVersion\": \"0221\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"3.99\", \"Exif:FocalLengthIn35mmFilm\": \"28\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 7 Plus back dual camera 3.99mm f/1.8\", \"Exif:LensSpecification\": \"3.99, 6.6, 1.8, 2.8\", \"Exif:MeteringMode\": \"3\", \"Exif:PhotographicSensitivity\": \"20\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.65196\", \"Exif:SubsecTimeDigitized\": \"202\", \"Exif:SubsecTimeOriginal\": \"202\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.00124224\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"87.8302\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2017:10:17\", \"GPS:DestBearing\": \"103.813\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"10\", \"GPS:ImgDirection\": \"103.813\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"37, 44, 58.54\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"122, 29, 22.26\", \"GPS:LongitudeRef\": \"W\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"22, 4, 59.04\", \"ICCProfile\": \"0, 0, 2, 36, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 225, 0, 7, 0, 7, 0, 13, 0, 22, 0, 32, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [548 x uint8]\", \"Make\": \"Apple\", \"Model\": \"iPhone 7 Plus\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"11.1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3350375193,
                        "pxInitialFocalLength": 3289.914110429448,
                        "pxFocalLength": 3289.914110429448,
                        "type": "radial3",
                        "width": 4032,
                        "height": 3024,
                        "serialNumber": "C:\\Users\\worldsightvr\\Development\\meshroom\\Images_Apple_iPhone 7 Plus",
                        "principalPoint": {
                            "x": 2016.0,
                            "y": 1512.0
                        },
                        "initializationMode": "estimated",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "C:\\Users\\worldsightvr\\Development\\AliceVision\\src\\aliceVision\\sensorDB\\cameraSensors.db",
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 97,
                "split": 3
            },
            "uids": {
                "0": "2ef19a89994ba0f81c39d43187accdae561bfe86"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "describerTypes": [
                    "sift"
                ],
                "describerPreset": "normal",
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 97,
                "split": 1
            },
            "uids": {
                "0": "ba90d2211604d92442ed631c37bd5e6ee7c06c6b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "VocabularyTree",
                "tree": "C:\\Users\\worldsightvr\\Downloads\\vlfeat_K80L3.SIFT.tree",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 50,
                "nbNeighbors": 50,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 97,
                "split": 5
            },
            "uids": {
                "0": "9620bdc1aad441442bfcdb7253cb1a5022d667fd"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": [
                    "sift"
                ],
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 97,
                "split": 1
            },
            "uids": {
                "0": "8e112977f6363685c2ffa0d229e265ad178e43c9"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": [
                    "sift"
                ],
                "localizerEstimator": "acransac",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "lockAllIntrinsics": false,
                "filterTrackForks": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 97,
                "split": 3
            },
            "uids": {
                "0": "43c77d20c841525db86d75a3ba2eca81de1e802b"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputUndistorted": "{cache}/{nodeType}/{uid0}/*.{outputFileTypeValue}"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 97,
                "split": 33
            },
            "uids": {
                "0": "16411ea939982ec3f78af03c5154fc4658dc311d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "sgmMaxTCams": 10,
                "sgmWSH": 4,
                "sgmGammaC": 5.5,
                "sgmGammaP": 8.0,
                "refineMaxTCams": 6,
                "refineNSamplesHalf": 150,
                "refineNDepthsToRefine": 31,
                "refineNiters": 100,
                "refineWSH": 3,
                "refineSigma": 15,
                "refineGammaC": 15.5,
                "refineGammaP": 8.0,
                "refineUseTcOrRcPixSize": false,
                "exportIntermediateResults": false,
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 97,
                "split": 10
            },
            "uids": {
                "0": "268eea20122f9a80c0a8a186bfceeadae8a594fc"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e18ba628f1aa4cd07f5aa92036435ffdb61077b5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.depthMapsFolder}",
                "depthMapsFilterFolder": "{DepthMapFilter_1.output}",
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "addLandmarksToTheDensePointCloud": false,
                "colorizeOutput": false,
                "saveRawDensePointCloud": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.obj",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "7449f149e0689dd0fc27619f0aaa1e526787b184"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "removeLargeTrianglesFactor": 60.0,
                "keepLargestMeshOnly": false,
                "iterations": 5,
                "lambda": 1.0,
                "verboseLevel": "info"
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.obj"
            }
        },
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "279406cb29cebaf3a39312cff443aa660d1bf82c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "textureSide": 8192,
                "downscale": 1,
                "outputTextureFileType": "png",
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "processColorspace": "sRGB",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.obj",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.{outputTextureFileTypeValue}"
            }
        },
        "Publish_1": {
            "nodeType": "Publish",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 3,
                "split": 1
            },
            "uids": {
                "0": "ed69c2f76c30bc5e8b369a874a4d45c591368025"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputFiles": [
                    "{Texturing_1.outputMesh}",
                    "{Texturing_1.outputMaterial}",
                    "{Texturing_1.outputTextures}"
                ],
                "output": "Result",
                "verboseLevel": "info"
            },
            "outputs": {}
        }
    }
}