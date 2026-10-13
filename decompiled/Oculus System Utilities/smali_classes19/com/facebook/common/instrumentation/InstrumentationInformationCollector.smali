.class public Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;
.super Ljava/lang/Object;
.source "InstrumentationInformationCollector.java"


# instance fields
.field private final mCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;


# direct methods
.method public constructor <init>(Lcom/facebook/common/instrumentation/InstrumentationInfo;)V
    .locals 2
    .param p1, "instrumentationInfo"    # Lcom/facebook/common/instrumentation/InstrumentationInfo;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->mCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    return-void
.end method


# virtual methods
.method public areConstructedFromSameInfo(Lcom/facebook/common/instrumentation/InstrumentationInfo;)Z
    .locals 1
    .param p1, "instrumentationInfo"    # Lcom/facebook/common/instrumentation/InstrumentationInfo;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->mCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public onPublicMethodEnter()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    invoke-virtual {v0}, Lcom/facebook/common/instrumentation/InstrumentationInfo;->isStillCollectingInformation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->mCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 22
    :cond_0
    return-void
.end method

.method public stillCollectingInformation()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/common/instrumentation/InstrumentationInformationCollector;->mInstrumentationInfo:Lcom/facebook/common/instrumentation/InstrumentationInfo;

    invoke-virtual {v0}, Lcom/facebook/common/instrumentation/InstrumentationInfo;->isStillCollectingInformation()Z

    move-result v0

    return v0
.end method
