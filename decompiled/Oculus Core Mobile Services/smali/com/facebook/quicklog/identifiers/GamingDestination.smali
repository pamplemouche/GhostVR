.class public Lcom/facebook/quicklog/identifiers/GamingDestination;
.super Ljava/lang/Object;
.source "GamingDestination.java"


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
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 63
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 48
    :pswitch_1
    const-string v0, "GAMING_DESTINATION_MOBILE_FEED_PAGE_LOAD_TIME"

    goto :goto_0

    .line 50
    :pswitch_2
    const-string v0, "GAMING_DESTINATION_GAMING_TAB_TTRC"

    goto :goto_0

    .line 52
    :pswitch_3
    const-string v0, "GAMING_DESTINATION_MOBILE_FEED_OPTIMIZED_IG_PAGE_LOAD_TIME"

    goto :goto_0

    .line 54
    :pswitch_4
    const-string v0, "GAMING_DESTINATION_MOBILE_FEED_OPTIMIZED_GV_PAGE_LOAD_TIME"

    goto :goto_0

    .line 56
    :pswitch_5
    const-string v0, "GAMING_DESTINATION_GAMING_TAB_PAGING_TTI"

    goto :goto_0

    .line 58
    :pswitch_6
    const-string v0, "GAMING_DESTINATION_GAMING_TAB_PAGINATION_TTI"

    goto :goto_0

    .line 60
    :pswitch_7
    const-string v0, "GAMING_DESTINATION_VERSE_THREADVIEW_SHOW"

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
