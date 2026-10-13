.class public Lcom/facebook/quicklog/identifiers/IgAssetUsage;
.super Ljava/lang/Object;
.source "IgAssetUsage.java"


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
    const-string v0, "IG_ASSET_USAGE_ANIMATION_ACCESSED"

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "IG_ASSET_USAGE_FONT_ACCESSED"

    goto :goto_0

    .line 54
    :pswitch_2
    const-string v0, "IG_ASSET_USAGE_EMOJI_KEYWORD_STORE_ACCESSED"

    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "IG_ASSET_USAGE_DOWNLOAD_TIME"

    goto :goto_0

    .line 58
    :pswitch_4
    const-string v0, "IG_ASSET_USAGE_NO_FILE"

    goto :goto_0

    .line 60
    :pswitch_5
    const-string v0, "IG_ASSET_USAGE_RECEIVED_EMOJIS"

    goto :goto_0

    .line 62
    :pswitch_6
    const-string v0, "IG_ASSET_USAGE_SAVE_FAIL"

    goto :goto_0

    .line 64
    :pswitch_7
    const-string v0, "IG_ASSET_USAGE_FONT_RECEIVED"

    goto :goto_0

    .line 66
    :pswitch_8
    const-string v0, "IG_ASSET_USAGE_FETCH"

    goto :goto_0

    .line 68
    :pswitch_9
    const-string v0, "IG_ASSET_USAGE_FETCH_FAILURE"

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
