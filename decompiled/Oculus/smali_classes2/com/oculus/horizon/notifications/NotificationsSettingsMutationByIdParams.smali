.class public Lcom/oculus/horizon/notifications/NotificationsSettingsMutationByIdParams;
.super Ljava/lang/Object;
.source "NotificationsSettingsMutationByIdParams.java"


# instance fields
.field public final medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

.field public final notification_id:Ljava/lang/String;

.field public final opt_out_value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/notifications/api/NotificationMedium;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationByIdParams;->medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 26
    iput-object p2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationByIdParams;->notification_id:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationByIdParams;->opt_out_value:Ljava/lang/Boolean;

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "medium"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationByIdParams;->medium:Lcom/oculus/horizon/notifications/api/NotificationMedium;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "notification_id"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationByIdParams;->notification_id:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "opt_out_value"

    iget-object v2, p0, Lcom/oculus/horizon/notifications/NotificationsSettingsMutationByIdParams;->opt_out_value:Ljava/lang/Boolean;

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
