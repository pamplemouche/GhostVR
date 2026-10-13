.class public Lcom/facebook/secure/trustedapp/AppVerifier;
.super Ljava/lang/Object;
.source "AppVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/secure/trustedapp/AppVerifier$UidToPackageNamesCache;,
        Lcom/facebook/secure/trustedapp/AppVerifier$UidToSignatureCache;
    }
.end annotation


# static fields
.field private static final mUidToPackageNamesCache:Lcom/facebook/secure/trustedapp/AppVerifier$UidToPackageNamesCache;

.field private static final mUidToSignatureCache:Lcom/facebook/secure/trustedapp/AppVerifier$UidToSignatureCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/facebook/secure/trustedapp/AppVerifier$UidToSignatureCache;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/AppVerifier$UidToSignatureCache;-><init>()V

    sput-object v0, Lcom/facebook/secure/trustedapp/AppVerifier;->mUidToSignatureCache:Lcom/facebook/secure/trustedapp/AppVerifier$UidToSignatureCache;

    .line 41
    new-instance v0, Lcom/facebook/secure/trustedapp/AppVerifier$UidToPackageNamesCache;

    invoke-direct {v0}, Lcom/facebook/secure/trustedapp/AppVerifier$UidToPackageNamesCache;-><init>()V

    sput-object v0, Lcom/facebook/secure/trustedapp/AppVerifier;->mUidToPackageNamesCache:Lcom/facebook/secure/trustedapp/AppVerifier$UidToPackageNamesCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/PackageInfoNullException;

    invoke-direct {v0, p1}, Lcom/facebook/secure/trustedapp/exception/PackageInfoNullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/PackageNameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found by PackageManager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/exception/PackageNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    new-instance v1, Lcom/facebook/secure/trustedapp/exception/PackageInfoMisMatchException;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Lcom/facebook/secure/trustedapp/exception/PackageInfoMisMatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_1
    return-object v0
.end method

.method public static getPackageNamesFromUid(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 92
    :cond_0
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/PackageNameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packageName associated with uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/exception/PackageNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 94
    :cond_1
    return-object v0
.end method

.method public static getRawSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 1

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/SignatureNotFoundException;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/exception/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 142
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/MultipleSignatureException;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/exception/MultipleSignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    .line 145
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/SignatureNullException;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/exception/SignatureNullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public static getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;
    .locals 1

    .prologue
    .line 279
    invoke-static {p0, p1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureHash(Landroid/content/pm/Signature;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    return-object v0
.end method

.method public static getSignatureFromUidPackageNames(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 164
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {p0, v1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v1

    .line 167
    array-length v2, p1

    if-le v2, v0, :cond_1

    .line 168
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 169
    aget-object v2, p1, v0

    .line 170
    invoke-static {p0, v2}, Lcom/facebook/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/MultipleSignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/exception/MultipleSignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return-object v1
.end method

.method public static getSignatureHash(Landroid/content/pm/Signature;)Lcom/facebook/secure/trustedapp/AppSignatureHash;
    .locals 3

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    const-string v1, "SHA-1"

    invoke-static {v0, v1}, Lcom/facebook/secure/trustedapp/HashHelper;->getBase64Hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const-string v2, "SHA-256"

    invoke-static {v1, v2}, Lcom/facebook/secure/trustedapp/HashHelper;->getBase64Hash([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 194
    new-instance v2, Lcom/facebook/secure/trustedapp/AppSignatureHash;

    invoke-direct {v2, v0, v1}, Lcom/facebook/secure/trustedapp/AppSignatureHash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Error obtaining SHA1/SHA256"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifySamePackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static verifySameSignature(Landroid/content/Context;II)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 238
    invoke-static {p1, p2}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameUid(II)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static verifySameSignature(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .prologue
    .line 251
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v0, v1}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static verifySameSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 264
    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/ApplicationInfoNotFoundException;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/exception/ApplicationInfoNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 270
    if-nez v1, :cond_1

    .line 271
    new-instance v0, Lcom/facebook/secure/trustedapp/exception/ApplicationInfoNotFoundException;

    invoke-direct {v0, p1}, Lcom/facebook/secure/trustedapp/exception/ApplicationInfoNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public static verifySameUid(II)Z
    .locals 1

    .prologue
    .line 216
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
