.class public Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;
.super Ljava/lang/Object;
.source "GraphQLLogEventParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mActionName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEventName:Ljava/lang/String;

.field private final mPromotionId:Ljava/lang/String;

.field private final mPromotionLoggingData:Ljava/lang/String;

.field private final mSurfaceNuxId:I

.field private final mTriggerName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mEventName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mPromotionId:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mPromotionLoggingData:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mSurfaceNuxId:I

    .line 58
    iput-object p5, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mTriggerName:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mActionName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static getParamsForActionEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;
    .locals 7

    .prologue
    .line 43
    new-instance v0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;

    const-string v1, "ACTION"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getParamsForViewEvent(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;
    .locals 7

    .prologue
    .line 33
    new-instance v0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;

    const-string v1, "VIEW"

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "event"

    iget-object v2, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mEventName:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "promotion_id"

    iget-object v2, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mPromotionId:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "promotion_logging_data"

    iget-object v2, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mPromotionLoggingData:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "surface_nux_id"

    iget v2, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mSurfaceNuxId:I

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "trigger_name"

    iget-object v2, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mTriggerName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mActionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "action"

    iget-object v2, p0, Lcom/oculus/horizon/promotion/query/GraphQLLogEventParams;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 76
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
