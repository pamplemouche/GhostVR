.class public Lcom/oculus/vrshell/panel/SingletonPanelService;
.super Lcom/oculus/vrshell/panel/PanelService;
.source "SingletonPanelService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "SingletonPanelService"


# instance fields
.field private final nativeLibraryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "cpanelservice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/SingletonPanelService;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "nativeLibraryName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/vrshell/panel/PanelService;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/oculus/vrshell/panel/SingletonPanelService;->nativeLibraryName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private native nativeCreatePanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private native nativeDestroyPanelApp()V
.end method

.method private native nativeLoadPanelAppLibrary(Ljava/lang/String;)V
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 84
    const-string v0, "SingletonPanelService"

    const-string v1, "Binder died; destroying panel app"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->nativeDestroyPanelApp()V

    .line 86
    return-void
.end method

.method protected createPanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # I
    .param p2, "surfaces"    # [Landroid/view/Surface;
    .param p3, "surfaceNames"    # [Ljava/lang/String;
    .param p4, "env"    # [Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/panel/SingletonPanelService;->nativeCreatePanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    :try_start_0
    invoke-super {p0, p1}, Lcom/oculus/vrshell/panel/PanelService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 66
    .local v1, "ib":Landroid/os/IBinder;
    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "ib":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SingletonPanelService"

    const-string v3, "Failed to install DeathRecipient on Binder instance"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 53
    invoke-super {p0}, Lcom/oculus/vrshell/panel/PanelService;->onCreate()V

    .line 55
    iget-object v1, p0, Lcom/oculus/vrshell/panel/SingletonPanelService;->nativeLibraryName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->getDefaultLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "libraryName":Ljava/lang/String;
    :goto_0
    const-string v1, "SingletonPanelService"

    const-string v2, "Loading library %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->nativeLoadPanelAppLibrary(Ljava/lang/String;)V

    .line 60
    return-void

    .line 56
    .end local v0    # "libraryName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panel/SingletonPanelService;->nativeLibraryName:Ljava/lang/String;

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/oculus/vrshell/panel/PanelService;->onUnbind(Landroid/content/Intent;)Z

    .line 78
    invoke-direct {p0}, Lcom/oculus/vrshell/panel/SingletonPanelService;->nativeDestroyPanelApp()V

    .line 79
    const/4 v0, 0x0

    return v0
.end method
