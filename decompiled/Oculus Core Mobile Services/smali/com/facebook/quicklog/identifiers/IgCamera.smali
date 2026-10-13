.class public Lcom/facebook/quicklog/identifiers/IgCamera;
.super Ljava/lang/Object;
.source "IgCamera.java"


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
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 59
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 44
    :pswitch_1
    const-string v0, "IG_CAMERA_TTFF"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "IG_CAMERA_TTI"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "IG_CAMERA_TTCP"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string v0, "IG_CAMERA_AR_EFFECT_SELECTED"

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "IG_CAMERA_DOWNLOAD_MODEL"

    goto :goto_0

    .line 54
    :pswitch_6
    const-string v0, "IG_CAMERA_DOWNLOAD_METADATA"

    goto :goto_0

    .line 56
    :pswitch_7
    const-string v0, "IG_CAMERA_DOWNLOAD_PREVIEWS"

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
