.class public Lcom/oculus/vrshell/home/CryptoMethods;
.super Ljava/lang/Object;
.source "CryptoMethods.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/vrshell/home/CryptoMethods;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/CryptoMethods;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 25
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 33
    .local v2, "digest":Ljava/security/MessageDigest;
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 39
    .local v4, "is":Ljava/io/InputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 42
    .local v1, "buffer":[B
    :goto_0
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-lez v7, :cond_0

    .line 43
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 51
    .end local v7    # "read":I
    :catch_0
    move-exception v3

    .line 52
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unable to process file for MD5"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 55
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 58
    :goto_1
    throw v8

    .line 26
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 27
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v8, Lcom/oculus/vrshell/home/CryptoMethods;->TAG:Ljava/lang/String;

    const-string v9, "Exception while getting digest: %s"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v6

    .line 34
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    :catch_2
    move-exception v3

    .line 35
    .local v3, "e":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/oculus/vrshell/home/CryptoMethods;->TAG:Ljava/lang/String;

    const-string v9, "Exception while getting FileInputStream: %s"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 45
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "buffer":[B
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v7    # "read":I
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 46
    .local v5, "md5sum":[B
    new-instance v0, Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct {v0, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 47
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "output":Ljava/lang/String;
    const-string v8, "%32s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x20

    const/16 v10, 0x30

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 55
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 56
    :catch_3
    move-exception v3

    .line 57
    .local v3, "e":Ljava/io/IOException;
    sget-object v8, Lcom/oculus/vrshell/home/CryptoMethods;->TAG:Ljava/lang/String;

    const-string v9, "Exception on closing MD5 input stream: %s"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 56
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "md5sum":[B
    .end local v6    # "output":Ljava/lang/String;
    .end local v7    # "read":I
    :catch_4
    move-exception v3

    .line 57
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/oculus/vrshell/home/CryptoMethods;->TAG:Ljava/lang/String;

    const-string v10, "Exception on closing MD5 input stream: %s"

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
