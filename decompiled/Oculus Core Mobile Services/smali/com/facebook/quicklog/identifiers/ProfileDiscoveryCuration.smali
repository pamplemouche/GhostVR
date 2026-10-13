.class public Lcom/facebook/quicklog/identifiers/ProfileDiscoveryCuration;
.super Ljava/lang/Object;
.source "ProfileDiscoveryCuration.java"


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
    .line 49
    packed-switch p0, :pswitch_data_0

    .line 70
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 51
    :pswitch_1
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_DASHBOARD_TTI"

    goto :goto_0

    .line 53
    :pswitch_2
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_HOME_INITIAL_LOAD"

    goto :goto_0

    .line 55
    :pswitch_3
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_SCOPED_VIEW_INITIAL_LOAD"

    goto :goto_0

    .line 57
    :pswitch_4
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_HOME_TAIL_LOAD"

    goto :goto_0

    .line 59
    :pswitch_5
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_SCOPED_VIEW_TAIL_LOAD"

    goto :goto_0

    .line 61
    :pswitch_6
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_HOME_MORE_PAGE_WAIT_TIME"

    goto :goto_0

    .line 63
    :pswitch_7
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_SCOPED_VIEW_MORE_PAGE_WAIT_TIME"

    goto :goto_0

    .line 65
    :pswitch_8
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_PROFILE_PREVIEW_INITIAL_LOAD"

    goto :goto_0

    .line 67
    :pswitch_9
    const-string v0, "PROFILE_DISCOVERY_CURATION_DISCOVERY_INTENT_SIGNALS_INITIAL_LOAD"

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
