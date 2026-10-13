.class public Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "RegisterPushTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public app_version:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

.field public os_version:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->token:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->device_id:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->os_version:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->app_version:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "client_mutation_id"

    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->token:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->device_id:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "os_version"

    iget-object v2, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->os_version:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "app_version"

    iget-object v2, p0, Lcom/oculus/horizon/api/push/RegisterPushTokenRequest;->app_version:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
