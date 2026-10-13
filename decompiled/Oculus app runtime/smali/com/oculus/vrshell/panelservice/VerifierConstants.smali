.class public Lcom/oculus/vrshell/panelservice/VerifierConstants;
.super Ljava/lang/Object;
.source "VerifierConstants.java"


# static fields
.field public static final FACEBOOK_SNAPVR_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.snapvr"

.field public static final OCULUS_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.browser"

.field public static final OCULUS_GOVRNUX_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.govrnux"

.field public static final OCULUS_HORIZON_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.horizon"

.field public static final OCULUS_SYSTEM_UTILITIES_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.systemutilities"

.field public static final OCULUS_SYSTEM_UX_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.systemux"

.field public static final OCULUS_TV_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.tv"

.field public static final OCULUS_VENUES_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.venues"

.field public static final OCULUS_VRSHELL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell.home"

.field public static final OCULUS_VRSHELL_PACKAGE_NAME:Ljava/lang/String; = "com.oculus.vrshell"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstPartyOculusStorePackages(Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Landroid/content/pm/Signature;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.oculus.browser"

    .line 38
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.govrnux"

    .line 39
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.horizon"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.systemutilities"

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.systemux"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.venues"

    .line 43
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.vrshell"

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.vrshell.home"

    .line 45
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "com.oculus.tv"

    .line 49
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "com.facebook.snapvr"

    .line 53
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 56
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 58
    invoke-interface {v3, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 59
    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 62
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 64
    sget-object v5, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->OCULUS_PROD_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v5, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->OCULUS_APPS_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v5, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->OCULUS_CORE_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v5, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->OCULUS_TV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->FBANDROID_PROD_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 71
    sget-object p0, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->OCULUS_APPS_BRANCH_DEV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object p0, Lcom/oculus/vrshell/panelservice/TrustedCertificates;->FBANDROID_DEV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-interface {v4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
