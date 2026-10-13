.class Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$ResolveConflictException;
.super Ljava/lang/Exception;
.source "ResolveConflictTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveConflictException"
.end annotation


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 44
    const-string v0, "Resolve conflict failed during step %s: %s"

    .line 46
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, p1, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    return-void
.end method
