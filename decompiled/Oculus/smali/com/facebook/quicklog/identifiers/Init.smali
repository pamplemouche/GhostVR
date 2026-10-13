.class public Lcom/facebook/quicklog/identifiers/Init;
.super Ljava/lang/Object;
.source "Init.java"


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
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 106
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 69
    :pswitch_1
    const-string v0, "INIT_HIGH_PRI_BG_THREAD_MARKER"

    goto :goto_0

    .line 71
    :pswitch_2
    const-string v0, "INIT_LOW_PRI_BG_THREAD_MARKER"

    goto :goto_0

    .line 73
    :pswitch_3
    const-string v0, "INIT_NON_CRITICAL_AFTER_UI_LOADED"

    goto :goto_0

    .line 75
    :pswitch_4
    const-string v0, "INIT_NON_CRITICAL_AFTER_COLD_START"

    goto :goto_0

    .line 77
    :pswitch_5
    const-string v0, "INIT_COLD_START"

    goto :goto_0

    .line 79
    :pswitch_6
    const-string v0, "INIT_WARM_START"

    goto :goto_0

    .line 81
    :pswitch_7
    const-string v0, "INIT_HOT_START"

    goto :goto_0

    .line 83
    :pswitch_8
    const-string v0, "INIT_POST_CHROME_ANDROID"

    goto :goto_0

    .line 85
    :pswitch_9
    const-string v0, "INIT_COLD_START_EXPERIMENTAL"

    goto :goto_0

    .line 87
    :pswitch_a
    const-string v0, "INIT_WARM_START_EXPERIMENTAL"

    goto :goto_0

    .line 89
    :pswitch_b
    const-string v0, "INIT_HOT_START_EXPERIMENTAL"

    goto :goto_0

    .line 91
    :pswitch_c
    const-string v0, "INIT_APPJOBS_JOB"

    goto :goto_0

    .line 93
    :pswitch_d
    const-string v0, "INIT_POST_CHROME_ANDROID_STALL"

    goto :goto_0

    .line 95
    :pswitch_e
    const-string v0, "INIT_POST_CHROME_ANDROID_SHORT"

    goto :goto_0

    .line 97
    :pswitch_f
    const-string v0, "INIT_POST_CHROME_ANDROID_SHORT_STALL"

    goto :goto_0

    .line 99
    :pswitch_10
    const-string v0, "INIT_POST_CHROME_ANDROID_WATCHDOG"

    goto :goto_0

    .line 101
    :pswitch_11
    const-string v0, "INIT_BACKGROUND_START"

    goto :goto_0

    .line 103
    :pswitch_12
    const-string v0, "INIT_DETAILED_WARM_START"

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
