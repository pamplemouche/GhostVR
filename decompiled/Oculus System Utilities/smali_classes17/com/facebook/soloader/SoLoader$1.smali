.class final Lcom/facebook/soloader/SoLoader$1;
.super Ljava/lang/Object;
.source "SoLoader.java"

# interfaces
.implements Lcom/facebook/soloader/SoFileLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/soloader/SoLoader;->initSoLoader(Lcom/facebook/soloader/SoFileLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hasNativeLoadMethod:Z

.field final synthetic val$localLdLibraryPath:Ljava/lang/String;

.field final synthetic val$localLdLibraryPathNoZips:Ljava/lang/String;

.field final synthetic val$nativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

.field final synthetic val$runtime:Ljava/lang/Runtime;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runtime;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/facebook/soloader/SoLoader$1;->val$hasNativeLoadMethod:Z

    iput-object p2, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPathNoZips:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/soloader/SoLoader$1;->val$runtime:Ljava/lang/Runtime;

    iput-object p5, p0, Lcom/facebook/soloader/SoLoader$1;->val$nativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLibHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "libPath"    # Ljava/lang/String;

    .prologue
    .line 389
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v6, "libFile":Ljava/io/File;
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 391
    .local v3, "digest":Ljava/security/MessageDigest;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4

    .local v7, "libInStream":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 392
    const/16 v8, 0x1000

    :try_start_1
    new-array v1, v8, [B

    .line 394
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "bytesRead":I
    if-lez v2, :cond_2

    .line 395
    const/4 v8, 0x0

    invoke-virtual {v3, v1, v8, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 391
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v8

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    :catchall_0
    move-exception v9

    move-object v15, v9

    move-object v9, v8

    move-object v8, v15

    :goto_1
    if-eqz v7, :cond_0

    if-eqz v9, :cond_4

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_2
    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4

    .line 399
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v6    # "libFile":Ljava/io/File;
    .end local v7    # "libInStream":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    .line 400
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    .end local v5    # "e":Ljava/io/IOException;
    .local v4, "digestStr":Ljava/lang/String;
    :cond_1
    :goto_3
    return-object v4

    .line 397
    .end local v4    # "digestStr":Ljava/lang/String;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "libFile":Ljava/io/File;
    .restart local v7    # "libInStream":Ljava/io/InputStream;
    :cond_2
    :try_start_5
    const-string v8, "%32x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/math/BigInteger;

    const/4 v13, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    .line 398
    .restart local v4    # "digestStr":Ljava/lang/String;
    if-eqz v7, :cond_1

    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_2
    move-exception v8

    :try_start_7
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 401
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "digestStr":Ljava/lang/String;
    .end local v6    # "libFile":Ljava/io/File;
    .end local v7    # "libInStream":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    .line 402
    .local v5, "e":Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    .line 405
    .restart local v4    # "digestStr":Ljava/lang/String;
    goto :goto_3

    .line 398
    .end local v5    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "libFile":Ljava/io/File;
    .restart local v7    # "libInStream":Ljava/io/InputStream;
    :cond_3
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 403
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "digestStr":Ljava/lang/String;
    .end local v6    # "libFile":Ljava/io/File;
    .end local v7    # "libInStream":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    .line 404
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "digestStr":Ljava/lang/String;
    goto :goto_3

    .line 398
    .end local v4    # "digestStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "digest":Ljava/security/MessageDigest;
    .restart local v6    # "libFile":Ljava/io/File;
    .restart local v7    # "libInStream":Ljava/io/InputStream;
    :catch_5
    move-exception v10

    :try_start_9
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    :catchall_1
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public load(Ljava/lang/String;I)V
    .locals 11
    .param p1, "pathToSoFile"    # Ljava/lang/String;
    .param p2, "loadFlags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "error":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/facebook/soloader/SoLoader$1;->val$hasNativeLoadMethod:Z

    if-eqz v6, :cond_5

    .line 351
    and-int/lit8 v6, p2, 0x4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 352
    .local v3, "inZip":Z
    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPath:Ljava/lang/String;

    .line 354
    .local v4, "path":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/facebook/soloader/SoLoader$1;->val$runtime:Ljava/lang/Runtime;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 355
    :try_start_1
    iget-object v5, p0, Lcom/facebook/soloader/SoLoader$1;->val$nativeLoadRuntimeMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/facebook/soloader/SoLoader$1;->val$runtime:Ljava/lang/Runtime;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    const-class v10, Lcom/facebook/soloader/SoLoader;

    .line 358
    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v4, v8, v9

    .line 357
    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 359
    if-eqz v2, :cond_3

    .line 360
    new-instance v5, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v5, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v5

    .line 362
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Cannot load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 369
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    if-eqz v2, :cond_0

    .line 370
    const-string v6, "SoLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error when loading lib: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " lib hash: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 375
    invoke-direct {p0, p1}, Lcom/facebook/soloader/SoLoader$1;->getLibHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " search path is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    throw v5

    .end local v3    # "inZip":Z
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 351
    goto :goto_0

    .line 352
    .restart local v3    # "inZip":Z
    :cond_2
    iget-object v4, p0, Lcom/facebook/soloader/SoLoader$1;->val$localLdLibraryPathNoZips:Ljava/lang/String;

    goto :goto_1

    .line 362
    .restart local v4    # "path":Ljava/lang/String;
    :cond_3
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    if-eqz v2, :cond_4

    .line 370
    const-string v5, "SoLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when loading lib: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lib hash: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 375
    invoke-direct {p0, p1}, Lcom/facebook/soloader/SoLoader$1;->getLibHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " search path is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v3    # "inZip":Z
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 381
    :cond_5
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_3

    .line 363
    .restart local v3    # "inZip":Z
    .restart local v4    # "path":Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object v1, v5

    goto/16 :goto_2

    :catch_2
    move-exception v5

    move-object v1, v5

    goto/16 :goto_2
.end method
