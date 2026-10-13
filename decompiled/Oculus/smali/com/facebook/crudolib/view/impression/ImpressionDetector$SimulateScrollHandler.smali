.class Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;
.super Landroid/os/Handler;
.source "ImpressionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/crudolib/view/impression/ImpressionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimulateScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/crudolib/view/impression/ImpressionDetector;


# direct methods
.method public constructor <init>(Lcom/facebook/crudolib/view/impression/ImpressionDetector;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;->this$0:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    .line 376
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 377
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 385
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 390
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;->this$0:Lcom/facebook/crudolib/view/impression/ImpressionDetector;

    invoke-static {v0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector;->access$300(Lcom/facebook/crudolib/view/impression/ImpressionDetector;)V

    .line 392
    return-void

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public sendPerformOnScrolled()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/crudolib/view/impression/ImpressionDetector$SimulateScrollHandler;->sendEmptyMessage(I)Z

    .line 381
    return-void
.end method
