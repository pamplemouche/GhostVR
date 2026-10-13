.class public Lcom/facebook/quicklog/identifiers/IgDirect;
.super Ljava/lang/Object;
.source "IgDirect.java"


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

    .line 64
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 47
    :pswitch_1
    const-string v0, "IG_DIRECT_IG_DIRECT_OPEN_THREAD_TTI"

    goto :goto_0

    .line 49
    :pswitch_2
    const-string v0, "IG_DIRECT_IG_DIRECT_INBOX_FETCH_TTI"

    goto :goto_0

    .line 51
    :pswitch_3
    const-string v0, "IG_DIRECT_IRIS_TIME_TO_NEW_CONTENT"

    goto :goto_0

    .line 53
    :pswitch_4
    const-string v0, "IG_DIRECT_IG_DIRECT_OPEN_INBOX_TTI"

    goto :goto_0

    .line 55
    :pswitch_5
    const-string v0, "IG_DIRECT_IG_DIRECT_PARSE_MESSAGES"

    goto :goto_0

    .line 57
    :pswitch_6
    const-string v0, "IG_DIRECT_IG_DIRECT_PARSE_THREAD_SUMMARIES"

    goto :goto_0

    .line 59
    :pswitch_7
    const-string v0, "IG_DIRECT_RECEIVE_LATENCY"

    goto :goto_0

    .line 61
    :pswitch_8
    const-string v0, "IG_DIRECT_THREAD_SPINNER_VISIBLE"

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
