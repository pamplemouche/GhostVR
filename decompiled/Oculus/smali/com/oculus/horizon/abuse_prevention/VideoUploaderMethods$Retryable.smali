.class abstract Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;
.super Ljava/lang/Object;
.source "VideoUploaderMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Retryable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method executeWithRetries(Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 72
    const-wide/16 v2, 0x3e8

    .line 73
    const/4 v0, 0x0

    move-wide v4, v2

    move-object v2, v0

    move v0, v1

    .line 74
    :goto_0
    if-ge v0, v11, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 77
    :catch_0
    move-exception v2

    .line 80
    invoke-static {}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Got error, retrying (retry %s of %s) after sleeping for %s ms."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v0, 0x1

    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 84
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 79
    invoke-static {v3, v2, v6, v7}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;->getMethodNameForLogging()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v2, v3, v6}, Lcom/oculus/horizon/logging/OculusLogger$VideoUploaderLogger;->reportVideoUploadRetry(Ljava/lang/Exception;Ljava/lang/String;I)V

    .line 89
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :goto_1
    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :catch_1
    move-exception v3

    .line 91
    invoke-static {}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InterruptedException"

    invoke-static {v6, v7, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 95
    :cond_0
    new-instance v0, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;

    const-string v3, "Ran out of retries for %s"

    new-array v4, v10, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderMethods$Retryable;->getMethodNameForLogging()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v0, v2, v3, v4}, Lcom/oculus/horizon/abuse_prevention/VideoUploaderException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected abstract getMethodNameForLogging()Ljava/lang/String;
.end method
