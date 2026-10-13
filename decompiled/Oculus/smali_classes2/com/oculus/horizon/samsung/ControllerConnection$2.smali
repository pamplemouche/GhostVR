.class Lcom/oculus/horizon/samsung/ControllerConnection$2;
.super Lcom/samsung/android/app/vr/input/service/IServiceCallback$Stub;
.source "ControllerConnection.java"


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
    .line 50
    iput-object p1, p0, Lcom/oculus/horizon/samsung/ControllerConnection$2;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    invoke-direct {p0}, Lcom/samsung/android/app/vr/input/service/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonDown(I)V
    .locals 3

    .prologue
    .line 53
    const-string v0, "ControllerConnection"

    const-string v1, "onButtonDown: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection$2;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    invoke-static {v0}, Lcom/oculus/horizon/samsung/ControllerConnection;->access$200(Lcom/oculus/horizon/samsung/ControllerConnection;)Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;->onButtonDown(I)V

    .line 55
    return-void
.end method

.method public onConnectionState(I)V
    .locals 3

    .prologue
    .line 59
    const-string v0, "ControllerConnection"

    const-string v1, "onConnectionState: %d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/samsung/ControllerConnection$2;->this$0:Lcom/oculus/horizon/samsung/ControllerConnection;

    invoke-static {v0}, Lcom/oculus/horizon/samsung/ControllerConnection;->access$200(Lcom/oculus/horizon/samsung/ControllerConnection;)Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oculus/horizon/samsung/ControllerConnection$Callbacks;->onConnectionState(I)V

    .line 61
    return-void
.end method
