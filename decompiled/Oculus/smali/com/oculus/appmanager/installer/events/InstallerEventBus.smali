.class public Lcom/oculus/appmanager/installer/events/InstallerEventBus;
.super Lcom/oculus/appmanager/eventbus/BaseEventBus;
.source "InstallerEventBus.java"


# static fields
.field private static sInstance:Lcom/oculus/appmanager/installer/events/InstallerEventBus;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/appmanager/eventbus/BaseEventBus;-><init>()V

    .line 13
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/oculus/appmanager/installer/events/InstallerEventBus;
    .locals 2

    .prologue
    .line 16
    const-class v1, Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->sInstance:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-direct {v0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;-><init>()V

    sput-object v0, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->sInstance:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    .line 19
    :cond_0
    sget-object v0, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->sInstance:Lcom/oculus/appmanager/installer/events/InstallerEventBus;
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
