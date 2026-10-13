.class Lcom/facebook/analytics2/logger/UploadJobHandlerFactory;
.super Ljava/lang/Object;
.source "UploadJobHandlerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)Lcom/facebook/analytics2/logger/UploadJobHandler;
    .locals 1

    .line 16
    new-instance v0, Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/analytics2/logger/UploadJobHandler;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/facebook/analytics2/logger/UploadJobHandler$InvocationParams;Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V

    return-object v0
.end method
