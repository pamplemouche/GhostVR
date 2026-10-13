.class public abstract Lcom/oculus/vrshell/home/StartRenderingOverlaysService;
.super Landroid/app/Service;
.source "StartRenderingOverlaysService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;
    }
.end annotation


# static fields
.field public static final CREATE_PANEL_APP_KEY_BUNDLE:Ljava/lang/String; = "panelBundle"

.field public static final CREATE_PANEL_APP_KEY_HEIGHT:Ljava/lang/String; = "panelHeight"

.field public static final CREATE_PANEL_APP_KEY_SURFACE:Ljava/lang/String; = "panelSurface"

.field public static final CREATE_PANEL_APP_KEY_WIDTH:Ljava/lang/String; = "panelWidth"

.field public static final ENV_GEARVR_DEVELOPER_MODE:Ljava/lang/String; = "_oc_gearvr_developer_mode"

.field public static final MSG_CREATE_OR_UPDATE_PANEL_APP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "StartRenderingOverlaysService"


# instance fields
.field private isDeveloperMode:Z

.field mHeight:I

.field mWidth:I

.field protected messenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->isDeveloperMode:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->messenger:Landroid/os/Messenger;

    .line 101
    iput v1, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->mWidth:I

    .line 102
    iput v1, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->mHeight:I

    .line 40
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->nativeLoadPanelAppLibrary(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/vrshell/home/StartRenderingOverlaysService;Landroid/view/Surface;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oculus/vrshell/home/StartRenderingOverlaysService;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->nativeCreatePanelApp(Landroid/view/Surface;[Ljava/lang/String;I)V

    return-void
.end method

.method private native nativeCreatePanelApp(Landroid/view/Surface;[Ljava/lang/String;I)V
.end method

.method private native nativeLoadPanelAppLibrary(Ljava/lang/String;)V
.end method


# virtual methods
.method public getPanelHeight()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->mHeight:I

    return v0
.end method

.method public getPanelWidth()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->mWidth:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 137
    const-string v0, "StartRenderingOverlaysService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 111
    const-string v0, "StartRenderingOverlaysService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vrmode_developer_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->isDeveloperMode:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;

    iget-boolean v2, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->isDeveloperMode:Z

    invoke-direct {v1, p0, v2}, Lcom/oculus/vrshell/home/StartRenderingOverlaysService$PanelMessageHandler;-><init>(Lcom/oculus/vrshell/home/StartRenderingOverlaysService;Z)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->messenger:Landroid/os/Messenger;

    .line 122
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "StartRenderingOverlaysService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x2

    .line 131
    const-string v0, "StartRenderingOverlaysService"

    const-string v1, "onStartCommand(%x, %d"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v5
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    const-string v0, "StartRenderingOverlaysService"

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setDimensions(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->mWidth:I

    .line 106
    iput p2, p0, Lcom/oculus/vrshell/home/StartRenderingOverlaysService;->mHeight:I

    .line 107
    return-void
.end method
