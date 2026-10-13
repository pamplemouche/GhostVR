.class public Lcom/facebook/quicklog/identifiers/CityGuides;
.super Ljava/lang/Object;
.source "CityGuides.java"


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

    .line 87
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 58
    :pswitch_1
    const-string v0, "CITY_GUIDES_CITY_GUIDES_LAUNCH_TTI"

    goto :goto_0

    .line 60
    :pswitch_2
    const-string v0, "CITY_GUIDES_CITY_GUIDES_SOCIAL_UNIT_TTI"

    goto :goto_0

    .line 62
    :pswitch_3
    const-string v0, "CITY_GUIDES_CITY_GUIDES_LOCAL_UNIT_TTI"

    goto :goto_0

    .line 64
    :pswitch_4
    const-string v0, "CITY_GUIDES_CITY_GUIDES_CLASSIC_UNIT_TTI"

    goto :goto_0

    .line 66
    :pswitch_5
    const-string v0, "CITY_GUIDES_CITY_GUIDES_SAVED_TAB_TTI"

    goto :goto_0

    .line 68
    :pswitch_6
    const-string v0, "CITY_GUIDES_CITY_GUIDES_TAB_SWITCH_TTI"

    goto :goto_0

    .line 70
    :pswitch_7
    const-string v0, "CITY_GUIDES_CITY_GUIDES_EVENTS_UNIT_TTI"

    goto :goto_0

    .line 72
    :pswitch_8
    const-string v0, "CITY_GUIDES_CITY_GUIDES_PIVOT_UNIT_TTI"

    goto :goto_0

    .line 74
    :pswitch_9
    const-string v0, "CITY_GUIDES_CITY_GUIDES_CATEGORY_NAVIGATION_TTI"

    goto :goto_0

    .line 76
    :pswitch_a
    const-string v0, "CITY_GUIDES_CITY_GUIDES_FRIENDS_WHO_VISITED_TTI"

    goto :goto_0

    .line 78
    :pswitch_b
    const-string v0, "CITY_GUIDES_CITY_GUIDES_FIND_WIFI_UNIT_TTI"

    goto :goto_0

    .line 80
    :pswitch_c
    const-string v0, "CITY_GUIDES_CITY_GUIDES_NEARBY_FRIENDS_UNIT_TTI"

    goto :goto_0

    .line 82
    :pswitch_d
    const-string v0, "CITY_GUIDES_CITY_GUIDES_FRIENDS_WHO_LIVE_HERE_UNIT_TTI"

    goto :goto_0

    .line 84
    :pswitch_e
    const-string v0, "CITY_GUIDES_CITY_GUIDES_BOOKMARK_TTI"

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
