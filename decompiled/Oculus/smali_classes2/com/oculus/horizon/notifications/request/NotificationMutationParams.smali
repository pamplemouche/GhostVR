.class public Lcom/oculus/horizon/notifications/request/NotificationMutationParams;
.super Ljava/lang/Object;
.source "NotificationMutationParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final isRead:Z

.field public final notificationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/oculus/horizon/notifications/request/NotificationMutationParams;->notificationId:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lcom/oculus/horizon/notifications/request/NotificationMutationParams;->isRead:Z

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "notification_id"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/request/NotificationMutationParams;->notificationId:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "is_read"

    iget-boolean v2, p0, Lcom/oculus/horizon/notifications/request/NotificationMutationParams;->isRead:Z

    .line 32
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
