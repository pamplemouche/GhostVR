.class Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;
.super Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;
.source "VideoUploaderMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->videoUploadStartWithRetries(Ljava/lang/String;JLjava/lang/String;ILcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;)Lcom/oculus/horizon/abuse_prevention/VideoUploadStartResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable",
        "<",
        "Lcom/oculus/horizon/abuse_prevention/VideoUploadStartResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

.field final synthetic val$chunkSize:I

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$fileSize:J

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    iput-object p2, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$fileName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$fileSize:J

    iput-object p5, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$mimeType:Ljava/lang/String;

    iput p6, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$chunkSize:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;-><init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;)V

    return-void
.end method


# virtual methods
.method protected execute()Lcom/oculus/horizon/abuse_prevention/VideoUploadStartResponse;
    .locals 6

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    invoke-static {v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->access$200(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;)Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Methods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$fileName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$fileSize:J

    iget-object v4, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$mimeType:Ljava/lang/String;

    iget v5, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->val$chunkSize:I

    invoke-interface/range {v0 .. v5}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Methods;->videoUploadStart(Ljava/lang/String;JLjava/lang/String;I)Lcom/oculus/horizon/abuse_prevention/VideoUploadStartResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;->execute()Lcom/oculus/horizon/abuse_prevention/VideoUploadStartResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getMethodNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "/video_upload_start"

    return-object v0
.end method
