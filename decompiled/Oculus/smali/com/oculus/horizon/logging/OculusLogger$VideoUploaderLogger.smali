.class public Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;
.super Ljava/lang/Object;
.source "OculusLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/logging/OculusLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoUploaderLogger"
.end annotation


# instance fields
.field public audioInputFileSize:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public muxedVideoFileSize:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final recordingUUID:Ljava/lang/String;

.field public final reportID:Ljava/lang/String;

.field final synthetic this$0:Lcom/oculus/horizon/logging/OculusLogger;

.field public uploadSessionID:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public videoInputFileSize:Ljava/lang/Long;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/logging/OculusLogger;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2017
    iput-object p1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->this$0:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2012
    iput-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->videoInputFileSize:Ljava/lang/Long;

    .line 2013
    iput-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->audioInputFileSize:Ljava/lang/Long;

    .line 2014
    iput-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->muxedVideoFileSize:Ljava/lang/Long;

    .line 2015
    iput-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->uploadSessionID:Ljava/lang/String;

    .line 2018
    iput-object p2, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->recordingUUID:Ljava/lang/String;

    .line 2019
    iput-object p3, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->reportID:Ljava/lang/String;

    .line 2020
    return-void
.end method

.method private getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2069
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2070
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2071
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2072
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2073
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Lcom/oculus/logging/utils/Event;)V
    .locals 4

    .prologue
    .line 2023
    const-string/jumbo v0, "recording_uuid"

    iget-object v1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->recordingUUID:Ljava/lang/String;

    .line 2024
    invoke-interface {p1, v0, v1}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string/jumbo v1, "report_id"

    iget-object v2, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->reportID:Ljava/lang/String;

    .line 2025
    invoke-interface {v0, v1, v2}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    .line 2026
    iget-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->videoInputFileSize:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 2027
    const-string/jumbo v0, "video_input_file_size"

    iget-object v1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->videoInputFileSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;J)Lcom/oculus/logging/utils/Event;

    .line 2029
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->audioInputFileSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2030
    const-string v0, "audio_input_file_size"

    iget-object v1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->audioInputFileSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;J)Lcom/oculus/logging/utils/Event;

    .line 2032
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->muxedVideoFileSize:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 2033
    const-string v0, "muxed_video_file_size"

    iget-object v1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->muxedVideoFileSize:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;J)Lcom/oculus/logging/utils/Event;

    .line 2035
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->uploadSessionID:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2036
    const-string/jumbo v0, "upload_session_id"

    iget-object v1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->uploadSessionID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    .line 2038
    :cond_3
    invoke-interface {p1}, Lcom/oculus/logging/utils/Event;->logAndRelease()V

    .line 2039
    return-void
.end method


# virtual methods
.method public reportVideoUploadFailure(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 2048
    invoke-direct {p0, p1}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2049
    iget-object v1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->this$0:Lcom/oculus/horizon/logging/OculusLogger;

    .line 2050
    invoke-static {v1}, Lcom/oculus/horizon/logging/OculusLogger;->access$000(Lcom/oculus/horizon/logging/OculusLogger;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v1

    const-string v2, "moonlight_events_abuse_video_upload_failure"

    .line 2051
    invoke-interface {v1, v2}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v1

    const-string/jumbo v2, "reason"

    .line 2052
    invoke-interface {v1, v2, v0}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 2053
    invoke-direct {p0, v0}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->log(Lcom/oculus/logging/utils/Event;)V

    .line 2054
    return-void
.end method

.method public reportVideoUploadRetry(Ljava/lang/Exception;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 2077
    invoke-direct {p0, p1}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 2078
    iget-object v1, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->this$0:Lcom/oculus/horizon/logging/OculusLogger;

    .line 2079
    invoke-static {v1}, Lcom/oculus/horizon/logging/OculusLogger;->access$000(Lcom/oculus/horizon/logging/OculusLogger;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v1

    const-string v2, "moonlight_events_abuse_video_upload_retry"

    .line 2080
    invoke-interface {v1, v2}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v1

    const-string/jumbo v2, "reason"

    .line 2081
    invoke-interface {v1, v2, v0}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string/jumbo v1, "retry_number"

    .line 2082
    invoke-interface {v0, v1, p3}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;I)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    const-string v1, "method"

    .line 2083
    invoke-interface {v0, v1, p2}, Lcom/oculus/logging/utils/Event;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 2085
    invoke-direct {p0, v0}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->log(Lcom/oculus/logging/utils/Event;)V

    .line 2086
    return-void
.end method

.method public reportVideoUploadStart()V
    .locals 2

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->this$0:Lcom/oculus/horizon/logging/OculusLogger;

    .line 2043
    invoke-static {v0}, Lcom/oculus/horizon/logging/OculusLogger;->access$000(Lcom/oculus/horizon/logging/OculusLogger;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    const-string v1, "moonlight_events_abuse_video_upload_start"

    invoke-interface {v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 2044
    invoke-direct {p0, v0}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->log(Lcom/oculus/logging/utils/Event;)V

    .line 2045
    return-void
.end method

.method public reportVideoUploadSuccess()V
    .locals 2

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->this$0:Lcom/oculus/horizon/logging/OculusLogger;

    .line 2058
    invoke-static {v0}, Lcom/oculus/horizon/logging/OculusLogger;->access$000(Lcom/oculus/horizon/logging/OculusLogger;)Lcom/oculus/logging/utils/EventMigrationHelper;

    move-result-object v0

    const-string v1, "moonlight_events_abuse_video_upload_success"

    invoke-interface {v0, v1}, Lcom/oculus/logging/utils/EventMigrationHelper;->createEvent(Ljava/lang/String;)Lcom/oculus/logging/utils/Event;

    move-result-object v0

    .line 2059
    invoke-direct {p0, v0}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->log(Lcom/oculus/logging/utils/Event;)V

    .line 2060
    return-void
.end method
