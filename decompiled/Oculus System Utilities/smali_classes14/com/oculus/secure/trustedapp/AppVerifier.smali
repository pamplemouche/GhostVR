.class public Lcom/oculus/secure/trustedapp/AppVerifier;
.super Ljava/lang/Object;
.source "AppVerifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 65
    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 73
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 74
    new-instance v2, Lcom/oculus/secure/trustedapp/exception/PackageInfoNullException;

    invoke-direct {v2, p1}, Lcom/oculus/secure/trustedapp/exception/PackageInfoNullException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Lcom/oculus/secure/trustedapp/exception/PackageNameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found by PackageManager."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/secure/trustedapp/exception/PackageNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    new-instance v2, Lcom/oculus/secure/trustedapp/exception/PackageInfoMisMatchException;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lcom/oculus/secure/trustedapp/exception/PackageInfoMisMatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    return-object v1
.end method

.method public static getPackageNamesFromUid(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 44
    :cond_0
    new-instance v2, Lcom/oculus/secure/trustedapp/exception/PackageNameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No packageName associated with uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/secure/trustedapp/exception/PackageNameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    .end local v1    # "packageNames":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 46
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "packageNames":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getRawSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p0, p1}, Lcom/oculus/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 3
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    new-instance v0, Lcom/oculus/secure/trustedapp/exception/SignatureNotFoundException;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/exception/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 94
    new-instance v0, Lcom/oculus/secure/trustedapp/exception/MultipleSignatureException;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/exception/MultipleSignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    if-nez v0, :cond_3

    .line 97
    new-instance v0, Lcom/oculus/secure/trustedapp/exception/SignatureNullException;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/exception/SignatureNullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    return-object v0
.end method

.method public static getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/secure/trustedapp/AppSignatureHash;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {p0, p1}, Lcom/oculus/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignatureHash(Landroid/content/pm/Signature;)Lcom/oculus/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    return-object v0
.end method

.method public static getSignatureFromUidPackageNames(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageNames"    # [Ljava/lang/String;

    .prologue
    .line 116
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {p0, v2}, Lcom/oculus/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v1

    .line 119
    .local v1, "uidSignature":Landroid/content/pm/Signature;
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 120
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 121
    aget-object v2, p1, v0

    .line 122
    invoke-static {p0, v2}, Lcom/oculus/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    new-instance v2, Lcom/oculus/secure/trustedapp/exception/MultipleSignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/secure/trustedapp/exception/MultipleSignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public static getSignatureHash(Landroid/content/pm/Signature;)Lcom/oculus/secure/trustedapp/AppSignatureHash;
    .locals 5
    .param p0, "signature"    # Landroid/content/pm/Signature;

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    const-string v4, "SHA-1"

    invoke-static {v3, v4}, Lcom/oculus/secure/trustedapp/HashHelper;->getBase64Hash([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "sha1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    const-string v4, "SHA-256"

    invoke-static {v3, v4}, Lcom/oculus/secure/trustedapp/HashHelper;->getBase64Hash([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    .local v2, "sha256":Ljava/lang/String;
    new-instance v3, Lcom/oculus/secure/trustedapp/AppSignatureHash;

    invoke-direct {v3, v1, v2}, Lcom/oculus/secure/trustedapp/AppSignatureHash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 143
    .end local v1    # "sha1":Ljava/lang/String;
    .end local v2    # "sha256":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Error obtaining SHA1/SHA256"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static verifySamePackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otherPackageName"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static verifySameSignature(Landroid/content/Context;II)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 190
    .local v0, "checkSignaturesResult":I
    invoke-static {p1, p2}, Lcom/oculus/secure/trustedapp/AppVerifier;->verifySameUid(II)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 187
    .end local v0    # "checkSignaturesResult":I
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 190
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "checkSignaturesResult":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static verifySameSignature(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo1"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "appInfo2"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 203
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v0, v1}, Lcom/oculus/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method public static verifySameSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otherPackageName"    # Ljava/lang/String;

    .prologue
    .line 214
    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oculus/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 216
    .local v0, "currentAppInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 217
    new-instance v2, Lcom/oculus/secure/trustedapp/exception/ApplicationInfoNotFoundException;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/secure/trustedapp/exception/ApplicationInfoNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_0
    invoke-static {p0, p1}, Lcom/oculus/secure/trustedapp/AppVerifier;->getPackageInfoWithSignature(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 222
    .local v1, "otherAppInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    .line 223
    new-instance v2, Lcom/oculus/secure/trustedapp/exception/ApplicationInfoNotFoundException;

    invoke-direct {v2, p1}, Lcom/oculus/secure/trustedapp/exception/ApplicationInfoNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_1
    invoke-static {p0, v0, v1}, Lcom/oculus/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    return v2
.end method

.method public static verifySameUid(II)Z
    .locals 1
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 168
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
