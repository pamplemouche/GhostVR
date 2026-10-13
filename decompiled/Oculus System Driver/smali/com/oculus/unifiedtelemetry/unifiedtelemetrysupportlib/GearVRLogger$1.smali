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

    .line 103
    iput-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 106
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 109
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p2}, Lcom/oculus/aidl/IUnifiedTelemetryService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oculus/aidl/IUnifiedTelemetryService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$102(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/aidl/IUnifiedTelemetryService;)Lcom/oculus/aidl/IUnifiedTelemetryService;

    .line 110
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    new-instance p2, Landroid/os/HandlerThread;

    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$202(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 111
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 112
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    new-instance p2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;

    iget-object v0, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    iget-object v1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageHandler;-><init>(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Looper;)V

    invoke-static {p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$302(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Landroid/os/Handler;)Landroid/os/Handler;

    .line 113
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    sget-object p2, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;->FETCH_GATEKEEPERS:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;

    invoke-static {p1, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$400(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$MessageType;)V

    .line 114
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$500(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RemoteException on linkToDeath"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 122
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    invoke-static {p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$200(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger$1;->this$0:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;->access$102(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/GearVRLogger;Lcom/oculus/aidl/IUnifiedTelemetryService;)Lcom/oculus/aidl/IUnifiedTelemetryService;

    return-void
.end method
