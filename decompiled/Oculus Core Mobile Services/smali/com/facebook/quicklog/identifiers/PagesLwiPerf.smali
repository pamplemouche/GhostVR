.class public Lcom/facebook/quicklog/identifiers/PagesLwiPerf;
.super Ljava/lang/Object;
.source "PagesLwiPerf.java"


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

    .line 62
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    const-string v0, "PAGES_LWI_PERF_FETCH_PROMOTION_FROM_SERVER"

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "PAGES_LWI_PERF_BOOST_POST_PICKER_TTI"

    goto :goto_0

    .line 51
    :pswitch_2
    const-string v0, "PAGES_LWI_PERF_PAGES_LWI_PERF_PROMOTE_PAGE_TTI"

    goto :goto_0

    .line 53
    :pswitch_3
    const-string v0, "PAGES_LWI_PERF_RN_LWI_BOOST_POST_TTI"

    goto :goto_0

    .line 55
    :pswitch_4
    const-string v0, "PAGES_LWI_PERF_RN_LWI_BOOST_WEBSITE_TTI"

    goto :goto_0

    .line 57
    :pswitch_5
    const-string v0, "PAGES_LWI_PERF_RN_LWI_BOOST_LOCAL_AWARENESS_TTI"

    goto :goto_0

    .line 59
    :pswitch_6
    const-string v0, "PAGES_LWI_PERF_LWI_TTI"

    goto :goto_0

    .line 45
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
