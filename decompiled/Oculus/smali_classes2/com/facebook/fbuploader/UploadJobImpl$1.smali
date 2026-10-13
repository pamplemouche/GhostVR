.class Lcom/facebook/fbuploader/UploadJobImpl$1;
.super Ljava/lang/Object;
.source "UploadJobImpl.java"

# interfaces
.implements Lcom/facebook/fbuploader/Content$HashComputeListener;


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
    .line 155
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadJobImpl$1;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/fbuploader/UploadJobImpl$1;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    iget-object v0, v0, Lcom/facebook/fbuploader/UploadJobImpl;->mUploadListener:Lcom/facebook/fbuploader/Listener;

    iget-object v1, p0, Lcom/facebook/fbuploader/UploadJobImpl$1;->this$0:Lcom/facebook/fbuploader/UploadJobImpl;

    invoke-static {v1}, Lcom/facebook/fbuploader/UploadJobImpl;->access$000(Lcom/facebook/fbuploader/UploadJobImpl;)F

    move-result v1

    mul-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/facebook/fbuploader/Listener;->onProgress(F)V

    .line 159
    return-void
.end method
