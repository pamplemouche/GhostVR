.class public Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;
.super Lcom/oculus/appmanager/eventbus/BaseEventBus;
.source "UninstallerEventBus.java"


# static fields
.field private static sInstance:Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/appmanager/eventbus/BaseEventBus;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;->sInstance:Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;

    invoke-direct {v0}, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;-><init>()V

    sput-object v0, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;->sInstance:Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;

    .line 19
    :cond_0
    sget-object v0, Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;->sInstance:Lcom/oculus/appmanager/uninstaller/events/UninstallerEventBus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
