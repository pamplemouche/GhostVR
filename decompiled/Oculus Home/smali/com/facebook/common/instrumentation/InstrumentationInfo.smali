.class public Lcom/facebook/common/instrumentation/InstrumentationInfo;
.super Ljava/lang/Object;
.source "InstrumentationInfo.java"


# instance fields
.field private final mCollectInformationFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInfo;->mCollectInformationFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    return-void
.end method


# virtual methods
.method public isStillCollectingInformation()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInfo;->mCollectInformationFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setIsDoneCollectingInformation()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInfo;->mCollectInformationFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    return-void
.end method
