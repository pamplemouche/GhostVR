.class public Lcom/facebook/quicklog/identifiers/LocalSurface;
.super Ljava/lang/Object;
.source "LocalSurface.java"


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
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 60
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "LOCAL_SURFACE_LOAD_HOME_TTRC"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "LOCAL_SURFACE_LOAD_CATEGORY_TYPEAHEAD_NULL_STATE_TTRC"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "LOCAL_SURFACE_LOAD_ENDPOINT_TTRC"

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v0, "LOCAL_SURFACE_LOAD_CATEGORY_TYPEAHEAD_RESULTS_TTRC"

    goto :goto_0

    .line 55
    :pswitch_4
    const-string v0, "LOCAL_SURFACE_LOAD_LOCATION_TYPEAHEAD_RESULTS_TTRC"

    goto :goto_0

    .line 57
    :pswitch_5
    const-string v0, "LOCAL_SURFACE_LOAD_LOCATION_TYPEAHEAD_NULL_STATE_TTRC"

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
