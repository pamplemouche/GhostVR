.class public Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;
.super Ljava/lang/Object;
.source "GraphQLVRLifecycleParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final deviceId:Ljava/lang/String;

.field private final lastAppsInVR:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionLengthMs:J

.field private final timeSinceSessionMs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams$RecentAppInfo;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->deviceId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->lastAppsInVR:Lcom/google/common/collect/ImmutableList;

    .line 31
    iput-wide p3, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->sessionLengthMs:J

    .line 32
    iput-wide p5, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->timeSinceSessionMs:J

    .line 33
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->deviceId:Ljava/lang/String;

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "last_apps_in_vr"

    iget-object v2, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->lastAppsInVR:Lcom/google/common/collect/ImmutableList;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "session_length_ms"

    iget-wide v2, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->sessionLengthMs:J

    .line 41
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "time_since_session_ms"

    iget-wide v2, p0, Lcom/oculus/horizon/vr_lifecycle/query/GraphQLVRLifecycleParams;->timeSinceSessionMs:J

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/api/graphql/GraphQLParamsHelper;->encodeMutationParams(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
