.class public Lcom/facebook/quicklog/identifiers/IgScrollPerf;
.super Ljava/lang/Object;
.source "IgScrollPerf.java"


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
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 108
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 69
    :pswitch_1
    const-string v0, "IG_SCROLL_PERF_SCROLL_PERF"

    goto :goto_0

    .line 71
    :pswitch_2
    const-string v0, "IG_SCROLL_PERF_IG_NEWSFEED_FOLLOWING_SCROLL_PERF"

    goto :goto_0

    .line 73
    :pswitch_3
    const-string v0, "IG_SCROLL_PERF_IG_NEWSFEED_YOU_SCROLL_PERF"

    goto :goto_0

    .line 75
    :pswitch_4
    const-string v0, "IG_SCROLL_PERF_IG_PROFILE_SCROLL_PERF"

    goto :goto_0

    .line 77
    :pswitch_5
    const-string v0, "IG_SCROLL_PERF_IG_STORIES_SCROLL_PERF"

    goto :goto_0

    .line 79
    :pswitch_6
    const-string v0, "IG_SCROLL_PERF_IG_EXPLORE_POPULAR_SCROLL_PERF"

    goto :goto_0

    .line 81
    :pswitch_7
    const-string v0, "IG_SCROLL_PERF_IG_DIRECT_THREAD_SCROLL_PERF"

    goto :goto_0

    .line 83
    :pswitch_8
    const-string v0, "IG_SCROLL_PERF_IG_DIRECT_INBOX_SCROLL_PERF"

    goto :goto_0

    .line 85
    :pswitch_9
    const-string v0, "IG_SCROLL_PERF_POTENTIAL_OBJECT_RECYCLING"

    goto :goto_0

    .line 87
    :pswitch_a
    const-string v0, "IG_SCROLL_PERF_IG_DIRECT_INBOX_SEARCH_SCROLL_PERF"

    goto :goto_0

    .line 89
    :pswitch_b
    const-string v0, "IG_SCROLL_PERF_IG_CONTEXTUAL_CHAIN_SCROLL_PERF"

    goto :goto_0

    .line 91
    :pswitch_c
    const-string v0, "IG_SCROLL_PERF_IG_HORIZONTAL_SWIPE_SCROLL_PERF"

    goto :goto_0

    .line 93
    :pswitch_d
    const-string v0, "IG_SCROLL_PERF_IG_MUSIC_BROWSER_SCROLL_PERF"

    goto :goto_0

    .line 95
    :pswitch_e
    const-string v0, "IG_SCROLL_PERF_IG_STORIES_GALLERY_SCROLL_PERF"

    goto :goto_0

    .line 97
    :pswitch_f
    const-string v0, "IG_SCROLL_PERF_IG_FEED_HASHTAG_SCROLL_PERF"

    goto :goto_0

    .line 99
    :pswitch_10
    const-string v0, "IG_SCROLL_PERF_IG_FEED_TIMELINE_SCROLL_PERF"

    goto :goto_0

    .line 101
    :pswitch_11
    const-string v0, "IG_SCROLL_PERF_IG_COMMENTS_SCROLL_PERF"

    goto :goto_0

    .line 103
    :pswitch_12
    const-string v0, "IG_SCROLL_PERF_IG_STORIES_ARCHIVE_SCROLL_PERF"

    goto :goto_0

    .line 105
    :pswitch_13
    const-string v0, "IG_SCROLL_PERF_IG_SCROLL_MOBILE_BOOST"

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
