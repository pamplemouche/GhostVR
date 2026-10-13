.class public Lcom/oculus/horizon/feed/model/FeedAttachment;
.super Ljava/lang/Object;
.source "FeedAttachment.java"


# instance fields
.field private final mActors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/Actor;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:Ljava/lang/String;

.field private final mMedia:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/StoryMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/Actor;",
            ">;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/StoryMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/oculus/horizon/feed/model/FeedAttachment;->mId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/oculus/horizon/feed/model/FeedAttachment;->mActors:Lcom/google/common/collect/ImmutableList;

    .line 36
    iput-object p3, p0, Lcom/oculus/horizon/feed/model/FeedAttachment;->mMedia:Lcom/google/common/collect/ImmutableList;

    .line 37
    return-void
.end method

.method static fromResponse(Lcom/oculus/horizon/api/feed/FeedAttachmentResponse;)Lcom/oculus/horizon/feed/model/FeedAttachment;
    .locals 4

    .prologue
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/api/feed/FeedAttachmentResponse;->actor:Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$Actors;

    iget-object v0, v0, Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$Actors;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/feed/ActorResponse;

    .line 21
    invoke-static {v0}, Lcom/oculus/horizon/feed/model/Actor;->fromResponse(Lcom/oculus/horizon/api/feed/ActorResponse;)Lcom/oculus/horizon/feed/model/Actor;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/api/feed/FeedAttachmentResponse;->media:Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$MediaConnection;

    iget-object v0, v0, Lcom/oculus/horizon/api/feed/FeedAttachmentResponse$MediaConnection;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/feed/StoryMediaResponse;

    .line 26
    invoke-static {v0}, Lcom/oculus/horizon/feed/model/StoryMedia;->fromResponse(Lcom/oculus/horizon/api/feed/StoryMediaResponse;)Lcom/oculus/horizon/feed/model/StoryMedia;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 29
    :cond_1
    new-instance v0, Lcom/oculus/horizon/feed/model/FeedAttachment;

    iget-object v3, p0, Lcom/oculus/horizon/api/feed/FeedAttachmentResponse;->id:Ljava/lang/String;

    .line 30
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/horizon/feed/model/FeedAttachment;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public getMedia()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/feed/model/StoryMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/feed/model/FeedAttachment;->mMedia:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method
