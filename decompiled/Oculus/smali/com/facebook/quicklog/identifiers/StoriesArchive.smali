.class public Lcom/facebook/quicklog/identifiers/StoriesArchive;
.super Ljava/lang/Object;
.source "StoriesArchive.java"


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

    .line 57
    :pswitch_0
    const-string v0, "UNDEFINED_QPL_EVENT"

    :goto_0
    return-object v0

    .line 44
    :pswitch_1
    const-string v0, "STORIES_ARCHIVE_STORIES_VIEWER_TTI"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "STORIES_ARCHIVE_VIEWERS_LIST_TTI"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "STORIES_ARCHIVE_PAGINATION_TTI"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string v0, "STORIES_ARCHIVE_THUMBNAIL_TTI"

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "STORIES_ARCHIVE_ARCHIVE_GRID_TTI"

    goto :goto_0

    .line 54
    :pswitch_6
    const-string v0, "STORIES_ARCHIVE_SCROLL_PERF"

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
