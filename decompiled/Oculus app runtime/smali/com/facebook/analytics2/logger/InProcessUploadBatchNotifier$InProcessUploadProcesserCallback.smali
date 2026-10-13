.class Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$InProcessUploadProcesserCallback;
.super Ljava/lang/Object;
.source "InProcessUploadBatchNotifier.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadProcessorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InProcessUploadProcesserCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$1;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/facebook/analytics2/logger/InProcessUploadBatchNotifier$InProcessUploadProcesserCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 3

    const/4 v0, 0x0

    .line 148
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InProcessUploadScheduler"

    const-string v2, "Failed to upload batch, it will not be retried"

    invoke-static {v1, p1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "InProcessUploadScheduler"

    const-string v1, "Successfully uploaded batch"

    .line 143
    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
