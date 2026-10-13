.class Lcom/oculus/horizon/store/StoreCountdownTimer$1;
.super Landroid/os/CountDownTimer;
.source "StoreCountdownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreCountdownTimer;->refresh()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreCountdownTimer;JJ)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;->this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;->this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->access$000(Lcom/oculus/horizon/store/StoreCountdownTimer;)Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;->this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->access$000(Lcom/oculus/horizon/store/StoreCountdownTimer;)Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;->onCountdownFinish()V

    .line 58
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;->this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->access$000(Lcom/oculus/horizon/store/StoreCountdownTimer;)Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;->this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 48
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->access$100(Lcom/oculus/horizon/store/StoreCountdownTimer;)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;->this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreCountdownTimer;->access$200(Lcom/oculus/horizon/store/StoreCountdownTimer;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/oculus/horizon/store/StoreCountdownTimer;->getMillisInFormattedString(JLjava/util/Locale;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreCountdownTimer$1;->this$0:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreCountdownTimer;->access$000(Lcom/oculus/horizon/store/StoreCountdownTimer;)Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;->onCountdownTick(Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method
