.class public Lcom/facebook/quicklog/identifiers/ArCloudServices;
.super Ljava/lang/Object;
.source "ArCloudServices.java"


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
    .line 48
    packed-switch p0, :pswitch_data_0

    .line 71
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    const-string v0, "AR_CLOUD_SERVICES_EFFECT_EXTRACT"

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "AR_CLOUD_SERVICES_EVERSTORE_READ"

    goto :goto_0

    .line 54
    :pswitch_2
    const-string v0, "AR_CLOUD_SERVICES_EVERSTORE_WRITE"

    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "AR_CLOUD_SERVICES_EFFECT_FETCH"

    goto :goto_0

    .line 58
    :pswitch_4
    const-string v0, "AR_CLOUD_SERVICES_MODEL_FETCH"

    goto :goto_0

    .line 60
    :pswitch_5
    const-string v0, "AR_CLOUD_SERVICES_FRAME_RENDER"

    goto :goto_0

    .line 62
    :pswitch_6
    const-string v0, "AR_CLOUD_SERVICES_FRAME_LOAD"

    goto :goto_0

    .line 64
    :pswitch_7
    const-string v0, "AR_CLOUD_SERVICES_SERVICE_FEEDBACK"

    goto :goto_0

    .line 66
    :pswitch_8
    const-string v0, "AR_CLOUD_SERVICES_MAKEUP_TRANSFER"

    goto :goto_0

    .line 68
    :pswitch_9
    const-string v0, "AR_CLOUD_SERVICES_FETCH"

    goto :goto_0

    .line 48
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
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
