.class public Lcom/facebook/quicklog/identifiers/ThreedPhotos;
.super Ljava/lang/Object;
.source "ThreedPhotos.java"


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
    .line 44
    packed-switch p0, :pswitch_data_0

    .line 63
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 46
    :pswitch_0
    const-string v0, "THREED_PHOTOS_GLB_CREATION_ANDROID"

    goto :goto_0

    .line 48
    :pswitch_1
    const-string v0, "THREED_PHOTOS_CNN_PREDICTION_FETCH_ANDROID"

    goto :goto_0

    .line 50
    :pswitch_2
    const-string v0, "THREED_PHOTOS_PHOTO_HAS_DEPTH_ANDROID"

    goto :goto_0

    .line 52
    :pswitch_3
    const-string v0, "THREED_PHOTOS_GLTF_DOWNLOAD_ANDROID"

    goto :goto_0

    .line 54
    :pswitch_4
    const-string v0, "THREED_PHOTOS_GLB_CREATION"

    goto :goto_0

    .line 56
    :pswitch_5
    const-string v0, "THREED_PHOTOS_CNN_PREDICTION_FETCH"

    goto :goto_0

    .line 58
    :pswitch_6
    const-string v0, "THREED_PHOTOS_PHOTO_HAS_DEPTH"

    goto :goto_0

    .line 60
    :pswitch_7
    const-string v0, "THREED_PHOTOS_GLTF_DOWNLOAD"

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
