.class public Lcom/oculus/secure/trustedapp/TrustedApp;
.super Ljava/lang/Object;
.source "TrustedApp.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CatchGeneralException",
        "TodoWithoutTask"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    }
.end annotation


# static fields
.field public static final ALL_PACKAGES_MARKER:Ljava/lang/String; = "*|all_packages|*"


# instance fields
.field private final mTrustedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
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
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
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
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "trustedPackages":Ljava/util/Map;, "Ljava/util/Map<Lcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 49
    .local v1, "mutableTrustedSignatures":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/secure/trustedapp/AppSignatureHash;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "mutableTrustedPackages":Ljava/util/Map;, "Ljava/util/Map<Lcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .line 52
    .local v2, "signature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 53
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    const-string v4, "*|all_packages|*"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 65
    .end local v2    # "signature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/secure/trustedapp/TrustedApp;->mTrustedSignatures:Ljava/util/Set;

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/oculus/secure/trustedapp/TrustedApp;->mTrustedPackages:Ljava/util/Map;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "trustedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkDebugSignature(Lcom/oculus/secure/trustedapp/AppSignatureHash;)Z
    .locals 1
    .param p0, "appSignature"    # Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .prologue
    .line 222
    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->FB_DEBUG:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->WHATSAPP_DEBUG:Ljava/util/Set;

    .line 223
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 234
    .line 235
    invoke-static {p0, p1}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignatureFromPackageName(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/secure/trustedapp/AppSignatureHash;

    move-result-object v0

    .line 234
    invoke-static {v0}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkDebugSignature(Lcom/oculus/secure/trustedapp/AppSignatureHash;)Z

    move-result v0

    return v0
.end method

.method public static checkSameSignatureCaller(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    .line 117
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 116
    invoke-static {p0, v1, v2}, Lcom/oculus/secure/trustedapp/AppVerifier;->verifySameSignature(Landroid/content/Context;II)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "exception":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCallingUid()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method should be called on behalf of an IPC transaction from binder thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method


# virtual methods
.method public checkTrustedApp(ILandroid/content/Context;)Z
    .locals 1
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkTrustedAppInfo(ILandroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->isTrusted:Z

    return v0
.end method

.method public checkTrustedAppInfo(ILandroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    invoke-static {p2, p1}, Lcom/oculus/secure/trustedapp/AppVerifier;->getPackageNamesFromUid(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "packageNames":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 168
    .local v1, "uidPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2, v0}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignatureFromUidPackageNames(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/pm/Signature;

    move-result-object v4

    .line 167
    invoke-static {v4}, Lcom/oculus/secure/trustedapp/AppVerifier;->getSignatureHash(Landroid/content/pm/Signature;)Lcom/oculus/secure/trustedapp/AppSignatureHash;

    move-result-object v2

    .line 171
    .local v2, "uidSignatureHash":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    iget-object v4, p0, Lcom/oculus/secure/trustedapp/TrustedApp;->mTrustedSignatures:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-static {p1, v2, v1}, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->createTrusted(ILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v4

    .line 186
    :goto_0
    return-object v4

    .line 176
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 178
    .local v3, "uidTrustedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/oculus/secure/trustedapp/TrustedApp;->mTrustedPackages:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v4, p0, Lcom/oculus/secure/trustedapp/TrustedApp;->mTrustedPackages:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 183
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 184
    invoke-static {p1, v2, v3}, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->createTrusted(ILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v4

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {p1, v2, v1}, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->createUntrusted(ILcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v4

    goto :goto_0
.end method

.method public checkTrustedCaller(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkTrustedCallerAppInfo(Landroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->isTrusted:Z

    return v0
.end method

.method public checkTrustedCallerAppInfo(Landroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-static {}, Lcom/oculus/secure/trustedapp/TrustedApp;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkTrustedAppInfo(ILandroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public enforceTrustedApp(ILandroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkTrustedAppInfo(ILandroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v0

    .line 209
    .local v0, "verifiedCallerInfo":Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    iget-boolean v1, v0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->isTrusted:Z

    if-nez v1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Access denied."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_0
    return-object v0
.end method

.method public enforceTrustedCaller(Landroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/oculus/secure/trustedapp/TrustedApp;->checkTrustedCallerAppInfo(Landroid/content/Context;)Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;

    move-result-object v0

    .line 134
    .local v0, "verifiedCallerInfo":Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;
    iget-boolean v1, v0, Lcom/oculus/secure/trustedapp/TrustedApp$VerifiedCallerInfo;->isTrusted:Z

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Access denied."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    return-object v0
.end method
