.class public Lcom/facebook/quicklog/identifiers/Saved;
.super Ljava/lang/Object;
.source "Saved.java"


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
    .line 57
    packed-switch p0, :pswitch_data_0

    .line 88
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 59
    :pswitch_1
    const-string v0, "SAVED_SAVED_DASHBOARD_START"

    goto :goto_0

    .line 61
    :pswitch_2
    const-string v0, "SAVE_DASHBOARD_INIT"

    goto :goto_0

    .line 63
    :pswitch_3
    const-string v0, "SAVED_SAVE_DASHBOARD_UPSELL_INIT"

    goto :goto_0

    .line 65
    :pswitch_4
    const-string v0, "Save Dashboard TTI (RN)"

    goto :goto_0

    .line 67
    :pswitch_5
    const-string v0, "SAVED_SAVE_DASHBOARD_NAV_TTI"

    goto :goto_0

    .line 69
    :pswitch_6
    const-string v0, "SAVED_SAVE_DASHBOARD_NAV_TTI_RN"

    goto :goto_0

    .line 71
    :pswitch_7
    const-string v0, "SAVED_SAVE_DISCOVERY_SAVE_PIVOTS_NAV_TTI"

    goto :goto_0

    .line 73
    :pswitch_8
    const-string v0, "SAVED_SAVE_DISCOVERY_COLLECTIONS_NAV_TTI"

    goto :goto_0

    .line 75
    :pswitch_9
    const-string v0, "SAVED_SAVE_DISCOVERY_DASHBOARD_NAV_TTI"

    goto :goto_0

    .line 77
    :pswitch_a
    const-string v0, "SAVED_SAVE_DASHBOARD_RECOMMENDATIONS_PIVOT_TTI"

    goto :goto_0

    .line 79
    :pswitch_b
    const-string v0, "SAVED_PAGE_COLLECTION_TTI"

    goto :goto_0

    .line 81
    :pswitch_c
    const-string v0, "SAVED_SAVE_TRAVEL_EXPLORE_NAV_TTI"

    goto :goto_0

    .line 83
    :pswitch_d
    const-string v0, "SAVED_SAVE_TRAVEL_DESTINATION_NAV_TTI"

    goto :goto_0

    .line 85
    :pswitch_e
    const-string v0, "SAVED_SAVE_COLLECTION_EMBEDDED_DISCOVERY_TTI"

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method
