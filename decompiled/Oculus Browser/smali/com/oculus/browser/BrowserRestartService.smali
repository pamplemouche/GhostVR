.class public Lcom/oculus/browser/BrowserRestartService;
.super Landroid/app/Service;
.source "PG"


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final EXTRA_MAIN_PID:Ljava/lang/String; = "org.chromium.chrome.browser.BrowserRestartService.main_pid"

.field public static final EXTRA_RESTART:Ljava/lang/String; = "org.chromium.chrome.browser.BrowserRestartService.restart"

.field public static final RESTART_TIMEOUT_MS:I = 0x12c

.field public static final TAG:Ljava/lang/String; = "BrowserRestartService"

.field public static final cbc:LcY;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mDelayHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/oculus/browser/BrowserRestartService;

    .line 2
    new-instance v0, LcY;

    invoke-direct {v0}, LcY;-><init>()V

    sput-object v0, Lcom/oculus/browser/BrowserRestartService;->cbc:LcY;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/oculus/browser/BrowserRestartService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/oculus/browser/BrowserRestartService$LocalBinder;-><init>(Lcom/oculus/browser/BrowserRestartService;)V

    iput-object v0, p0, Lcom/oculus/browser/BrowserRestartService;->mBinder:Landroid/os/IBinder;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/browser/BrowserRestartService;->mDelayHandler:Landroid/os/Handler;

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/oculus/browser/BrowserRestartService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-string v1, "org.chromium.chrome.browser.BrowserRestartService.main_pid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "org.chromium.chrome.browser.BrowserRestartService.restart"

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    invoke-static {}, LbY;->b()Z

    invoke-super {p0}, Landroid/app/Service;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/BrowserRestartService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const-string v0, "org.chromium.chrome.browser.BrowserRestartService.main_pid"

    const/4 v1, -0x1

    .line 1
    invoke-static {p1, v0, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Killing the browser, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrowserRestartService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const-string v0, "org.chromium.chrome.browser.BrowserRestartService.restart"

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v0, v1}, LCO0;->a(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    new-instance v2, Lcom/oculus/browser/BrowserRestartService$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/oculus/browser/BrowserRestartService$1;-><init>(Lcom/oculus/browser/BrowserRestartService;Landroid/content/Intent;Landroid/content/Context;)V

    .line 10
    iget-object v0, p0, Lcom/oculus/browser/BrowserRestartService;->mDelayHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
