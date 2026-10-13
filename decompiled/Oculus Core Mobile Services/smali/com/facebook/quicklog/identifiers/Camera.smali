.class public Lcom/facebook/quicklog/identifiers/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    packed-switch p0, :pswitch_data_0

    .line 414
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 229
    :pswitch_1
    const-string v0, "CAMERA_PERSON_SEGMENTATION_SINGLE_FRAME"

    goto :goto_0

    .line 231
    :pswitch_2
    const-string v0, "CAMERA_FACE_TRACKER_SINGLE_FRAME"

    goto :goto_0

    .line 233
    :pswitch_3
    const-string v0, "CAMERA_WORLD_TRACKER_SINGLE_FRAME"

    goto :goto_0

    .line 235
    :pswitch_4
    const-string v0, "CAMERA_WORLD_TRACKER_ADD_ANCHOR"

    goto :goto_0

    .line 237
    :pswitch_5
    const-string v0, "CAMERA_ARENGINE_RENDER_OPERATION"

    goto :goto_0

    .line 239
    :pswitch_6
    const-string v0, "CAMERA_FACE_TRACKER_NORMALIZE_IMAGE"

    goto :goto_0

    .line 241
    :pswitch_7
    const-string v0, "CAMERA_FACE_TRACKER_TRACK_TARGETS"

    goto :goto_0

    .line 243
    :pswitch_8
    const-string v0, "CAMERA_FACE_TRACKER_3D_INFERENCE"

    goto :goto_0

    .line 245
    :pswitch_9
    const-string v0, "CAMERA_FACE_TRACKER_ACQUIRE_TARGETS"

    goto :goto_0

    .line 247
    :pswitch_a
    const-string v0, "CAMERA_FACE_TRACKER_LOAD_MODELS"

    goto :goto_0

    .line 249
    :pswitch_b
    const-string v0, "CAMERA_AR_SERVICE_LOAD"

    goto :goto_0

    .line 251
    :pswitch_c
    const-string v0, "CAMERA_AR_SERVICE_RESET"

    goto :goto_0

    .line 253
    :pswitch_d
    const-string v0, "CAMERA_AR_SERVICE_CREATE"

    goto :goto_0

    .line 255
    :pswitch_e
    const-string v0, "CAMERA_AR_SERVICEHOST_PREPARE"

    goto :goto_0

    .line 257
    :pswitch_f
    const-string v0, "CAMERA_ARENGINE_SCRIPTING_MODULE_UPDATE"

    goto :goto_0

    .line 259
    :pswitch_10
    const-string v0, "CAMERA_ARENGINE_UPDATE"

    goto :goto_0

    .line 261
    :pswitch_11
    const-string v0, "CAMERA_ARENGINE_REACTIVE_CONTEXT_ROOT_COMPONENT_UPDATE"

    goto :goto_0

    .line 263
    :pswitch_12
    const-string v0, "CAMERA_ARENGINE_REACTIVE_CONTEXT_ROOT_COMPONENT_PERFORM"

    goto :goto_0

    .line 265
    :pswitch_13
    const-string v0, "CAMERA_ARENGINE_REACTIVE_CONTEXT_CALL_JS_SUBSCRIPTIONS"

    goto :goto_0

    .line 267
    :pswitch_14
    const-string v0, "CAMERA_ARENGINE_REACTIVE_CONTEXT_REMOVE_SUBSCRIPTIONS"

    goto :goto_0

    .line 269
    :pswitch_15
    const-string v0, "CAMERA_AR_SERVICE_TEMP_ANDROID_LOADMODEL"

    goto :goto_0

    .line 271
    :pswitch_16
    const-string v0, "CAMERA_ARENGINE_SCRIPT_EXECUTOR_CREATE"

    goto :goto_0

    .line 273
    :pswitch_17
    const-string v0, "CAMERA_ARENGINE_VIEWPORT_PRERENDER"

    goto :goto_0

    .line 275
    :pswitch_18
    const-string v0, "CAMERA_ARENGINE_VIEWPORT_RENDER"

    goto :goto_0

    .line 277
    :pswitch_19
    const-string v0, "CAMERA_ARENGINE_EFFECT_CREATE"

    goto :goto_0

    .line 279
    :pswitch_1a
    const-string v0, "CAMERA_ARENGINE_EFFECT_LOAD"

    goto :goto_0

    .line 281
    :pswitch_1b
    const-string v0, "CAMERA_AR_SERVICE_VIDEO_BUFFER_CONVERT"

    goto :goto_0

    .line 283
    :pswitch_1c
    const-string v0, "CAMERA_ARENGINE_MANIFEST_DESERIALIZE"

    goto :goto_0

    .line 285
    :pswitch_1d
    const-string v0, "CAMERA_WORLD_TRACKER_SLAM"

    goto :goto_0

    .line 287
    :pswitch_1e
    const-string v0, "CAMERA_ARENGINE_VIEWPORT_CREATE"

    goto :goto_0

    .line 289
    :pswitch_1f
    const-string v0, "CAMERA_ARENGINE_RENDER_SESSION_CREATE"

    goto :goto_0

    .line 291
    :pswitch_20
    const-string v0, "CAMERA_VISUAL_SLAM_SINGLE_FRAME"

    goto :goto_0

    .line 293
    :pswitch_21
    const-string v0, "CAMERA_AR_SERVICE_SNAPSHOT"

    goto :goto_0

    .line 295
    :pswitch_22
    const-string v0, "CAMERA_AR_SERVICE_SNAPSHOT_ALL"

    goto :goto_0

    .line 297
    :pswitch_23
    const-string v0, "CAMERA_ARENGINE_WAIT_FACETRACKER_RESULT"

    goto :goto_0

    .line 299
    :pswitch_24
    const-string v0, "CAMERA_ARENGINE_WAIT_WORLDTRACKER_RESULT"

    goto :goto_0

    .line 301
    :pswitch_25
    const-string v0, "CAMERA_ARENGINE_WAIT_SEGMENTATION_RESULT"

    goto :goto_0

    .line 303
    :pswitch_26
    const-string v0, "CAMERA_EFFECT_EXTRACTION_TIME"

    goto :goto_0

    .line 305
    :pswitch_27
    const-string v0, "CAMERA_ARENGINE_GPU_TIME"

    goto :goto_0

    .line 307
    :pswitch_28
    const-string v0, "CAMERA_CAMERA_SINGLE_EFFECT_RUN"

    goto :goto_0

    .line 309
    :pswitch_29
    const-string v0, "CAMERA_DATA_PROVIDER_UPDATE"

    goto :goto_0

    .line 311
    :pswitch_2a
    const-string v0, "CAMERA_FACE_TRACKER_MATCH_TEMPLATE"

    goto :goto_0

    .line 313
    :pswitch_2b
    const-string v0, "CAMERA_PERSON_SEGMENTATION_INIT"

    goto/16 :goto_0

    .line 315
    :pswitch_2c
    const-string v0, "CAMERA_PERSON_SEGMENTATION_NORMALIZE"

    goto/16 :goto_0

    .line 317
    :pswitch_2d
    const-string v0, "CAMERA_PERSON_SEGMENTATION_CAFFE2"

    goto/16 :goto_0

    .line 319
    :pswitch_2e
    const-string v0, "CAMERA_PERSON_SEGMENTATION_NORMALIZEOUTPUT"

    goto/16 :goto_0

    .line 321
    :pswitch_2f
    const-string v0, "CAMERA_TARGETRECOGNITIONXRAY"

    goto/16 :goto_0

    .line 323
    :pswitch_30
    const-string v0, "CAMERA_TARGETRECOGNITIONOCEAN"

    goto/16 :goto_0

    .line 325
    :pswitch_31
    const-string v0, "CAMERA_TARGETRECOGNITIONQUERY"

    goto/16 :goto_0

    .line 327
    :pswitch_32
    const-string v0, "CAMERA_AR_RENDER_TIME"

    goto/16 :goto_0

    .line 329
    :pswitch_33
    const-string v0, "CAMERA_GL_CONTEXTS_CREATED"

    goto/16 :goto_0

    .line 331
    :pswitch_34
    const-string v0, "CAMERA_GL_CONTEXTS_MAX_ACTIVE"

    goto/16 :goto_0

    .line 333
    :pswitch_35
    const-string v0, "CAMERA_ARENGINE_WAIT_FOR_DATA"

    goto/16 :goto_0

    .line 335
    :pswitch_36
    const-string v0, "CAMERA_WORLD_TRACKER_SLAM_INIT_TIME"

    goto/16 :goto_0

    .line 337
    :pswitch_37
    const-string v0, "CAMERA_WOLRD_TRACKER_SLAM_HAS_GYRO"

    goto/16 :goto_0

    .line 339
    :pswitch_38
    const-string v0, "CAMERA_BODY_TRACKING_FRAME"

    goto/16 :goto_0

    .line 341
    :pswitch_39
    const-string v0, "CAMERA_BODY_TRACKING_IMAGE_CONVERSION"

    goto/16 :goto_0

    .line 343
    :pswitch_3a
    const-string v0, "CAMERA_ARENGINE_EFFECT_MIGRATE"

    goto/16 :goto_0

    .line 345
    :pswitch_3b
    const-string v0, "CAMERA_ARENGINE_EFFECT_DOCUMENT_LOAD"

    goto/16 :goto_0

    .line 347
    :pswitch_3c
    const-string v0, "CAMERA_ARENGINE_TEXTURE_LOAD"

    goto/16 :goto_0

    .line 349
    :pswitch_3d
    const-string v0, "CAMERA_ARENGINE_EFFECT_UPDATE_AUDIO"

    goto/16 :goto_0

    .line 351
    :pswitch_3e
    const-string v0, "CAMERA_ARENGINE_EFFECT_UPDATE_SCENE"

    goto/16 :goto_0

    .line 353
    :pswitch_3f
    const-string v0, "CAMERA_ARENGINE_EFFECT_UPDATE_SCRIPT"

    goto/16 :goto_0

    .line 355
    :pswitch_40
    const-string v0, "CAMERA_XRAY_MOBILE_RECOGNIZE"

    goto/16 :goto_0

    .line 357
    :pswitch_41
    const-string v0, "CAMERA_FACE_TRACKER_TRACK_IRIS"

    goto/16 :goto_0

    .line 359
    :pswitch_42
    const-string v0, "CAMERA_FACE_TRACKER_IRIS_3D_INFERENCE"

    goto/16 :goto_0

    .line 361
    :pswitch_43
    const-string v0, "CAMERA_ARENGINE_TEXTURE_STORAGE_LOAD"

    goto/16 :goto_0

    .line 363
    :pswitch_44
    const-string v0, "CAMERA_HAND_TRACKING_FRAME"

    goto/16 :goto_0

    .line 365
    :pswitch_45
    const-string v0, "CAMERA_FACE_TRACKER_EXPRESSION_TRACKING_CALCULATE_WEIGHTS"

    goto/16 :goto_0

    .line 367
    :pswitch_46
    const-string v0, "CAMERA_FACE_TRACKER_FACIAL_GESTURE_CLASSIFIER"

    goto/16 :goto_0

    .line 369
    :pswitch_47
    const-string v0, "CAMERA_FACE_TRACKER_FACE_SESSION_ID_CALCULATE"

    goto/16 :goto_0

    .line 371
    :pswitch_48
    const-string v0, "CAMERA_IMAGETRACKERADDPATTERN"

    goto/16 :goto_0

    .line 373
    :pswitch_49
    const-string v0, "CAMERA_IMAGETRACKERDETERMINEPOSES"

    goto/16 :goto_0

    .line 375
    :pswitch_4a
    const-string v0, "CAMERA_RECOGNITIONTRACKINGSTEP"

    goto/16 :goto_0

    .line 377
    :pswitch_4b
    const-string v0, "CAMERA_RECOGNITIONTRACKINGONRECOGNIZED"

    goto/16 :goto_0

    .line 379
    :pswitch_4c
    const-string v0, "CAMERA_RECOGNITIONTRACKINGSETLOCK"

    goto/16 :goto_0

    .line 381
    :pswitch_4d
    const-string v0, "CAMERA_STANDALONE_TRACKING_UPDATE_AND_TRACK_FRAME"

    goto/16 :goto_0

    .line 383
    :pswitch_4e
    const-string v0, "CAMERA_AR_XPLAT_AVG_RENDER_TIME"

    goto/16 :goto_0

    .line 385
    :pswitch_4f
    const-string v0, "CAMERA_AR_XPLAT_FIRST_FRAME_RENDER_TIME"

    goto/16 :goto_0

    .line 387
    :pswitch_50
    const-string v0, "CAMERA_IMAGETRACKERSYNCPROCESSFRAME"

    goto/16 :goto_0

    .line 389
    :pswitch_51
    const-string v0, "CAMERA_AR_XPLAT_EFFECT_INITIALIZATION_TIME"

    goto/16 :goto_0

    .line 391
    :pswitch_52
    const-string v0, "CAMERA_FACE_ACTIONS_REFINE_BLENDSHAPES"

    goto/16 :goto_0

    .line 393
    :pswitch_53
    const-string v0, "CAMERA_FACE_ACTIONS_LOAD_MODEL"

    goto/16 :goto_0

    .line 395
    :pswitch_54
    const-string v0, "CAMERA_HAIR_SEGMENTATION_SINGLE_FRAME"

    goto/16 :goto_0

    .line 397
    :pswitch_55
    const-string v0, "CAMERA_HAIR_SEGMENTATION_INIT"

    goto/16 :goto_0

    .line 399
    :pswitch_56
    const-string v0, "CAMERA_HAIR_SEGMENTATION_NORMALIZE"

    goto/16 :goto_0

    .line 401
    :pswitch_57
    const-string v0, "CAMERA_HAIR_SEGMENTATION_CAFFE2"

    goto/16 :goto_0

    .line 403
    :pswitch_58
    const-string v0, "CAMERA_HAIR_SEGMENTATION_NORMALIZEOUTPUT"

    goto/16 :goto_0

    .line 405
    :pswitch_59
    const-string v0, "CAMERA_HAIR_SEGMENTATION_LOAD_MODEL"

    goto/16 :goto_0

    .line 407
    :pswitch_5a
    const-string v0, "CAMERA_PERSON_SEGMENTATION_LOAD_MODEL"

    goto/16 :goto_0

    .line 409
    :pswitch_5b
    const-string v0, "CAMERA_HAND_TRACKING_INIT"

    goto/16 :goto_0

    .line 411
    :pswitch_5c
    const-string v0, "CAMERA_HAND_TRACKING_LOAD_MODEL"

    goto/16 :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_0
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_51
        :pswitch_0
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
    .end packed-switch
.end method
