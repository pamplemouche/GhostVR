.class public Lcom/facebook/secure/trustedapp/TrustedAppHelper;
.super Ljava/lang/Object;
.source "TrustedAppHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAllFBFamilyTrustedApp()Lcom/facebook/secure/trustedapp/TrustedApp;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/facebook/secure/trustedapp/TrustedApp;

    sget-object v1, Lcom/facebook/secure/trustedapp/AllFamilyTrustedSignatures;->ALL_FAMILY_PROD:Ljava/util/Set;

    sget-object v2, Lcom/facebook/secure/trustedapp/AllFamilyPackageNames;->ALL_FAMILY_PACKAGE_NAMES:Ljava/util/Set;

    .line 32
    invoke-static {v1, v2}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createTrustedApp(Ljava/util/Set;)Lcom/facebook/secure/trustedapp/TrustedApp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;)",
            "Lcom/facebook/secure/trustedapp/TrustedApp;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/secure/trustedapp/TrustedApp;

    invoke-static {p0}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedPackagesWithAnyPackage(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createTrustedApp(Ljava/util/Set;Ljava/util/Set;)Lcom/facebook/secure/trustedapp/TrustedApp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/secure/trustedapp/TrustedApp;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/secure/trustedapp/TrustedApp;

    invoke-static {p0, p1}, Lcom/facebook/secure/trustedapp/TrustedAppHelper;->createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 71
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 69
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static createTrustedPackagesWithAnyPackage(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/secure/trustedapp/AppSignatureHash;

    .line 57
    new-instance v3, Ljava/util/HashSet;

    const-string v4, "*|all_packages|*"

    .line 60
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 57
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
