.class public Lcom/facebook/quicklog/identifiers/StoriesViewerPerformanceAndroid;
.super Ljava/lang/Object;
.source "StoriesViewerPerformanceAndroid.java"


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
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 43
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    const-string v0, "STORIES_VIEWER_PERFORMANCE_ANDROID_INITIAL_LOAD_TTRC"

    goto :goto_0

    .line 38
    :pswitch_1
    const-string v0, "STORIES_VIEWER_PERFORMANCE_ANDROID_BUCKET_TRANSITION_TTRC"

    goto :goto_0

    .line 40
    :pswitch_2
    const-string v0, "STORIES_VIEWER_PERFORMANCE_ANDROID_THREAD_TRANSITION_TTRC"

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
