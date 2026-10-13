.class Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;
.super Ljava/lang/Object;
.source "Nux360VerificationChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/Nux360VerificationChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->postSelf()V

    return-void
.end method

.method private postSelf()V
    .locals 6

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$600(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$500(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Ljava/lang/Runnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$000(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Lbolts/TaskCompletionSource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$100(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Lbolts/CancellationTokenSource;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$000(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Lbolts/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$400(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Lcom/oculus/horizon/nux360/NuxMethods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;->this$0:Lcom/oculus/horizon/nux360/Nux360VerificationChecker;

    .line 32
    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker;->access$200(Lcom/oculus/horizon/nux360/Nux360VerificationChecker;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1$1;-><init>(Lcom/oculus/horizon/nux360/Nux360VerificationChecker$1;)V

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/nux360/NuxMethods;->checkEmail(Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method
