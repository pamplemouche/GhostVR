.class public Lcom/facebook/secure/trustedapp/AppSignatureHash;
.super Ljava/lang/Object;
.source "AppSignatureHash.java"


# instance fields
.field private name:Ljava/lang/String;

.field private sha1Hash:Ljava/lang/String;

.field private sha256Hash:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 24
    const-string/jumbo v0, "test"

    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/secure/trustedapp/AppSignatureHash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->name:Ljava/lang/String;

    .line 29
    if-nez p2, :cond_0

    .line 30
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must provide SHA1 key hash."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-virtual {p0, p2}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->setSha1Hash(Ljava/lang/String;)V

    .line 33
    if-eqz p3, :cond_1

    .line 34
    invoke-virtual {p0, p3}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->setSha256Hash(Ljava/lang/String;)V

    .line 36
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    instance-of v1, p1, Lcom/facebook/secure/trustedapp/AppSignatureHash;

    if-eqz v1, :cond_0

    .line 72
    check-cast p1, Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 75
    invoke-virtual {p0}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v2

    .line 77
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object v2

    .line 83
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSha1Hash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256Hash()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setSha1Hash(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid SHA1 key hash - should be 160-bit."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setSha256Hash(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid SHA256 key hash - should be 256-bit."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/facebook/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    .line 67
    return-void
.end method
