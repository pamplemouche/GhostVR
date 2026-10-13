.class public Lcom/oculus/standalone/net/StandaloneInitialInstallAppsRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "StandaloneInitialInstallAppsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/obe/RequiredApplicationsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mRequestParams:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

    .line 14
    const-string v0, "hmd"

    const-string v1, "high_priority"

    .line 16
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, p1, v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/standalone/net/StandaloneInitialInstallAppsRequest;->mRequestParams:Lcom/google/common/collect/ImmutableMap;

    .line 17
    return-void
.end method


# virtual methods
.method public getParams()Lcom/google/common/collect/ImmutableMap;
    .locals 1
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
    .line 20
    iget-object v0, p0, Lcom/oculus/standalone/net/StandaloneInitialInstallAppsRequest;->mRequestParams:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method
