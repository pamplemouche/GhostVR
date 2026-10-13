.class public Lcom/facebook/secure/trustedapp/TrustedApp;
.super Ljava/lang/Object;
.source "TrustedApp.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CatchGeneralException",
        "TodoWithoutTask"
    }
.end annotation


# instance fields
.field private final mTrustedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrustedSignatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 52
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 57
    if-eqz v0, :cond_0

    const-string v5, "*|all_packages|*"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/secure/trustedapp/TrustedApp;->mTrustedSignatures:Ljava/util/Set;

    .line 70
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/secure/trustedapp/TrustedApp;->mTrustedPackages:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public static checkCallerHasFbPermissions(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/logger/Reporter;)Z
    .locals 9
    .param p2    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/secure/logger/Reporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 217
    if-nez p2, :cond_1

    .line 218
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->getCallerAppIdentity(Landroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 222
    :goto_0
    if-nez v0, :cond_2

    .line 223
    if-eqz p3, :cond_0

    .line 224
    const-string v0, "AppIdentity not found for caller when checking %s permission"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    .line 225
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-interface {p3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    .line 282
    :cond_0
    :goto_1
    return v3

    .line 220
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/secure/trustedapp/TrustedApp;->getAppIdentity(Landroid/content/Context;Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getSignatureHash()Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v1

    .line 233
    if-eqz v1, :cond_6

    .line 234
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isCurrentAppDebugBuild(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignature(Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 235
    :cond_3
    invoke-static {p1, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;->isFlowBetweenOculusDebugApps(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 236
    :cond_4
    if-eqz p3, :cond_5

    .line 237
    const-string v1, "Skipping permission check for \'%s\' because \'%s\' and provider \'%s\' have the same debug key"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 240
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v8

    .line 238
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-interface {p3, v0}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    :cond_5
    move v3, v4

    .line 242
    goto :goto_1

    .line 246
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageNames()Ljava/util/List;

    move-result-object v5

    .line 247
    if-eqz p3, :cond_8

    .line 248
    invoke-static {p3}, Lcom/facebook/secure/trustedapp/FbPermission;->get(Lcom/facebook/secure/logger/Reporter;)Lcom/facebook/secure/trustedapp/FbPermission;

    move-result-object v0

    move-object v1, v0

    .line 254
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    invoke-static {p1, v0}, Lcom/facebook/secure/trustedapp/FbPermission;->isAppFbPermissionSigned(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 260
    invoke-virtual {v1, p1, v0, p0, v3}, Lcom/facebook/secure/trustedapp/FbPermission;->checkFbPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v4

    move v0, v4

    .line 268
    :goto_4
    if-eqz p3, :cond_7

    .line 269
    if-nez v2, :cond_a

    .line 270
    const-string v1, "Package(s) are not FbPermission signed: \'%s\')"

    new-array v2, v4, [Ljava/lang/Object;

    .line 273
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 271
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-interface {p3, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    :cond_7
    :goto_5
    move v3, v0

    .line 282
    goto :goto_1

    .line 248
    :cond_8
    invoke-static {}, Lcom/facebook/secure/trustedapp/FbPermission;->get()Lcom/facebook/secure/trustedapp/FbPermission;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_9
    move v0, v4

    :goto_6
    move v2, v0

    .line 266
    goto :goto_3

    .line 274
    :cond_a
    if-nez v0, :cond_7

    .line 275
    const-string v1, "FBPermission \'%s\' was not granted to package(s): \'%s\')"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p0, v2, v3

    .line 278
    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 276
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-interface {p3, v1}, Lcom/facebook/secure/logger/Reporter;->report(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v3

    goto :goto_4
.end method

.method public static checkDebugSignature(Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->FB_DEBUG:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->WHATSAPP_DEBUG:Ljava/util/Set;

    .line 475
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_DEBUG:Ljava/util/Set;

    .line 476
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkDebugSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 503
    invoke-static {p0, p1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    .line 502
    invoke-static {v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignature(Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z

    move-result v0

    return v0
.end method

.method public static checkSameSignatureCaller(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 108
    invoke-static {p0, v0, v1}, Lcom/facebook/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;II)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAppIdentity(ILandroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 309
    invoke-static {p1, p0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getPackageNamesFromUid(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 312
    invoke-static {p1, v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->getSignatureHashFromPackageNames(Landroid/content/Context;[Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v3

    .line 314
    new-instance v0, Lcom/facebook/secure/trustedapp/AppIdentity;

    move v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/secure/trustedapp/AppIdentity;-><init>(ILjava/util/List;Lcom/facebook/secure/trustedapp/AppSignatureHash;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAppIdentity(Landroid/content/Context;Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;
    .locals 7
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 168
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/CallerInfoHelper;->getCallerInfo(Landroid/content/Intent;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v5

    .line 170
    if-nez v5, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 177
    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 178
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 179
    new-instance v0, Ljava/lang/SecurityException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Uid %d from PI not equal to uid %d from binder data"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 183
    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 180
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageNames()Ljava/util/List;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 188
    invoke-static {p0, v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->getSignatureHashFromPackageNames(Landroid/content/Context;[Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v3

    .line 191
    new-instance v0, Lcom/facebook/secure/trustedapp/AppIdentity;

    .line 195
    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getUid()I

    move-result v1

    .line 197
    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageNames()Ljava/util/List;

    move-result-object v2

    .line 199
    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-virtual {v5}, Lcom/facebook/secure/trustedapp/AppIdentity;->getDomainName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/secure/trustedapp/AppIdentity;-><init>(ILjava/util/List;Lcom/facebook/secure/trustedapp/AppSignatureHash;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCallerAppIdentity(Landroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/facebook/secure/trustedapp/TrustedApp;->getCallingUid()I

    move-result v0

    invoke-static {v0, p0}, Lcom/facebook/secure/trustedapp/TrustedApp;->getAppIdentity(ILandroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static getCallingUid()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should be called on behalf of an IPC transaction from binder thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private static getSignatureHashFromPackageNames(Landroid/content/Context;[Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;
    .locals 1

    .prologue
    .line 509
    invoke-static {p0, p1}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureFromUidPackageNames(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v0

    .line 508
    invoke-static {v0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureHash(Landroid/content/pm/Signature;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    return-object v0
.end method

.method public static isCurrentAppDebugBuild(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    move v2, v0

    .line 458
    :goto_0
    if-eqz v2, :cond_0

    .line 460
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v2

    .line 459
    invoke-static {v2}, Lcom/facebook/secure/trustedapp/TrustedApp;->checkDebugSignature(Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 464
    :cond_1
    return v0

    :cond_2
    move v2, v1

    .line 454
    goto :goto_0
.end method

.method private static isFlowBetweenOculusDebugApps(Landroid/content/Context;Lcom/facebook/secure/trustedapp/AppSignatureHash;)Z
    .locals 2

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    .line 490
    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_DEBUG:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->OCULUS_DEBUG:Ljava/util/Set;

    .line 491
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAppIdentityTrusted(ILandroid/content/Context;)Z
    .locals 1

    .prologue
    .line 417
    invoke-static {p1, p2}, Lcom/facebook/secure/trustedapp/TrustedApp;->getAppIdentity(ILandroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 418
    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->isAppIdentityTrusted(Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v0

    return v0
.end method

.method public isAppIdentityTrusted(Lcom/facebook/secure/trustedapp/AppIdentity;)Z
    .locals 5
    .param p1    # Lcom/facebook/secure/trustedapp/AppIdentity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getSignatureHash()Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    .line 442
    :cond_1
    :goto_0
    return v1

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/TrustedApp;->mTrustedSignatures:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getSignatureHash()Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 437
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/TrustedApp;->mTrustedPackages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getSignatureHash()Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getPackageNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 439
    iget-object v0, p0, Lcom/facebook/secure/trustedapp/TrustedApp;->mTrustedPackages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/secure/trustedapp/AppIdentity;->getSignatureHash()Lcom/facebook/secure/trustedapp/AppSignatureHash;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 442
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public isCallerAppIdentityTrusted(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 393
    :goto_0
    return v0

    .line 392
    :cond_0
    invoke-static {p1}, Lcom/facebook/secure/trustedapp/TrustedApp;->getCallerAppIdentity(Landroid/content/Context;)Lcom/facebook/secure/trustedapp/AppIdentity;

    move-result-object v0

    .line 393
    invoke-virtual {p0, v0}, Lcom/facebook/secure/trustedapp/TrustedApp;->isAppIdentityTrusted(Lcom/facebook/secure/trustedapp/AppIdentity;)Z

    move-result v0

    goto :goto_0
.end method
