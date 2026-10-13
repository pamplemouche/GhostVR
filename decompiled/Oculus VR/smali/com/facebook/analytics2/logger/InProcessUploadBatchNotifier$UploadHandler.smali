.class Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;
.super Landroid/os/Handler;
.source "InProcessUploadBatchNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->this$0:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;

    .line 156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 157
    return-void
.end method

.method private doUpload(Ljava/io/ByteArrayOutputStream;)V
    .locals 6

    .prologue
    .line 171
    new-instance v3, Lcom/facebook/analytics2/logger/MemoryBatchPayload;

    iget-object v0, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->this$0:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;

    .line 172
    invoke-static {v0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->access$000(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/facebook/analytics2/logger/MemoryBatchPayload;-><init>(Ljava/io/ByteArrayOutputStream;Lcom/facebook/analytics2/logger/BatchDynamicMetadataHelper;)V

    .line 174
    new-instance v0, Lcom/facebook/analytics2/logger/UploadProcessor;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->this$0:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;

    .line 176
    invoke-static {v1}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->access$100(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/analytics2/logger/Uploader;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->this$0:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;

    .line 177
    invoke-static {v2}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->access$200(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;

    move-result-object v2

    iget-object v2, v2, Lcom/facebook/analytics2/logger/CommonUploadSchedulerParams;->priority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 178
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$InProcessUploadProcesserCallback;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$InProcessUploadProcesserCallback;-><init>(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$1;)V

    iget-object v5, p0, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->this$0:Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;

    .line 180
    invoke-static {v5}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;->access$400(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;)Lcom/facebook/flexiblesampling/SamplingPolicyConfig;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadProcessor;-><init>(Lcom/facebook/analytics2/logger/Uploader;Lcom/facebook/analytics2/logger/UploadJob$Priority;Ljava/util/Iterator;Lcom/facebook/analytics2/logger/UploadProcessorCallback;Lcom/facebook/flexiblesampling/SamplingPolicyConfig;)V

    .line 182
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadProcessor;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadProcessor;->uploadNext()V

    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->doUpload(Ljava/io/ByteArrayOutputStream;)V

    .line 168
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public sendUpload(Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->removeMessages(ILjava/lang/Object;)V

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 190
    return-void
.end method

.method public sendUploadDelayed(Ljava/io/ByteArrayOutputStream;J)V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$UploadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 195
    return-void
.end method
