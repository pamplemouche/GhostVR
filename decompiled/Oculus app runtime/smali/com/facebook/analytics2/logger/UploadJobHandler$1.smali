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

    .line 304
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$1;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExhaustedProcessDir(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p2    # Ljava/io/File;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 307
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadJobHandler"

    const-string v1, "Finished uploading on behalf of %s"

    .line 308
    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandler$1;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandler;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/UploadJobHandler;->access$000(Lcom/facebook/analytics2/logger/UploadJobHandler;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
