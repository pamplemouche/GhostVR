.class Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;
.super Ljava/lang/Object;
.source "GearVRLogger.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->bindToServiceInOCMS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;


# direct methods
.method constructor <init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 106
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 109
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p2}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/IUnifiedTelemetryService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$102(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/aidl/IUnifiedTelemetryService;)Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 110
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    new-instance v2, Landroid/os/HandlerThread;

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$202(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 111
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 112
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    new-instance v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;

    iget-object v3, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    iget-object v4, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Looper;)V

    invoke-static {v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$302(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Handler;)Landroid/os/Handler;

    .line 113
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    sget-object v2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->FETCH_GATEKEEPERS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-static {v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 114
    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException on linkToDeath"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 122
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$102(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/aidl/IUnifiedTelemetryService;)Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 127
    return-void
.end method
