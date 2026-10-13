.class public Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;
.super Ljava/lang/Object;
.source "SaveHomeFeedItemEventParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mFeedback:Ljava/lang/String;

.field private final mStoryInfo:Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;->mFeedback:Ljava/lang/String;

    .line 48
    new-instance v0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;

    invoke-direct {v0, p2, p3}, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;->mStoryInfo:Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;

    .line 49
    return-void
.end method

.method public static getParamsForUnsaveEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;

    const-string v1, "UNSAVE"

    invoke-direct {v0, v1, p0, p1}, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "feedback"

    iget-object v2, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;->mFeedback:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "story_infos"

    iget-object v2, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;->mStoryInfo:Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;

    .line 56
    invoke-virtual {v2}, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
