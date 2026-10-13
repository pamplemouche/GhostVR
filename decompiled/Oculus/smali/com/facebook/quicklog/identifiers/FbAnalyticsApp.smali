.class public Lcom/facebook/quicklog/identifiers/FbAnalyticsApp;
.super Ljava/lang/Object;
.source "FbAnalyticsApp.java"


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
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 59
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    const-string v0, "FB_ANALYTICS_APP_HOME_SCREEN_LOAD"

    goto :goto_0

    .line 46
    :pswitch_1
    const-string v0, "FB_ANALYTICS_APP_ENTITIES_LIST_LOAD"

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "FB_ANALYTICS_APP_COLD_START_TTI"

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v0, "FB_ANALYTICS_APP_OVERVIEW_SCREEN_LOAD"

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v0, "FB_ANALYTICS_APP_DASHBOARD_LIST_LOAD"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string v0, "FB_ANALYTICS_APP_INSIGHTS_LIST_LOAD"

    goto :goto_0

    .line 56
    :pswitch_6
    const-string v0, "FB_ANALYTICS_APP_SELECT_ENTITY_TO_SHOW_OVERVIEW"

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
