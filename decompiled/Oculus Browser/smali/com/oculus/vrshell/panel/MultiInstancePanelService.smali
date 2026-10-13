.class public Lcom/oculus/vrshell/panel/MultiInstancePanelService;
.super Lcom/oculus/vrshell/panel/PanelService;
.source "PG"


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiInstancePanelServi"


# instance fields
.field public final nativeLibraryName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "cpanelservice"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/MultiInstancePanelService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oculus/vrshell/panel/PanelService;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeLibraryName:Ljava/lang/String;

    return-void
.end method

.method private native nativeCreatePanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private native nativeLoadPanelAppLibrary(Ljava/lang/String;)V
.end method


# virtual methods
.method public createPanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeCreatePanelApp(I[Landroid/view/Surface;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/oculus/vrshell/panel/PanelService;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeLibraryName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/oculus/vrshell/panel/PanelService;->getDefaultLibraryName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "Loading library %s"

    .line 4
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiInstancePanelServi"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-direct {p0, v0}, Lcom/oculus/vrshell/panel/MultiInstancePanelService;->nativeLoadPanelAppLibrary(Ljava/lang/String;)V

    return-void
.end method
