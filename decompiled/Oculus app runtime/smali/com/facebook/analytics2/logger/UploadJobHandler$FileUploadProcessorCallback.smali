.class Lcom/facebook/analytics2/logger/UploadJobHandler$FileUploadProcessorCallback;
.super Ljava/lang/Object;
.source "UploadJobHandler.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadProcessorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadJobHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileUploadProcessorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadJobHandler;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$FileUploadProcessorCallback;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$FileUploadProcessorCallback;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendUploadFailure(Ljava/io/IOException;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$FileUploadProcessorCallback;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->sendMaybeUploadNext()V

    return-void
.end method
