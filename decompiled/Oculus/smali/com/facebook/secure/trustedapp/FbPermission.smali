.class public Lcom/facebook/secure/trustedapp/FbPermission;
.super Ljava/lang/Object;
.source "FbPermission.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale",
        "CatchGeneralException"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/facebook/secure/trustedapp/FbPermission;


# instance fields
.field private mReporter:Lcom/facebook/secure/logger/Reporter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/facebook/secure/logger/LocalReporter;

    invoke-direct {v0}, Lcom/facebook/secure/logger/LocalReporter;-><init>()V

    iput-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    .line 53
    return-void
.end method

.method private static binaryEncode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;-><init>()V

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->update(Ljava/util/Collection;B)V

    .line 444
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->update(Ljava/lang/String;B)V

    .line 445
    const/4 v1, 0x3

    invoke-virtual {v0, p2, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->update(Ljava/lang/String;B)V

    .line 446
    const/4 v1, 0x4

    invoke-virtual {v0, p3, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->update(Ljava/lang/String;B)V

    .line 447
    const/4 v1, 0x5

    invoke-virtual {v0, p4, v1}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->update(Ljava/lang/String;B)V

    .line 448
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/FbPermissionEncoder;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method private static doSignatureVerification(Ljava/security/PublicKey;[B[BLjava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {p3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 456
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 457
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 458
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized get()Lcom/facebook/secure/trustedapp/FbPermission;
    .locals 2

    .prologue
    .line 57
    const-class v1, Lcom/facebook/secure/trustedapp/FbPermission;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/secure/trustedapp/FbPermission;->sInstance:Lcom/facebook/secure/trustedapp/FbPermission;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermission;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/FbPermission;-><init>()V

    sput-object v0, Lcom/facebook/secure/trustedapp/FbPermission;->sInstance:Lcom/facebook/secure/trustedapp/FbPermission;

    .line 60
    :cond_0
    sget-object v0, Lcom/facebook/secure/trustedapp/FbPermission;->sInstance:Lcom/facebook/secure/trustedapp/FbPermission;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized get(Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/trustedapp/FbPermission;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lcom/facebook/secure/trustedapp/FbPermission;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/facebook/secure/trustedapp/FbPermission;->get()Lcom/facebook/secure/trustedapp/FbPermission;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/secure/trustedapp/FbPermission;->setReporter(Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/trustedapp/FbPermission;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPublicKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 468
    invoke-static {p0, p1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getRawSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v0

    .line 469
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 470
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 471
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCodeFromPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 83
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0

    .line 78
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static hasSameDebugSignature(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 365
    :goto_0
    if-nez v1, :cond_2

    .line 377
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v0

    .line 364
    goto :goto_0

    .line 370
    :cond_2
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignature(Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    .line 377
    invoke-virtual {v0, p1}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public static isAppFbPermissionSigned(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 95
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 96
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 97
    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 101
    const-string v5, "fbpermissions.json"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0

    .line 105
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private logCheckResult(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 382
    if-eqz p2, :cond_0

    .line 383
    const-string v0, "%s, but request is allowed for fail-open"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_0
    iget-object v1, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    invoke-interface {v1, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    .line 388
    return-void

    .line 385
    :cond_0
    const-string v0, "%s, and request is denied for fail-close"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyFbPermissionSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 405
    :try_start_0
    invoke-static {p1, v0}, Lcom/facebook/secure/trustedapp/FbPermission;->getPublicKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 407
    invoke-static {p5, p2, p3, p4, v0}, Lcom/facebook/secure/trustedapp/FbPermission;->binaryEncode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 413
    const/16 v2, 0xa

    .line 414
    invoke-static {p6, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 416
    invoke-static {v1, v0, v2, p7}, Lcom/facebook/secure/trustedapp/FbPermission;->doSignatureVerification(Ljava/security/PublicKey;[B[BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/secure/trustedapp/FbPermissionEncoder$EncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v0

    .line 432
    :goto_0
    return v0

    .line 418
    :catch_0
    move-exception v0

    .line 419
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Failed to get provider package signature"

    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    .line 432
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 420
    :catch_1
    move-exception v0

    .line 421
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Failed to encode data using FbPermissionEncoder"

    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    :catch_2
    move-exception v0

    .line 423
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Failed to get public key due to certificate exception"

    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1

    .line 424
    :catch_3
    move-exception v0

    .line 425
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Invalid public key"

    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :catch_4
    move-exception v0

    .line 427
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Unsupported signature algorithm"

    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1

    .line 428
    :catch_5
    move-exception v0

    .line 429
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Signature type wrong or improperly encoded"

    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public checkFbPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/secure/trustedapp/FbPermission;->verifyFbPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 217
    if-nez v2, :cond_0

    .line 218
    const-string v3, "FBPermission \'%s\' was not granted to package \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v0

    aput-object p2, v4, v1

    .line 219
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-direct {p0, v3, p4}, Lcom/facebook/secure/trustedapp/FbPermission;->logCheckResult(Ljava/lang/String;Z)V

    .line 223
    :cond_0
    if-nez v2, :cond_1

    if-eqz p4, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method getSignedPermissionsFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 507
    new-instance v0, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;-><init>()V

    .line 510
    const/4 v1, 0x0

    .line 511
    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 512
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "fbpermissions.json"

    .line 513
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 518
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Cannot create package context for \'%s\'"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 534
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    .line 545
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 520
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 522
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v3, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 524
    const-string v1, "permissions"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v1, v2

    .line 525
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 526
    iget-object v5, v0, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;->permissions:Ljava/util/Set;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 528
    :cond_1
    const-string/jumbo v1, "signature"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 529
    iget-object v3, v0, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;->signature:Ljava/util/Map;

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "value"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v3, v0, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;->signature:Ljava/util/Map;

    const-string v4, "algorithm"

    const-string v5, "algorithm"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 535
    :catch_1
    move-exception v0

    .line 536
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Failed to read FBPermission asset file from package \'%s\'"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 537
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1

    .line 539
    :catch_2
    move-exception v0

    .line 540
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v1, "Failed to decode FBPermission asset file from package \'%s\' due to JSON exception"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 541
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-interface {v0, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setReporter(Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/trustedapp/FbPermission;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    .line 137
    return-object p0
.end method

.method public verifyFbPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 288
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 299
    :try_start_1
    invoke-static {p1, v3}, Lcom/facebook/secure/trustedapp/FbPermission;->hasSameDebugSignature(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    iget-object v3, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "Skipping permission check for \'%s\' because \'%s\' and provider \'%s\' have the same debug key"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    .line 301
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-interface {v3, v4}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :goto_0
    return v0

    .line 289
    :catch_0
    move-exception v2

    .line 290
    iget-object v2, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "Invalid developer key for package \'%s\' while verifying \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    .line 291
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-interface {v2, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    move v0, v1

    .line 294
    goto :goto_0

    .line 306
    :catch_1
    move-exception v3

    .line 307
    iget-object v3, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v4, "Invalid developer key for package \'%s\' while verifying \'%s\'"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object p3, v5, v0

    .line 308
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-interface {v3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    move v0, v1

    .line 311
    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/facebook/secure/trustedapp/FbPermission;->getSignedPermissionsFromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;

    move-result-object v2

    .line 316
    if-nez v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "Failed to read signed permissions from \'%s\' asset"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    .line 318
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-interface {v2, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    move v0, v1

    .line 319
    goto :goto_0

    .line 321
    :cond_1
    iget-object v4, v2, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;->permissions:Ljava/util/Set;

    invoke-interface {v4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 322
    iget-object v2, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "FBPermission \'%s\' was not signed"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    move v0, v1

    .line 323
    goto :goto_0

    .line 326
    :cond_2
    iget-object v4, v2, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;->signature:Ljava/util/Map;

    const-string/jumbo v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 327
    iget-object v4, v2, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;->signature:Ljava/util/Map;

    const-string v5, "algorithm"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 328
    if-eqz v6, :cond_3

    if-nez v7, :cond_4

    .line 329
    :cond_3
    iget-object v2, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "Missing signature or algorithm for package \'%s\' while verifying \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    .line 330
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-interface {v2, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    move v0, v1

    .line 333
    goto/16 :goto_0

    .line 336
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/secure/trustedapp/AppSignatureHash;->getSha256Hash()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {p1, p2}, Lcom/facebook/secure/trustedapp/FbPermission;->getVersionCodeFromPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 338
    if-eqz v4, :cond_5

    if-gtz v3, :cond_6

    .line 339
    :cond_5
    iget-object v2, p0, Lcom/facebook/secure/trustedapp/FbPermission;->mReporter:Lcom/facebook/secure/logger/Reporter;

    const-string v3, "Invalid key hash or version code for package \'%s\' while verifying \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p2, v4, v1

    aput-object p3, v4, v0

    .line 340
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-interface {v2, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    move v0, v1

    .line 343
    goto/16 :goto_0

    .line 349
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/facebook/secure/trustedapp/FbPermission$SignedPermissions;->permissions:Ljava/util/Set;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 346
    invoke-direct/range {v0 .. v7}, Lcom/facebook/secure/trustedapp/FbPermission;->verifyFbPermissionSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method
