.class public Lcom/oculus/horizon/feed/model/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# instance fields
.field private final mStories:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/horizon/feed/model/Feed;->mStories:Lcom/google/common/collect/ImmutableList;

    .line 29
    return-void
.end method

.method public static fromResponse(Lcom/oculus/horizon/api/feed/FeedResponse;)Lcom/oculus/horizon/feed/model/Feed;
    .locals 3

    .prologue
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/api/feed/FeedResponse;->viewer:Lcom/oculus/horizon/api/feed/FeedResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/feed/FeedResponse$Viewer;->feed:Lcom/oculus/horizon/api/feed/FeedResponse$Viewer$Feed;

    iget-object v0, v0, Lcom/oculus/horizon/api/feed/FeedResponse$Viewer$Feed;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/feed/FeedStoryResponse;

    .line 22
    invoke-static {v0}, Lcom/oculus/horizon/feed/model/FeedStory;->fromResponse(Lcom/oculus/horizon/api/feed/FeedStoryResponse;)Lcom/oculus/horizon/feed/model/FeedStory;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/oculus/horizon/feed/model/Feed;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/feed/model/Feed;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public getStories()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feedbuilder/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/Feed;->mStories:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
