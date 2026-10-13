.class public Lcom/oculus/common/packagescache/PackagesCacheReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackagesCacheReceiver.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;


# static fields
.field private static final sAcceptedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/common/packagescache/PackagesCacheReceiver;)V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/common/packagescache/PackagesCacheReceiver;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/common/packagescache/PackagesCacheReceiver;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/common/packagescache/PackagesCacheReceiver;)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/oculus/common/packagescache/PackagesCache;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/common/packagescache/PackagesCache;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 22
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->sAcceptedActions:Ljava/util/List;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getPackageAction(Ljava/lang/String;Z)Lcom/oculus/common/packagescache/PackagesListener$PackageAction;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 69
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    sget-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->UPDATED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 72
    :cond_1
    if-nez p1, :cond_0

    .line 77
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    sget-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->ADDED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    goto :goto_0

    .line 80
    :cond_2
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->REMOVED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    goto :goto_0
.end method

.method private static isReplacing(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 63
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 18
    invoke-static {p1, p0}, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/common/packagescache/PackagesCacheReceiver;)V

    .line 34
    if-nez p2, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->sAcceptedActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-static {p2}, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->isReplacing(Landroid/content/Intent;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->getPackageAction(Ljava/lang/String;Z)Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 59
    iget-object v2, p0, Lcom/oculus/common/packagescache/PackagesCacheReceiver;->mPackagesCache:Lcom/oculus/common/packagescache/PackagesCache;

    invoke-virtual {v2, v0, v1}, Lcom/oculus/common/packagescache/PackagesCache;->onPackageChanged(Lcom/oculus/common/packagescache/PackagesListener$PackageAction;Ljava/lang/String;)V

    goto :goto_0
.end method
