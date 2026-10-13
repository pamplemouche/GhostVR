.class public Lcom/oculus/os/VrDesktopManager;
.super Ljava/lang/Object;
.source "VrDesktopManager.java"


# direct methods
.method public constructor <init>(Lcom/oculus/vrdesktop/IVrDesktopService;)V
    .locals 2
    .param p1, "service"    # Lcom/oculus/vrdesktop/IVrDesktopService;

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/oculus/os/VrDesktopManager;
    .locals 2

    .prologue
    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public startActivity(Landroid/os/IBinder;Landroid/view/Surface;IIILandroid/content/Intent;)Lcom/oculus/vrdesktop/IContainer;
    .locals 2
    .param p1, "parentActivityToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "density"    # I
    .param p6, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
