.class public Lcom/facebook/quicklog/identifiers/ForegroundService;
.super Ljava/lang/Object;
.source "ForegroundService.java"


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
    .line 33
    packed-switch p0, :pswitch_data_0

    .line 40
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 35
    :pswitch_0
    const-string v0, "FOREGROUND_SERVICE_START_FOREGROUND_SERVICE"

    goto :goto_0

    .line 37
    :pswitch_1
    const-string v0, "FOREGROUND_SERVICE_WEBRTC_IN_CALL_NOTIFICATION_SERVICE"

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
