.class public Lcom/facebook/quicklog/identifiers/CameraPerf;
.super Ljava/lang/Object;
.source "CameraPerf.java"


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
    .line 103
    packed-switch p0, :pswitch_data_0

    .line 174
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 105
    :pswitch_1
    const-string v0, "CAMERA_PERF_CANCEL_RECORDING_VIDEO"

    goto :goto_0

    .line 107
    :pswitch_2
    const-string v0, "CAMERA_PERF_CAPTURE_IMAGE"

    goto :goto_0

    .line 109
    :pswitch_3
    const-string v0, "CAMERA_PERF_START_AUDIO_SESSION"

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "CAMERA_PERF_START_CAMERA_SESSION"

    goto :goto_0

    .line 113
    :pswitch_5
    const-string v0, "CAMERA_PERF_START_RECORDING_VIDEO"

    goto :goto_0

    .line 115
    :pswitch_6
    const-string v0, "CAMERA_PERF_STOP_RECORDING_VIDEO"

    goto :goto_0

    .line 117
    :pswitch_7
    const-string v0, "CAMERA_PERF_UPDATE_CAPTURE_DEVICE_POSITION"

    goto :goto_0

    .line 119
    :pswitch_8
    const-string v0, "CAMERA_PERF_UPDATE_EXPOSURE_POINT"

    goto :goto_0

    .line 121
    :pswitch_9
    const-string v0, "CAMERA_PERF_UPDATE_TORCH_MODE"

    goto :goto_0

    .line 123
    :pswitch_a
    const-string v0, "CAMERA_PERF_STOP_AUDIO_SESSION"

    goto :goto_0

    .line 125
    :pswitch_b
    const-string v0, "CAMERA_PERF_STOP_CAMERA_SESSION"

    goto :goto_0

    .line 127
    :pswitch_c
    const-string v0, "CAMERA_PERF_START_AUDIO_AND_CAMERA_SESSION"

    goto :goto_0

    .line 129
    :pswitch_d
    const-string v0, "CAMERA_PERF_STOP_AUDIO_AND_CAMERA_SESSION"

    goto :goto_0

    .line 131
    :pswitch_e
    const-string v0, "CAMERA_PERF_TIME_TO_FIRST_FRAME"

    goto :goto_0

    .line 133
    :pswitch_f
    const-string v0, "CAMERA_PERF_CAPTURE_PHOTO"

    goto :goto_0

    .line 135
    :pswitch_10
    const-string v0, "CAMERA_PERF_START_MEDIA_PIPELINE_SESSION"

    goto :goto_0

    .line 137
    :pswitch_11
    const-string v0, "CAMERA_PERF_STOP_MEDIA_PIPELINE_SESSION"

    goto :goto_0

    .line 139
    :pswitch_12
    const-string v0, "CAMERA_PERF_SAVE_PHOTO"

    goto :goto_0

    .line 141
    :pswitch_13
    const-string v0, "CAMERA_PERF_TIME_TO_FIRST_FRAME_AFTER_CAMERA_OPEN"

    goto :goto_0

    .line 143
    :pswitch_14
    const-string v0, "CAMERA_PERF_CAPTURE_PHOTO_OS"

    goto :goto_0

    .line 145
    :pswitch_15
    const-string v0, "CAMERA_PERF_CAMERA_EFFECT_FETCH_CACHE"

    goto :goto_0

    .line 147
    :pswitch_16
    const-string v0, "CAMERA_PERF_CAMERA_EFFECT_FETCH_NETWORK"

    goto :goto_0

    .line 149
    :pswitch_17
    const-string v0, "CAMERA_PERF_HW_START_CAMERA_SESSION"

    goto :goto_0

    .line 151
    :pswitch_18
    const-string v0, "CAMERA_PERF_HW_TIME_TO_FIRST_FRAME_AFTER_CAMERA_OPEN"

    goto :goto_0

    .line 153
    :pswitch_19
    const-string v0, "CAMERA_PERF_PREPARE_CAMERA_SESSION"

    goto :goto_0

    .line 155
    :pswitch_1a
    const-string v0, "CAMERA_PERF_START_CAMERA_SESSION_TO_FIRST_HARDWARE_FRAME"

    goto :goto_0

    .line 157
    :pswitch_1b
    const-string v0, "CAMERA_PERF_FIRST_HARDWARE_FRAME_TO_FIRST_USER_FRAME"

    goto :goto_0

    .line 159
    :pswitch_1c
    const-string v0, "CAMERA_PERF_CAPTURE_POST_PHOTO"

    goto :goto_0

    .line 161
    :pswitch_1d
    const-string v0, "CAMERA_PERF_PROCESSING_INPUT_FRAME_TIME_AVG"

    goto :goto_0

    .line 163
    :pswitch_1e
    const-string v0, "CAMERA_PERF_EFFECT_TIME_TO_INTERACT"

    goto :goto_0

    .line 165
    :pswitch_1f
    const-string v0, "CAMERA_PERF_CAPTURE_PHOTO_PREVIEW"

    goto :goto_0

    .line 167
    :pswitch_20
    const-string v0, "CAMERA_PERF_CAPTURE_PHOTO_NATIVE"

    goto :goto_0

    .line 169
    :pswitch_21
    const-string v0, "CAMERA_PERF_AUTO_FACE_FOCUS_TRACKER_WARMUP"

    goto :goto_0

    .line 171
    :pswitch_22
    const-string v0, "CAMERA_PERF_AUTO_FACE_FOCUS_TRACKER_FACE_DETECTION"

    goto :goto_0

    .line 103
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
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method
