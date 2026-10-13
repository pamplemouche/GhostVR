.class public Lcom/facebook/quicklog/identifiers/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


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
    .line 41
    packed-switch p0, :pswitch_data_0

    .line 58
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    const-string v0, "BROWSER_WEB_VIEW_LOAD"

    goto :goto_0

    .line 45
    :pswitch_1
    const-string v0, "BROWSER_BROWSER_CONTEXT_NETWORK_FETCH"

    goto :goto_0

    .line 47
    :pswitch_2
    const-string v0, "BROWSER_BROWSER_PIVOTS_HIDE"

    goto :goto_0

    .line 49
    :pswitch_3
    const-string v0, "BROWSER_BROWSER_PIVOTS_SHOW"

    goto :goto_0

    .line 51
    :pswitch_4
    const-string v0, "BROWSER_PERF_MARK_BROWSERFRAGMENT_INITIALIZE"

    goto :goto_0

    .line 53
    :pswitch_5
    const-string v0, "BROWSER_PERF_MARK_FIRST_WEBVIEW_INVALIDATE"

    goto :goto_0

    .line 55
    :pswitch_6
    const-string v0, "BROWSER_PERF_MARK_PAGE_FINISHED"

    goto :goto_0

    .line 41
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
