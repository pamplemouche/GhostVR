.class public Lcom/facebook/quicklog/identifiers/YouthCamera;
.super Ljava/lang/Object;
.source "YouthCamera.java"


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
    .line 52
    packed-switch p0, :pswitch_data_0

    .line 71
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    const-string v0, "YOUTH_CAMERA_EFFECT_APPLY"

    goto :goto_0

    .line 56
    :pswitch_2
    const-string v0, "YOUTH_CAMERA_EFFECT_CHECK_CACHE"

    goto :goto_0

    .line 58
    :pswitch_3
    const-string v0, "YOUTH_CAMERA_EFFECT_DOWNLOAD"

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "YOUTH_CAMERA_EFFECT_PICKER_LOAD"

    goto :goto_0

    .line 62
    :pswitch_5
    const-string v0, "YOUTH_CAMERA_PHOTO_CAPTURE"

    goto :goto_0

    .line 64
    :pswitch_6
    const-string v0, "YOUTH_CAMERA_START_VIDEO_CAPTURE"

    goto :goto_0

    .line 66
    :pswitch_7
    const-string v0, "YOUTH_CAMERA_STOP_VIDEO_CAPTURE"

    goto :goto_0

    .line 68
    :pswitch_8
    const-string v0, "YOUTH_CAMERA_DISPLAY_CAPTURED_VIDEO"

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
