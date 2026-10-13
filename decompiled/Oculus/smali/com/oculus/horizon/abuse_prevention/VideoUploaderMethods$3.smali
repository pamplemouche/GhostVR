.class Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;
.super Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;
.source "VideoUploaderMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->videoUploadSubmitWithRetries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;)Lcom/oculus/horizon/abuse_prevention/VideoUploadSubmitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable",
        "<",
        "Lcom/oculus/horizon/abuse_prevention/VideoUploadSubmitResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

.field final synthetic val$targetObjectId:Ljava/lang/String;

.field final synthetic val$uploadSessionId:Ljava/lang/String;

.field final synthetic val$videoType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    iput-object p2, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->val$targetObjectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->val$videoType:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->val$uploadSessionId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;-><init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;)V

    return-void
.end method


# virtual methods
.method protected execute()Lcom/oculus/horizon/abuse_prevention/VideoUploadSubmitResponse;
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->this$0:Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;

    invoke-static {v0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->access$200(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;)Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Methods;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->val$targetObjectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->val$videoType:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->val$uploadSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Methods;->videoUploadSubmit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/abuse_prevention/VideoUploadSubmitResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$3;->execute()Lcom/oculus/horizon/abuse_prevention/VideoUploadSubmitResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getMethodNameForLogging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "/video_upload_submit"

    return-object v0
.end method
