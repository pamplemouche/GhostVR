.class public Lcom/oculus/vrapi/AppSignatureHash;
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

    const-string v0, "test"

    .line 23
    invoke-direct {p0, v0, p1, p2}, Lcom/oculus/vrapi/AppSignatureHash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/oculus/vrapi/AppSignatureHash;->name:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p0, p2}, Lcom/oculus/vrapi/AppSignatureHash;->setSha1Hash(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 33
    invoke-virtual {p0, p3}, Lcom/oculus/vrapi/AppSignatureHash;->setSha256Hash(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Must provide SHA1 key hash."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 69
    instance-of v0, p1, Lcom/oculus/vrapi/AppSignatureHash;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 70
    check-cast p1, Lcom/oculus/vrapi/AppSignatureHash;

    .line 73
    invoke-virtual {p0}, Lcom/oculus/vrapi/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/oculus/vrapi/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/vrapi/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/oculus/vrapi/AppSignatureHash;->getSha1Hash()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/oculus/vrapi/AppSignatureHash;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSha1Hash()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/oculus/vrapi/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256Hash()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/oculus/vrapi/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/oculus/vrapi/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrapi/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oculus/vrapi/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    goto :goto_0

    :goto_1
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/oculus/vrapi/AppSignatureHash;->name:Ljava/lang/String;

    return-void
.end method

.method public setSha1Hash(Ljava/lang/String;)V
    .locals 2

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    .line 53
    iput-object p1, p0, Lcom/oculus/vrapi/AppSignatureHash;->sha1Hash:Ljava/lang/String;

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Invalid SHA1 key hash - should be 160-bit."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSha256Hash(Ljava/lang/String;)V
    .locals 2

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 64
    iput-object p1, p0, Lcom/oculus/vrapi/AppSignatureHash;->sha256Hash:Ljava/lang/String;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Invalid SHA256 key hash - should be 256-bit."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
