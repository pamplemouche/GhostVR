.class Lcom/oculus/vrshell/home/module/LivestreamingModule$1;
.super Landroid/os/ResultReceiver;
.source "LivestreamingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/home/module/LivestreamingModule;->startLivestreaming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/home/module/LivestreamingModule;

.field final synthetic val$callbackID:I


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/home/module/LivestreamingModule;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/vrshell/home/module/LivestreamingModule;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->this$0:Lcom/oculus/vrshell/home/module/LivestreamingModule;

    iput p3, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->val$callbackID:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    .line 131
    const-string v2, "streaming_result"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "streamingResult":I
    const-string v2, "streaming_result_string"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "streamingResultString":Ljava/lang/String;
    if-gez v0, :cond_0

    .line 134
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->this$0:Lcom/oculus/vrshell/home/module/LivestreamingModule;

    iget v3, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->val$callbackID:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->this$0:Lcom/oculus/vrshell/home/module/LivestreamingModule;

    invoke-static {v5, v1}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->access$000(Lcom/oculus/vrshell/home/module/LivestreamingModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->invokeCallback(ILjava/lang/String;)V

    .line 141
    .end local v0    # "streamingResult":I
    .end local v1    # "streamingResultString":Ljava/lang/String;
    :goto_0
    return-void

    .line 136
    .restart local v0    # "streamingResult":I
    .restart local v1    # "streamingResultString":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->this$0:Lcom/oculus/vrshell/home/module/LivestreamingModule;

    iget v3, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->val$callbackID:I

    const-string v4, "[{}]"

    invoke-virtual {v2, v3, v4}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->invokeCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v0    # "streamingResult":I
    .end local v1    # "streamingResultString":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->this$0:Lcom/oculus/vrshell/home/module/LivestreamingModule;

    iget v3, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->val$callbackID:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/vrshell/home/module/LivestreamingModule$1;->this$0:Lcom/oculus/vrshell/home/module/LivestreamingModule;

    const-string v6, "Unable to receive results from Facebook livestream attempt."

    invoke-static {v5, v6}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->access$000(Lcom/oculus/vrshell/home/module/LivestreamingModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oculus/vrshell/home/module/LivestreamingModule;->invokeCallback(ILjava/lang/String;)V

    goto :goto_0
.end method
