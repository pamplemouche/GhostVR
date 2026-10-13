.class public Lcom/facebook/quicklog/identifiers/Bugreport;
.super Ljava/lang/Object;
.source "Bugreport.java"


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
    .line 50
    packed-switch p0, :pswitch_data_0

    .line 75
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 52
    :pswitch_1
    const-string v0, "BUGREPORT_UPLOAD"

    goto :goto_0

    .line 54
    :pswitch_2
    const-string v0, "BUGREPORT_UPLOAD_ATTACHMENTS"

    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "BUGREPORT_GET_EXTRA_ANDROID"

    goto :goto_0

    .line 58
    :pswitch_4
    const-string v0, "BUGREPORT_REPORT_FLOW"

    goto :goto_0

    .line 60
    :pswitch_5
    const-string v0, "BUGREPORT_FINALIZE"

    goto :goto_0

    .line 62
    :pswitch_6
    const-string v0, "BUGREPORT_PERSIST_TO_DISK"

    goto :goto_0

    .line 64
    :pswitch_7
    const-string v0, "BUGREPORT_GET_EXTRA"

    goto :goto_0

    .line 66
    :pswitch_8
    const-string v0, "BUGREPORT_LOOM_VIDEO_PROFILER"

    goto :goto_0

    .line 68
    :pswitch_9
    const-string v0, "BUGREPORT_CAPTURE_SCREENSHOT"

    goto :goto_0

    .line 70
    :pswitch_a
    const-string v0, "BUGREPORT_UPLOAD_SHADOW"

    goto :goto_0

    .line 72
    :pswitch_b
    const-string v0, "BUGREPORT_FINALIZE_SHADOW"

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
