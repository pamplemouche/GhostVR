.class public Lcom/oculus/secure/trustedapp/TrustedAppHelper;
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

.method public static createAllFBFamilyTrustedApp()Lcom/oculus/secure/trustedapp/TrustedApp;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp;

    sget-object v1, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->ALL_FAMILY_PROD:Ljava/util/Set;

    sget-object v2, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_FAMILY_PACKAGE_NAMES:Ljava/util/Set;

    .line 27
    invoke-static {v1, v2}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createAllFBInHouseTrustedApp()Lcom/oculus/secure/trustedapp/TrustedApp;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp;

    sget-object v1, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->ALL_INHOUSE:Ljava/util/Set;

    sget-object v2, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_INHOUSE_PACKAGE_NAMES:Ljava/util/Set;

    .line 34
    invoke-static {v1, v2}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createAllFacebookTrustedApp()Lcom/oculus/secure/trustedapp/TrustedApp;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp;

    sget-object v1, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->FB_PROD:Ljava/util/Set;

    sget-object v2, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_FB_PACKAGE_NAMES:Ljava/util/Set;

    .line 21
    invoke-static {v1, v2}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createFacebookFamilyTrustedApp()Lcom/oculus/secure/trustedapp/TrustedApp;
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp;

    sget-object v1, Lcom/oculus/secure/trustedapp/AllFamilyTrustedSignatures;->FB_FAMILY_PROD:Ljava/util/Set;

    sget-object v2, Lcom/oculus/secure/trustedapp/AllFamilyPackageNames;->ALL_FB_PACKAGE_NAMES:Ljava/util/Set;

    .line 15
    invoke-static {v1, v2}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createTrustedApp(Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            ">;)",
            "Lcom/oculus/secure/trustedapp/TrustedApp;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "trustedSignatures":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/secure/trustedapp/AppSignatureHash;>;"
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp;

    invoke-static {p0}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedPackagesWithAnyPackage(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static createTrustedApp(Ljava/util/Set;Ljava/util/Set;)Lcom/oculus/secure/trustedapp/TrustedApp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/secure/trustedapp/TrustedApp;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "trustedSignatures":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/secure/trustedapp/AppSignatureHash;>;"
    .local p1, "trustedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/oculus/secure/trustedapp/TrustedApp;

    invoke-static {p0, p1}, Lcom/oculus/secure/trustedapp/TrustedAppHelper;->createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/secure/trustedapp/TrustedApp;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createTrustedPackages(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "trustedSignatures":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/secure/trustedapp/AppSignatureHash;>;"
    .local p1, "trustedPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v0, "mutableTrustedPackages":Ljava/util/Map;, "Ljava/util/Map<Lcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .line 66
    .local v1, "trustedSignature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 64
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    .end local v1    # "trustedSignature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private static createTrustedPackagesWithAnyPackage(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/oculus/secure/trustedapp/AppSignatureHash;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "trustedSignatures":Ljava/util/Set;, "Ljava/util/Set<Lcom/oculus/secure/trustedapp/AppSignatureHash;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v0, "mutableTrustedPackages":Ljava/util/Map;, "Ljava/util/Map<Lcom/oculus/secure/trustedapp/AppSignatureHash;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/secure/trustedapp/AppSignatureHash;

    .line 52
    .local v1, "trustedSignature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    new-instance v3, Ljava/util/HashSet;

    const-string v4, "*|all_packages|*"

    .line 55
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 54
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 52
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 57
    .end local v1    # "trustedSignature":Lcom/oculus/secure/trustedapp/AppSignatureHash;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method
