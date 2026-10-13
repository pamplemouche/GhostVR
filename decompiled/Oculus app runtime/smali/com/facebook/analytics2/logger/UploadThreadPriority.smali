.class public Lcom/facebook/analytics2/logger/UploadThreadPriority;
.super Ljava/lang/Object;
.source "UploadThreadPriority.java"


# static fields
.field public static sHighPriUploadThreadPriority:I = 0x12

.field public static sNormalPriUploadThreadPriority:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadPriority(Lcom/facebook/analytics2/logger/UploadJob$Priority;)I
    .locals 1

    .line 12
    sget-object v0, Lcom/facebook/analytics2/logger/UploadJob$Priority;->HIGH:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    if-ne p0, v0, :cond_0

    .line 13
    sget p0, Lcom/facebook/analytics2/logger/UploadThreadPriority;->sHighPriUploadThreadPriority:I

    return p0

    .line 15
    :cond_0
    sget p0, Lcom/facebook/analytics2/logger/UploadThreadPriority;->sNormalPriUploadThreadPriority:I

    return p0
.end method
