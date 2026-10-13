.class public Lcom/facebook/quicklog/identifiers/PagesInsights;
.super Ljava/lang/Object;
.source "PagesInsights.java"


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
    .line 38
    sparse-switch p0, :sswitch_data_0

    .line 51
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 40
    :sswitch_0
    const-string v0, "PAGES_INSIGHTS_AUDIENCE_LIST_TTI"

    goto :goto_0

    .line 42
    :sswitch_1
    const-string v0, "PAGES_INSIGHTS_POST_LIST_TTI"

    goto :goto_0

    .line 44
    :sswitch_2
    const-string v0, "PAGES_INSIGHTS_SINGLE_POST_TTI"

    goto :goto_0

    .line 46
    :sswitch_3
    const-string v0, "PAGES_INSIGHTS_HOME_TTI"

    goto :goto_0

    .line 48
    :sswitch_4
    const-string v0, "PAGES_INSIGHTS_MOBILE_HOME_TTRC"

    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method
