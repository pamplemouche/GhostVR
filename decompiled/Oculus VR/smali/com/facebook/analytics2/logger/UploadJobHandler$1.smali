.class Lcom/facebook/analytics2/logger/UploadJobHandler$1;
.super Ljava/lang/Object;
.source "UploadJobHandler.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/FileBatchPayloadIterator$ProcessDirectoryProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadJobHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;


# direct methods
.method constructor <init>(Lcom/facebook/analytics2/logger/UploadJobHandler;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$1;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExhaustedProcessDir(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p2    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 307
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v1, "UploadJobHandler"

    const-string v2, "Finished uploading on behalf of %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$1;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadJobHandler;->access$000(Lcom/facebook/analytics2/logger/UploadJobHandler;)Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    return-void
.end method
