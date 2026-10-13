.class Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;
.super Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;
.source "VideoUploaderMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->videoUploadTransferWithRetries(Ljava/lang/String;JLcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;)Lcom/oculus/horizon/abuse_prevention/VideoUploadTransferResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable",
        "<",
        "Lcom/oculus/horizon/abuse_prevention/VideoUploadTransferResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

.field final synthetic val$chunk:Lcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;

.field final synthetic val$startOffset:J

.field final synthetic val$uploadSessionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;Ljava/lang/String;JLcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;)V
    .locals 1

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    iput-object p2, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->val$uploadSessionId:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->val$startOffset:J

    iput-object p5, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->val$chunk:Lcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;-><init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;)V

    return-void
.end method


# virtual methods
.method protected execute()Lcom/oculus/horizon/abuse_prevention/VideoUploadTransferResponse;
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    invoke-static {v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->access$200(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;)Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Methods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->val$uploadSessionId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->val$startOffset:J

    iget-object v4, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->val$chunk:Lcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Methods;->videoUploadTransfer(Ljava/lang/String;JLcom/oculus/horizon/abuse_prevention/TypedByteArrayWithFilename;)Lcom/oculus/horizon/abuse_prevention/VideoUploadTransferResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$2;->execute()Lcom/oculus/horizon/abuse_prevention/VideoUploadTransferResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getMethodNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "/video_upload_transfer"

    return-object v0
.end method
