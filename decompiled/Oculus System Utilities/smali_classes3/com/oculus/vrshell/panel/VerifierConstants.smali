.class public Lcom/oculus/vrshell/panel/VerifierConstants;
.super Ljava/lang/Object;
.source "VerifierConstants.java"


# static fields
.field public static final FACEBOOK_SNAPVR_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.snapvr"

.field public static final OCULUS_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.browser"

.field public static final OCULUS_VENUES_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.venues"

.field public static final OCULUS_VRSHELL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell.home"

.field public static final OCULUS_VRSHELL_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstPartyOculusStorePackages(Z)Ljava/util/Map;
    .locals 5
    .param p0, "trustAppsBranchDev"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 46
    .local v3, "oculusPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "com.oculus.browser"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v4, "com.oculus.venues"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v4, "com.oculus.vrshell"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v4, "com.oculus.vrshell.home"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v1, "fbPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "com.facebook.snapvr"

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 57
    .local v0, "allPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/pm/Signature;Ljava/util/Set<Ljava/lang/String;>;>;"
    sget-object v4, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_PROD_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v4, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_APPS_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v4, Lcom/oculus/vrshell/panel/TrustedCertificates;->FBANDROID_PROD_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    if-eqz p0, :cond_0

    .line 69
    sget-object v4, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_APPS_BRANCH_DEV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v4, Lcom/oculus/vrshell/panel/TrustedCertificates;->FBANDROID_DEV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 75
    return-object v2
.end method
