.class public Lcom/oculus/horizon/shortcut/ShortcutActivity;
.super Landroid/app/Activity;
.source "ShortcutActivity.java"


# static fields
.field public static final ACTION_OPEN_SHORTCUT:Ljava/lang/String;


# instance fields
.field private mOVRLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/shortcut/ShortcutActivity;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/shortcut/ShortcutActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/shortcut/ShortcutActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/shortcut/ShortcutActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/shortcut/ShortcutActivity;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/shortcut/ShortcutActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/shortcut/ShortcutActivity;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/shortcut/ShortcutActivity;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oculus/common/build/BuildConstants;->PACKAGE_NAME_HORIZON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".action.OPEN_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/shortcut/ShortcutActivity;->ACTION_OPEN_SHORTCUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/oculus/horizon/shortcut/ShortcutActivity;->ACTION_OPEN_SHORTCUT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {p0, p0}, Lcom/oculus/horizon/shortcut/ShortcutActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/shortcut/ShortcutActivity;)V

    .line 37
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/shortcut/ShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    const-string v0, "package_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/oculus/horizon/shortcut/ShortcutActivity;->finish()V

    .line 63
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/shortcut/ShortcutActivity;->mPackageLauncherUtils:Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/oculus/horizon/shortcut/ShortcutActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportShortcutLaunchFailed(Ljava/lang/String;)V

    .line 52
    sget v0, Lcom/oculus/horizon/R$string;->shortcut_not_installed:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    invoke-virtual {p0}, Lcom/oculus/horizon/shortcut/ShortcutActivity;->finish()V

    goto :goto_0

    .line 57
    :cond_2
    iget-object v2, p0, Lcom/oculus/horizon/shortcut/ShortcutActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportShortcutLaunched(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/oculus/horizon/shortcut/ShortcutActivity;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v2, v0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->updateLatestActivityMs(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/shortcut/ShortcutActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/oculus/horizon/shortcut/ShortcutActivity;->finish()V

    goto :goto_0
.end method
