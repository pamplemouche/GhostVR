.class public Lcom/oculus/horizon/notifications/request/NotificationSeenMutationParams;
.super Ljava/lang/Object;
.source "NotificationSeenMutationParams.java"


# instance fields
.field public final newSeenState:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

.field public final notificationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/oculus/horizon/notifications/api/NotificationSeenState;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/horizon/notifications/request/NotificationSeenMutationParams;->notificationId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/oculus/horizon/notifications/request/NotificationSeenMutationParams;->newSeenState:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 20
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "notification_id"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/request/NotificationSeenMutationParams;->notificationId:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "new_seen_state"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/request/NotificationSeenMutationParams;->newSeenState:Lcom/oculus/horizon/notifications/api/NotificationSeenState;

    .line 27
    invoke-virtual {v2}, Lcom/oculus/horizon/notifications/api/NotificationSeenState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
