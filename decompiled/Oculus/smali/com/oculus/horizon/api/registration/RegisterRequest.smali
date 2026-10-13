.class public Lcom/oculus/horizon/api/registration/RegisterRequest;
.super Lcom/oculus/http/core/base/ApiRequest;
.source "RegisterRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiRequest",
        "<",
        "Lcom/oculus/horizon/api/registration/RegisterResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public marketingEmailOptInStatus:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public preferredLocale:Ljava/lang/String;

.field public tosAgreedId:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiRequest;-><init>()V

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

    const-string v1, "email"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->email:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "alias"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->username:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "password"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->password:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "first_name"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->firstName:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "last_name"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->lastName:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->preferredLocale:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "accepted_tos_id"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->tosAgreedId:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "pin"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->pin:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "email_marketing_opt_in_status"

    iget-object v2, p0, Lcom/oculus/horizon/api/registration/RegisterRequest;->marketingEmailOptInStatus:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
