.class final Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;
.super Ljava/lang/Object;
.source "FbUploaderImpl.java"

# interfaces
.implements Lcom/facebook/fbuploader/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/FbUploaderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FbUploaderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/fbuploader/FbUploaderImpl;


# direct methods
.method private constructor <init>(Lcom/facebook/fbuploader/FbUploaderImpl;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;->this$0:Lcom/facebook/fbuploader/FbUploaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;-><init>(Lcom/facebook/fbuploader/FbUploaderImpl;)V

    return-void
.end method


# virtual methods
.method public onCancellation()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;->this$0:Lcom/facebook/fbuploader/FbUploaderImpl;

    invoke-static {v0, p0}, Lcom/facebook/fbuploader/FbUploaderImpl;->access$100(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;)V

    .line 55
    return-void
.end method

.method public onCompletion(Lcom/facebook/fbuploader/UploadResult;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;->this$0:Lcom/facebook/fbuploader/FbUploaderImpl;

    invoke-static {v0, p0, p1}, Lcom/facebook/fbuploader/FbUploaderImpl;->access$200(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadResult;)V

    .line 60
    return-void
.end method

.method public onFailure(Lcom/facebook/fbuploader/UploadFailureException;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;->this$0:Lcom/facebook/fbuploader/FbUploaderImpl;

    invoke-static {v0, p0, p1}, Lcom/facebook/fbuploader/FbUploaderImpl;->access$000(Lcom/facebook/fbuploader/FbUploaderImpl;Lcom/facebook/fbuploader/FbUploaderImpl$FbUploaderListener;Lcom/facebook/fbuploader/UploadFailureException;)V

    .line 50
    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
