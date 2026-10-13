.class public Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiverAutoProvider;
.super Lcom/facebook/inject/AbstractComponentProvider;
.source "UninstallBroadcastReceiverAutoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/inject/AbstractComponentProvider",
        "<",
        "Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/inject/AbstractComponentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 19
    instance-of v0, p1, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiverAutoProvider;

    return v0
.end method

.method public inject(Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;)V

    .line 15
    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;

    invoke-virtual {p0, p1}, Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiverAutoProvider;->inject(Lcom/oculus/appmanager/uninstaller/receivers/UninstallBroadcastReceiver;)V

    return-void
.end method
