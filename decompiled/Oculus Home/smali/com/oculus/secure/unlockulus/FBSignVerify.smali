.class public Lcom/oculus/secure/unlockulus/FBSignVerify;
.super Ljava/lang/Object;
.source "FBSignVerify.java"


# static fields
.field public static final SIG_ALG:Ljava/lang/String; = "SHA256withRSA"


# instance fields
.field private final mCertificate:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/oculus/secure/unlockulus/FBSignVerify;->mCertificate:Ljava/security/cert/X509Certificate;

    .line 25
    return-void
.end method


# virtual methods
.method public verify(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 9
    .param p1, "dataStream"    # Ljava/io/InputStream;
    .param p2, "signatureStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 31
    :try_start_0
    const-string v6, "SHA256withRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 32
    .local v5, "signature":Ljava/security/Signature;
    iget-object v6, p0, Lcom/oculus/secure/unlockulus/FBSignVerify;->mCertificate:Ljava/security/cert/X509Certificate;

    invoke-virtual {v5, v6}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 42
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v7, :cond_0

    .line 44
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v1, v6, v3}, Ljava/security/Signature;->update([BII)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 33
    .end local v1    # "buf":[B
    .end local v2    # "e":Ljava/security/SignatureException;
    .end local v3    # "read":I
    .end local v5    # "signature":Ljava/security/Signature;
    :catch_1
    move-exception v2

    .line 34
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 35
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    .line 36
    .local v2, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 50
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    .restart local v1    # "buf":[B
    .restart local v3    # "read":I
    .restart local v5    # "signature":Ljava/security/Signature;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 52
    invoke-virtual {v0, v1, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 58
    .local v4, "sigBytes":[B
    :try_start_2
    invoke-virtual {v5, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_3

    move-result v6

    return v6

    .line 59
    :catch_3
    move-exception v2

    .line 60
    .local v2, "e":Ljava/security/SignatureException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
