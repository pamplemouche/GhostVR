.class public Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;
.super Ljava/lang/Object;
.source "NotificationsSettingsMutationParams.java"


# instance fields
.field public final isDisabled:Ljava/lang/Boolean;

.field public final medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;->medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 23
    iput-object p2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;->type:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;->isDisabled:Ljava/lang/Boolean;

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

    const-string v1, "medium"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;->medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;->type:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "is_off"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationParams;->isDisabled:Ljava/lang/Boolean;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
