.class public LUB;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LTB;


# instance fields
.field public a:Ljava/security/MessageDigest;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LUB;->b:Z

    :try_start_0
    const-string v0, "SHA-1"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, LUB;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a([B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LUB;->b:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, LWE;->b(Z)V

    .line 2
    iget-object v0, p0, LUB;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public a()[B
    .locals 2

    .line 3
    iget-boolean v0, p0, LUB;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, LWE;->b(Z)V

    .line 4
    iput-boolean v1, p0, LUB;->b:Z

    .line 5
    iget-object v0, p0, LUB;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LUB;->b:Z

    .line 2
    iget-object v0, p0, LUB;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method
