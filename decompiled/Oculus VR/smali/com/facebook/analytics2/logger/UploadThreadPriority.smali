.class public Lcom/facebook/analytics2/logger/UploadThreadPriority;
.super Ljava/lang/Object;
.source "UploadThreadPriority.java"


# static fields
.field public static sHighPriUploadThreadPriority:I

.field public static sNormalPriUploadThreadPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/16 v0, 0x13

    sput v0, Lcom/facebook/analytics2/logger/UploadThreadPriority;->sNormalPriUploadThreadPriority:I

    .line 9
    const/16 v0, 0x12

    sput v0, Lcom/facebook/analytics2/logger/UploadThreadPriority;->sHighPriUploadThreadPriority:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadPriority(Lcom/facebook/analytics2/logger/UploadJob$Priority;)I
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;->HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    if-ne p0, v0, :cond_0

    .line 13
    sget v0, Lcom/facebook/analytics2/logger/UploadThreadPriority;->sHighPriUploadThreadPriority:I

    .line 15
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/facebook/analytics2/logger/UploadThreadPriority;->sNormalPriUploadThreadPriority:I

    goto :goto_0
.end method
