.class Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;
.super Ljava/lang/Object;
.source "UploadJobHandlerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->queueJob(Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

.field final synthetic val$callback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

.field final synthetic val$params:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;


# direct methods
.method constructor <init>(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;->val$params:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;->val$callback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;->val$params:Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$1;->val$callback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-static {v0, v1, v2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->access$000(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    .line 80
    return-void
.end method
