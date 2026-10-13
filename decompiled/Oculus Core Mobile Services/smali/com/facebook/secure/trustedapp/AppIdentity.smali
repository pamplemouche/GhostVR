.class public Lcom/facebook/secure/trustedapp/AppIdentity;
.super Ljava/lang/Object;
.source "AppIdentity.java"


# instance fields
.field private final domainName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final packageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final uid:I

.field private final versionName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/facebook/secure/trustedapp/AppSignatureHash;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Lcom/facebook/secure/trustedapp/AppSignatureHash;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->uid:I

    .line 74
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->packageNames:Ljava/util/List;

    .line 75
    iput-object p3, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 76
    iput-object p4, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->versionName:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->domainName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lcom/facebook/secure/trustedapp/AppSignatureHash;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Lcom/facebook/secure/trustedapp/AppSignatureHash;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->uid:I

    .line 60
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->packageNames:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 62
    iput-object p4, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->versionName:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->domainName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static print(Lcom/facebook/secure/trustedapp/AppIdentity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/facebook/secure/trustedapp/AppIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 135
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/secure/trustedapp/AppIdentity;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static printPackageName(Lcom/facebook/secure/trustedapp/AppIdentity;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/facebook/secure/trustedapp/AppIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const-string v0, "no_app_identity"

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getDomainName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->packageNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->packageNames:Ljava/util/List;

    return-object v0
.end method

.method public getSignatureHash()Lcom/facebook/secure/trustedapp/AppSignatureHash;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->uid:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string v1, "caller_uid"

    iget v2, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->uid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    invoke-virtual {p0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_0

    .line 151
    const-string v2, "caller_package_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "caller_version_name"

    iget-object v2, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->domainName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 157
    const-string v1, "caller_domain"

    iget-object v2, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppIdentity{uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->packageNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sha1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 124
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sha2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    if-nez v0, :cond_1

    const-string v0, "null"

    .line 126
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->versionName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->domainName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "null"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 124
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->signatureHash:Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 126
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->versionName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppIdentity;->domainName:Ljava/lang/String;

    goto :goto_3
.end method
