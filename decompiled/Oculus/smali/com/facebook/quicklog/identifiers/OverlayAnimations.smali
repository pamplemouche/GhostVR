.class public Lcom/facebook/quicklog/identifiers/OverlayAnimations;
.super Ljava/lang/Object;
.source "OverlayAnimations.java"


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

    .line 51
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    const-string v0, "OVERLAY_ANIMATIONS_ANIMATION_START"

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "OVERLAY_ANIMATIONS_ANIMATION_FINISH"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "OVERLAY_ANIMATIONS_ANIMATION_TRIGGERED"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "OVERLAY_ANIMATIONS_PLAY_ANIMATION"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
