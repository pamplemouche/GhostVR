.class public Lcom/facebook/quicklog/identifiers/Goodwill;
.super Ljava/lang/Object;
.source "Goodwill.java"


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
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 79
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 58
    :pswitch_1
    const-string v0, "GOODWILL_THROWBACK_FEED_TTI"

    goto :goto_0

    .line 60
    :pswitch_2
    const-string v0, "GOODWILL_RECAP_XRAY_MODEL_LOAD_IOS"

    goto :goto_0

    .line 62
    :pswitch_3
    const-string v0, "GOODWILL_RECAP_STORE_PHOTOS_IOS"

    goto :goto_0

    .line 64
    :pswitch_4
    const-string v0, "GOODWILL_RECAP_READ_PHOTOS_IOS"

    goto :goto_0

    .line 66
    :pswitch_5
    const-string v0, "GOODWILL_RECAP_SELECT_PHOTOS_IOS"

    goto :goto_0

    .line 68
    :pswitch_6
    const-string v0, "GOODWILL_RECAP_XRAY_SINGLE_PHOTO"

    goto :goto_0

    .line 70
    :pswitch_7
    const-string v0, "GOODWILL_RECAP_BACKGROUND_RUN"

    goto :goto_0

    .line 72
    :pswitch_8
    const-string v0, "GOODWILL_RECAP_RETRIEVE_SCREENSHOTS_IOS"

    goto :goto_0

    .line 74
    :pswitch_9
    const-string v0, "GOODWILL_MEMORIES_HOME_GOT_MH_DATA_WHEN_OFF"

    goto :goto_0

    .line 76
    :pswitch_a
    const-string v0, "GOODWILL_MEMORIES_HOME_TTRC"

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
