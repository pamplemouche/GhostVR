.class Lcom/oculus/horizon/samsung/ControllerConnection$1;
.super Ljava/lang/Object;
.source "ControllerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/samsung/ControllerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/samsung/ControllerConnection;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/samsung/ControllerConnection;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oculus/horizon/samsung/ControllerConnection$1;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 33
    const-string v0, "ControllerConnection"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection$1;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    invoke-static {p2}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/samsung/ControllerConnection;->access$002(Lcom/oculus/horizon/samsung/ControllerConnection;Lcom/samsung/android/app/vr/input/service/IRemoteInterface;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection$1;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    invoke-static {v0}, Lcom/oculus/horizon/samsung/ControllerConnection;->access$000(Lcom/oculus/horizon/samsung/ControllerConnection;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/samsung/ControllerConnection$1;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    invoke-static {v1}, Lcom/oculus/horizon/samsung/ControllerConnection;->access$100(Lcom/oculus/horizon/samsung/ControllerConnection;)Lcom/samsung/android/app/vr/input/service/IServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/vr/input/service/IRemoteInterface;->RegisterCallback(Lcom/samsung/android/app/vr/input/service/IServiceCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "ControllerConnection"

    const-string v2, "Unable to register callback"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 45
    const-string v0, "ControllerConnection"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection$1;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/horizon/samsung/ControllerConnection;->access$002(Lcom/oculus/horizon/samsung/ControllerConnection;Lcom/samsung/android/app/vr/input/service/IRemoteInterface;)Lcom/samsung/android/app/vr/input/service/IRemoteInterface;

    .line 47
    return-void
.end method
