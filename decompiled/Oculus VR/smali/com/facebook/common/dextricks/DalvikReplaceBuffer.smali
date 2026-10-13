.class public Lcom/facebook/common/dextricks/DalvikReplaceBuffer;
.super Ljava/lang/Object;
.source "DalvikReplaceBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DalvikReplaceBuffer"

.field private static failureReason:Ljava/lang/String;

.field private static resultValue:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, ""

    sput-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->failureReason:Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;->NOT_ATTEMPTED:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    sput-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->resultValue:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFailureString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->getResult()Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    if-ne v0, v1, :cond_0

    .line 21
    sget-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->failureReason:Ljava/lang/String;

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No failure string is provided when the operation did not fail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getResult()Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->resultValue:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    return-object v0
.end method

.method public static replaceBuffer(Lcom/facebook/common/dextricks/DalvikLinearAllocType;)V
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->resultValue:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    sget-object v1, Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;->NOT_ATTEMPTED:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    if-eq v0, v1, :cond_0

    .line 57
    const-string v0, "DalvikReplaceBuffer"

    const-string v1, "Multiple attempts to replace the buffer detected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void

    .line 62
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/facebook/common/dextricks/DalvikLinearAllocType;->bufferSizeBytes:I

    invoke-static {v0}, Lcom/facebook/common/dextricks/DalvikInternals;->fixLinearAllocBuffer(I)V

    .line 63
    sget-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;->SUCCESS:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    sput-object v0, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->resultValue:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;->FAILURE:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    sput-object v1, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->resultValue:Lcom/facebook/common/dextricks/DalvikReplaceBuffer$Result;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->failureReason:Ljava/lang/String;

    .line 67
    const-string v1, "DalvikReplaceBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to replace LinearAlloc buffer (at size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/facebook/common/dextricks/DalvikLinearAllocType;->bufferSizeBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Continuing with standard buffer."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static replaceBufferIfNecessary(Lcom/facebook/common/dextricks/DalvikLinearAllocType;)Z
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    .line 44
    :cond_0
    invoke-static {p0}, Lcom/facebook/common/dextricks/DalvikReplaceBuffer;->replaceBuffer(Lcom/facebook/common/dextricks/DalvikLinearAllocType;)V

    .line 45
    const/4 v0, 0x1

    goto :goto_0
.end method
