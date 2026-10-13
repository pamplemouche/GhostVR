.class public Lcom/oculus/secure/trustedapp/AppSignatureHash;
.super Ljava/lang/Object;
.source "AppSignatureHash.java"


# static fields
.field private static final SHA1_KEY_HASH_LENGTH:I = 0x1b

.field public static final SHA256:Ljava/lang/String; = "SHA-256"

.field private static final SHA256_KEY_HASH_LENGTH:I = 0x2b


# instance fields
.field private name:Ljava/lang/String;

.field private sha1Hash:Ljava/lang/String;

.field private sha256Hash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sha1Hash"    # Ljava/lang/String;
    .param p2, "sha256Hash"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "test"

    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/secure/trustedapp/AppSignatureHash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sha1Hash"    # Ljava/lang/String;
    .param p3, "sha256Hash"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->name:Ljava/lang/String;

    .line 27
    if-nez p2, :cond_0

    .line 28
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must provide SHA1 key hash."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->setSha1Hash(Ljava/lang/String;)V

    .line 31
    if-eqz p3, :cond_1

    .line 32
    invoke-virtual {p0, p3}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->setSha256Hash(Ljava/lang/String;)V

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 68
    instance-of v6, p1, Lcom/oculus/secure/trustedapp/AppSignatureHash;

    if-eqz v6, :cond_0

    move-object v2, p1

    .line 69
    check-cast v2, Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .line 72
    .local v2, "signature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    invoke-virtual {p0}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "mySha2":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "signatureSha2":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 83
    .end local v1    # "mySha2":Ljava/lang/String;
    .end local v2    # "signature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    .end local v4    # "signatureSha2":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 78
    .restart local v1    # "mySha2":Ljava/lang/String;
    .restart local v2    # "signature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    .restart local v4    # "signatureSha2":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "mySha1":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/oculus/secure/trustedapp/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "signatureSha1":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1Hash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256Hash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSha1Hash(Ljava/lang/String;)V
    .locals 2
    .param p1, "sha1Hash"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid SHA1 key hash - should be 160-bit."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSha256Hash(Ljava/lang/String;)V
    .locals 2
    .param p1, "sha256Hash"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid SHA256 key hash - should be 256-bit."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/oculus/secure/trustedapp/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    .line 64
    return-void
.end method
