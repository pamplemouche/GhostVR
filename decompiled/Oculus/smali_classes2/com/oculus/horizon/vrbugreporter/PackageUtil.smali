.class public final Lcom/oculus/horizon/vrbugreporter/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/vrbugreporter/PackageUtil$PackageCallback;
    }
.end annotation


# static fields
.field private static final CORE_APP_PACKAGE_NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 15
    const-class v0, Lcom/oculus/horizon/vrbugreporter/PackageUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->TAG:Ljava/lang/String;

    .line 17
    const-string v0, "com.oculus.browser"

    sget-object v1, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    const-string v2, "com.oculus.mediaplayer"

    const-string v3, "com.oculus.vrshell"

    const-string v4, "com.oculus.vrshell.home"

    const-string v5, "com.oculus.systemactivities"

    const-string v6, "com.oculus.systemdriver"

    .line 18
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->CORE_APP_PACKAGE_NAMES:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describeInstalledPackages(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string v1, "Package                 Version         Version Code Info\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v1, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/vrbugreporter/PackageUtil$1;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {p0, v1}, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->gatherPackages(Landroid/content/Context;Lcom/oculus/horizon/vrbugreporter/PackageUtil$PackageCallback;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static gatherPackages(Landroid/content/Context;Lcom/oculus/horizon/vrbugreporter/PackageUtil$PackageCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 35
    sget-object v0, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->CORE_APP_PACKAGE_NAMES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {p1, v3, v4, v0}, Lcom/oculus/horizon/vrbugreporter/PackageUtil$PackageCallback;->onPackage(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    sget-object v3, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->TAG:Ljava/lang/String;

    const-string v4, "One of the core packages is not installed"

    invoke-static {v3, v4, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 46
    sget-object v2, Lcom/oculus/horizon/vrbugreporter/PackageUtil;->CORE_APP_PACKAGE_NAMES:Ljava/util/List;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 47
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {p1, v2, v3, v0}, Lcom/oculus/horizon/vrbugreporter/PackageUtil$PackageCallback;->onPackage(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 50
    :cond_2
    return-void
.end method
