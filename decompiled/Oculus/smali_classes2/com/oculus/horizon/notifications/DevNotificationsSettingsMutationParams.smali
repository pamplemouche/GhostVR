.class public Lcom/oculus/horizon/notifications/DevNotificationsSettingsMutationParams;
.super Ljava/lang/Object;
.source "DevNotificationsSettingsMutationParams.java"


# instance fields
.field public final appGroupId:Ljava/lang/String;

.field public final isDisabled:Ljava/lang/Boolean;

.field public final medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMutationParams;->medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 25
    iput-object p2, p0, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMutationParams;->appGroupId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMutationParams;->isDisabled:Ljava/lang/Boolean;

    .line 27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "medium"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMutationParams;->medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "app_group_id"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMutationParams;->appGroupId:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "is_off"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/DevNotificationsSettingsMutationParams;->isDisabled:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
