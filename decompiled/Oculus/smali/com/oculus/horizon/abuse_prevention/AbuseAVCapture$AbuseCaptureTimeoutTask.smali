.class Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;
.super Ljava/lang/Object;
.source "AbuseAVCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AbuseCaptureTimeoutTask"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mRecordingUUID:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;->this$0:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;->mPackageName:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;->mRecordingUUID:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recording timeout, stopping uuid: %s"

    iget-object v2, p0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;->mRecordingUUID:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;->this$0:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;

    iget-object v1, p0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$AbuseCaptureTimeoutTask;->mRecordingUUID:Ljava/lang/String;

    sget-object v3, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$StopSource;->RECORDING_TIMEOUT:Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$StopSource;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture;->stop(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/abuse_prevention/AbuseAVCapture$StopSource;)Z

    .line 51
    return-void
.end method
