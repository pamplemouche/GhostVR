.class public Lcom/oculus/vrshell/panel/MultiInstancePanelService;
.super Lcom/oculus/vrshell/panel/PanelService;
.source "MultiInstancePanelService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiInstancePanelService"


# instance fields
.field private final nativeLibraryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "cpanelservice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/MultiInstancePanelService;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "nativeLibraryName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/oculus/vrshell/panel/PanelService;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeLibraryName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private native nativeCreatePanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private native nativeLoadPanelAppLibrary(Ljava/lang/String;)V
.end method


# virtual methods
.method protected createPanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # I
    .param p2, "surfaces"    # [Landroid/view/Surface;
    .param p3, "surfaceNames"    # [Ljava/lang/String;
    .param p4, "env"    # [Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeCreatePanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 45
    invoke-super {p0}, Lcom/oculus/vrshell/panel/PanelService;->onCreate()V

    .line 47
    iget-object v1, p0, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeLibraryName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->getDefaultLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "libraryName":Ljava/lang/String;
    :goto_0
    const-string v1, "MultiInstancePanelService"

    const-string v2, "Loading library %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeLoadPanelAppLibrary(Ljava/lang/String;)V

    .line 52
    return-void

    .line 48
    .end local v0    # "libraryName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeLibraryName:Ljava/lang/String;

    goto :goto_0
.end method
