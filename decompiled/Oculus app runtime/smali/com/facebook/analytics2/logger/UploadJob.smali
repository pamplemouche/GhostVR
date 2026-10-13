.class public Lcom/facebook/analytics2/logger/UploadJob;
.super Ljava/lang/Object;
.source "UploadJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadJob$Tier;,
        Lcom/facebook/analytics2/logger/UploadJob$Priority;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayload;

.field private final mPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

.field private final mTier:Lcom/facebook/analytics2/logger/UploadJob$Tier;


# direct methods
.method constructor <init>(Lcom/facebook/analytics2/logger/UploadJob$Priority;Lcom/facebook/analytics2/logger/UploadJob$Tier;Lcom/facebook/analytics2/logger/BatchPayload;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJob;->mPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    .line 30
    iput-object p2, p0, Lcom/facebook/analytics2/logger/UploadJob;->mTier:Lcom/facebook/analytics2/logger/UploadJob$Tier;

    .line 31
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadJob;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayload;

    return-void
.end method


# virtual methods
.method public getBatchPayload()Lcom/facebook/analytics2/logger/BatchPayload;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJob;->mBatchPayload:Lcom/facebook/analytics2/logger/BatchPayload;

    return-object v0
.end method

.method public getPriority()Lcom/facebook/analytics2/logger/UploadJob$Priority;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJob;->mPriority:Lcom/facebook/analytics2/logger/UploadJob$Priority;

    return-object v0
.end method

.method public getTier()Lcom/facebook/analytics2/logger/UploadJob$Tier;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJob;->mTier:Lcom/facebook/analytics2/logger/UploadJob$Tier;

    return-object v0
.end method
