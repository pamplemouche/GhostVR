.class public Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;
.super Ljava/lang/Object;
.source "LinkedAccount.java"


# instance fields
.field private mAccessToken:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

.field private mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mUserID:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mAccessToken:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    check-cast p1, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;

    .line 45
    iget-object v1, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mUserID:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mUserID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mAccessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mAccessToken:Ljava/lang/String;

    .line 46
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    iget-object v2, p1, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 47
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProvider()Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mUserID:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mAccessToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 66
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string/jumbo v1, "service_provider"

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    const-class v0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mUserID:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mAccessToken:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "service_provider"

    iget-object v2, p0, Lcom/oculus/horizon/linkedaccounts/model/LinkedAccount;->mServiceProvider:Lcom/oculus/horizon/linkedaccounts/model/ServiceProvider;

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
