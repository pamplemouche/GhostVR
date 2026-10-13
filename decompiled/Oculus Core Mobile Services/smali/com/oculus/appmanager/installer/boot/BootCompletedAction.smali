.class Lcom/oculus/appmanager/installer/boot/BootCompletedAction;
.super Ljava/lang/Object;
.source "BootCompletedAction.java"

# interfaces
.implements Lcom/facebook/inject/InjectableComponentWithoutContext;
.implements Lcom/facebook/secure/receiver/ActionReceiver;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInstallerServiceContract:Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/boot/BootCompletedAction;)V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/boot/BootCompletedAction;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Lcom/facebook/inject/InjectableComponentWithoutContext;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/installer/boot/BootCompletedAction;)V
    .locals 1

    .prologue
    .line 17
    invoke-static {p0}, Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;->$ul_$xXXcom_oculus_appmanager_installer_contract_InstallerServiceContract$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;->mInstallerServiceContract:Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;->TAG:Ljava/lang/String;

    const-string v1, "Boot receiver triggered"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1, p0}, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/appmanager/installer/boot/BootCompletedAction;)V

    .line 30
    iget-object v0, p0, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;->mInstallerServiceContract:Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;

    invoke-virtual {v0}, Lcom/oculus/appmanager/installer/contract/InstallerServiceContract;->performBootCleanup()V

    .line 31
    return-void
.end method
