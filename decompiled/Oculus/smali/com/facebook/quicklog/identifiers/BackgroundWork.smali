.class public Lcom/facebook/quicklog/identifiers/BackgroundWork;
.super Ljava/lang/Object;
.source "BackgroundWork.java"


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
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 53
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    const-string v0, "BACKGROUND_WORK_HANDLE_BROADCAST"

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "BACKGROUND_WORK_GENERIC_BACKGROUND_WORK_FROM_LOGGER"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "BACKGROUND_WORK_SERVICE_ON_CREATE"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "BACKGROUND_WORK_SERVICE_ON_START"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string v0, "BACKGROUND_WORK_SERVICE_ON_DESTROY"

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
