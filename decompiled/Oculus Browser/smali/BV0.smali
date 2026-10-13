.class public abstract LBV0;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field public w:LWV;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
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
    .locals 3

    .line 1
    iget-object v0, p0, LBV0;->w:LWV;

    .line 2
    iget-boolean v1, v0, LWV;->l:Z

    if-eqz v1, :cond_0

    iget-object p1, v0, LWV;->n:LaW;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, LWV;->b:Landroid/app/Service;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    const-string v1, "org.chromium.base.process_launcher.extra.bind_to_caller"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, LWV;->f:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, LWV;->l:Z

    .line 6
    iget-object v1, v0, LWV;->a:LXV;

    invoke-interface {v1, p1}, LXV;->a(Landroid/content/Intent;)V

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LSV;

    invoke-direct {v1, v0}, LSV;-><init>(LWV;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, v0, LWV;->n:LaW;

    :goto_0
    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v1, LWV;

    new-instance v2, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;

    invoke-direct {v2}, Lorg/chromium/content/app/ContentChildProcessServiceDelegate;-><init>()V

    invoke-direct {v1, v2, p0, v0}, LWV;-><init>(LXV;Landroid/app/Service;Landroid/content/Context;)V

    .line 4
    iput-object v1, p0, LBV0;->w:LWV;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ChildProcessService"

    const-string v4, "Creating new ChildProcessService pid=%d"

    invoke-static {v3, v4, v2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-boolean v2, LWV;->o:Z

    if-nez v2, :cond_0

    .line 7
    sput-boolean v0, LWV;->o:Z

    .line 8
    iget-object v0, v1, LWV;->c:Landroid/content/Context;

    .line 9
    sput-object v0, LzT;->a:Landroid/content/Context;

    .line 10
    iget-object v0, v1, LWV;->a:LXV;

    invoke-interface {v0}, LXV;->b()V

    .line 11
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, LVV;

    invoke-direct {v2, v1}, LVV;-><init>(LWV;)V

    const-string v3, "ChildProcessMain"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, v1, LWV;->h:Ljava/lang/Thread;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal child process reuse."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 14
    throw v0
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, LBV0;->w:LWV;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "ChildProcessService"

    const-string v4, "Destroying ChildProcessService pid=%d"

    invoke-static {v2, v4, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 5
    iput-object v1, p0, LBV0;->w:LWV;

    return-void

    .line 6
    :cond_0
    throw v1
.end method

.method public setTheme(I)V
    .locals 0

    invoke-static {}, LbY;->b()Z

    invoke-super {p0, p1}, Landroid/app/Service;->setTheme(I)V

    return-void
.end method
