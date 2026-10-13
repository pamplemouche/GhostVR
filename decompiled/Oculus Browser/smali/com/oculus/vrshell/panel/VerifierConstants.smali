.class public Lcom/oculus/vrshell/panel/VerifierConstants;
.super Ljava/lang/Object;
.source "PG"


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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFirstPartyOculusStorePackages(Z)Ljava/util/Map;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "com.oculus.browser"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.govrnux"

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.horizon"

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.systemutilities"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.systemux"

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.venues"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.vrshell"

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.oculus.vrshell.home"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "com.oculus.tv"

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 14
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "com.facebook.snapvr"

    .line 15
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 18
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 19
    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 21
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 22
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 23
    sget-object v5, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_PROD_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v5, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_APPS_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v5, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_TV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/oculus/vrshell/panel/TrustedCertificates;->FBANDROID_PROD_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 27
    sget-object p0, Lcom/oculus/vrshell/panel/TrustedCertificates;->OCULUS_APPS_BRANCH_DEV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object p0, Lcom/oculus/vrshell/panel/TrustedCertificates;->FBANDROID_DEV_SIGNATURE:Landroid/content/pm/Signature;

    invoke-virtual {v4, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
