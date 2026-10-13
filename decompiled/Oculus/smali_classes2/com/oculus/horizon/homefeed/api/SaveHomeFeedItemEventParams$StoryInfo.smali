.class public Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;
.super Ljava/lang/Object;
.source "SaveHomeFeedItemEventParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoryInfo"
.end annotation


# instance fields
.field public final mStoryId:Ljava/lang/String;

.field public final mTraceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;->mTraceId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;->mStoryId:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "trace_id"

    iget-object v2, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;->mTraceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "story_id"

    iget-object v2, p0, Lcom/oculus/horizon/homefeed/api/SaveHomeFeedItemEventParams$StoryInfo;->mStoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
