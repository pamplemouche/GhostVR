.class public Lcom/facebook/rti/common/util/PackageInfoUtil;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSignature(Landroid/content/Context;Lcom/facebook/rti/common/util/FbnsPackageInfo;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p1, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    sget-object v1, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->INSTALLED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p1, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lcom/facebook/rti/common/util/PackageInfoUtil;->getSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {p0, v0}, Lcom/facebook/rti/common/util/FbAppCertificates;->isTrustedSignatureHash(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->TRUSTED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    iput-object v0, p1, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-object v0, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->NOT_TRUSTED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    iput-object v0, p1, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    goto :goto_0
.end method

.method public static getApplicationInfo(Landroid/content/Context;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1, p0}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getFbnsPackageInfo(Landroid/content/Context;Ljava/lang/String;ILcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Lcom/facebook/rti/common/util/FbnsPackageInfo;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p3, p0, p1, p2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/facebook/rti/common/util/FbnsPackageInfo;

    move-result-object v0

    .line 55
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p0, v0}, Lcom/facebook/rti/common/util/PackageInfoUtil;->checkSignature(Landroid/content/Context;Lcom/facebook/rti/common/util/FbnsPackageInfo;)V

    .line 58
    :cond_0
    return-object v0
.end method

.method private static getSHA1Instance()Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 134
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 141
    :try_start_1
    const-string v0, "org.apache.harmony.security.fortress.Services"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setNeedRefresh"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :goto_1
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getSignatureHash(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/util/PackageInfoUtil;->makeSHA1HashBase64([B)Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFbnsServiceRunning(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p3, p0}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->getRunningServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    move v0, v1

    .line 92
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 86
    iget-object v3, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 87
    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public static isTrustedApp(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const/16 v2, 0x40

    .line 106
    invoke-static {p0, p1, v2, p2}, Lcom/facebook/rti/common/util/PackageInfoUtil;->getFbnsPackageInfo(Landroid/content/Context;Ljava/lang/String;ILcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)Lcom/facebook/rti/common/util/FbnsPackageInfo;

    move-result-object v2

    .line 108
    iget-object v2, v2, Lcom/facebook/rti/common/util/FbnsPackageInfo;->mPackageStatus:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    sget-object v3, Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;->TRUSTED:Lcom/facebook/rti/common/util/FbnsPackageInfo$PackageStatus;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static makeSHA1HashBase64([B)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Lcom/facebook/rti/common/util/PackageInfoUtil;->getSHA1Instance()Ljava/security/MessageDigest;

    move-result-object v0

    .line 155
    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 156
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 157
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method
