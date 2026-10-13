.class Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Landroid/os/Handler;Lcom/facebook/rti/common/time/MonotonicClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field final synthetic val$monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/MonotonicClock;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;->val$monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 55
    if-nez p2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->access$000(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->access$100(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;->val$monotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 68
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState$1;->this$0:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->access$200(Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;)Lcom/facebook/rti/mqtt/common/hardware/ScreenStateListener;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/ScreenStateListener;->notify(Z)V

    goto :goto_0
.end method
