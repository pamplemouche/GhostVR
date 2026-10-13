.class Lcom/facebook/fbuploader/UploadJobImpl$2;
.super Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;
.source "UploadJobImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fbuploader/UploadJobImpl;->fetchOffsetUsingGetRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fbuploader/UploadJobImpl;


# direct methods
.method constructor <init>(Lcom/facebook/fbuploader/UploadJobImpl;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadJobImpl$2;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-direct {p0}, Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$2;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0, p1}, Lcom/facebook/fbuploader/UploadJobImpl;->access$100(Lcom/facebook/fbuploader/UploadJobImpl;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;Z)V
    .locals 8

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$2;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    iget-object v0, v0, Lcom/facebook/fbuploader/UploadJobImpl;->mConfig:Lcom/facebook/fbuploader/Config;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config;->getDedupEvaluator()Lcom/facebook/fbuploader/DedupEvaluator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/fbuploader/DedupEvaluator;->recordFailure(Ljava/lang/Exception;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$2;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v0, p1}, Lcom/facebook/fbuploader/UploadJobImpl;->access$200(Lcom/facebook/fbuploader/UploadJobImpl;Ljava/lang/Exception;)J

    move-result-wide v2

    .line 179
    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl$2;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    const-string v4, "Failed GET request for fetching offset"

    sget-object v7, Lcom/facebook/fbuploader/HttpRequestExecutor$Method;->GET:Lcom/facebook/fbuploader/HttpRequestExecutor$Method;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lcom/facebook/fbuploader/UploadJobImpl;->access$300(Lcom/facebook/fbuploader/UploadJobImpl;JLjava/lang/String;Ljava/lang/Exception;ZLcom/facebook/fbuploader/HttpRequestExecutor$Method;)V

    .line 185
    return-void
.end method
