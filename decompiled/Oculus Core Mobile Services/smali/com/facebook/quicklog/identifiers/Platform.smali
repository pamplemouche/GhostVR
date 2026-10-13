.class public Lcom/facebook/quicklog/identifiers/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


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
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 51
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 40
    :pswitch_1
    const-string v0, "PLATFORM_PLATFORM_JSDIALOG_LAUNCH_SEQUENCE"

    goto :goto_0

    .line 42
    :pswitch_2
    const-string v0, "PLATFORM_PLATFORM_COMPOSER_TTI"

    goto :goto_0

    .line 44
    :pswitch_3
    const-string v0, "PLATFORM_SHARE_TTI"

    goto :goto_0

    .line 46
    :pswitch_4
    const-string v0, "PLATFORM_SHARE_INTENT_HANDLER_PHASE"

    goto :goto_0

    .line 48
    :pswitch_5
    const-string v0, "PLATFORM_COMPOSER_ACTIVITY_TTI"

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
