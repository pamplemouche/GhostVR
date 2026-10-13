.class public Lcom/facebook/debug/tracer/TraceEvent;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/debug/tracer/TraceEvent$Type;
    }
.end annotation


# static fields
.field private static final sEventPool:Lcom/facebook/common/objectpool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/objectpool/ObjectPool",
            "<",
            "Lcom/facebook/debug/tracer/TraceEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mComment:Ljava/lang/String;

.field private mEventTimeNanos:J

.field private mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

.field private mFormatArgs:[Ljava/lang/Object;

.field private mId:I

.field private mStartTimeNanos:J

.field private mThreadEventTimeMs:J

.field private mThreadStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/facebook/common/objectpool/ObjectPoolBuilder;

    const-class v1, Lcom/facebook/debug/tracer/TraceEvent;

    .line 46
    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;-><init>(Ljava/lang/Class;Lcom/facebook/common/time/MonotonicClock;)V

    new-instance v1, Lcom/facebook/debug/tracer/TraceEvent$1;

    const-class v2, Lcom/facebook/debug/tracer/TraceEvent;

    invoke-direct {v1, v2}, Lcom/facebook/debug/tracer/TraceEvent$1;-><init>(Ljava/lang/Class;)V

    .line 47
    invoke-virtual {v0, v1}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->setAllocator(Lcom/facebook/common/objectpool/ObjectPool$Allocator;)Lcom/facebook/common/objectpool/ObjectPoolBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/facebook/common/objectpool/ObjectPoolBuilder;->build()Lcom/facebook/common/objectpool/ObjectPool;

    move-result-object v0

    sput-object v0, Lcom/facebook/debug/tracer/TraceEvent;->sEventPool:Lcom/facebook/common/objectpool/ObjectPool;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/debug/tracer/TraceEvent$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/debug/tracer/TraceEvent;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/facebook/debug/tracer/TraceEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/facebook/debug/tracer/TraceEvent;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    return-object p1
.end method

.method private static get(Lcom/facebook/debug/tracer/TraceEvent$Type;ILjava/lang/String;[Ljava/lang/Object;JJ)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 4

    .prologue
    .line 93
    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent;->sEventPool:Lcom/facebook/common/objectpool/ObjectPool;

    invoke-virtual {v0}, Lcom/facebook/common/objectpool/ObjectPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/TraceEvent;

    .line 94
    iput-object p0, v0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    .line 95
    iput p1, v0, Lcom/facebook/debug/tracer/TraceEvent;->mId:I

    .line 96
    iput-object p3, v0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    .line 97
    iput-object p2, v0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/debug/tracer/TraceEvent;->mThreadEventTimeMs:J

    .line 99
    invoke-static {}, Lcom/facebook/debug/tracer/TracerClock;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/facebook/debug/tracer/TraceEvent;->mEventTimeNanos:J

    .line 100
    iput-wide p4, v0, Lcom/facebook/debug/tracer/TraceEvent;->mStartTimeNanos:J

    .line 101
    iput-wide p6, v0, Lcom/facebook/debug/tracer/TraceEvent;->mThreadStartTimeMs:J

    .line 102
    return-object v0
.end method

.method static getStartEvent(ILjava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 8

    .prologue
    const-wide/16 v4, -0x1

    .line 73
    if-eqz p3, :cond_0

    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent$Type;->START_ASYNC:Lcom/facebook/debug/tracer/TraceEvent$Type;

    :goto_0
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    invoke-static/range {v0 .. v7}, Lcom/facebook/debug/tracer/TraceEvent;->get(Lcom/facebook/debug/tracer/TraceEvent$Type;ILjava/lang/String;[Ljava/lang/Object;JJ)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    goto :goto_0
.end method

.method static getStopEvent(Lcom/facebook/debug/tracer/TraceEvent;)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 8

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/TraceEvent;->getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    :goto_0
    iget v1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mId:I

    iget-object v2, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    iget-wide v4, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventTimeNanos:J

    iget-wide v6, p0, Lcom/facebook/debug/tracer/TraceEvent;->mThreadEventTimeMs:J

    .line 77
    invoke-static/range {v0 .. v7}, Lcom/facebook/debug/tracer/TraceEvent;->get(Lcom/facebook/debug/tracer/TraceEvent$Type;ILjava/lang/String;[Ljava/lang/Object;JJ)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP_ASYNC:Lcom/facebook/debug/tracer/TraceEvent$Type;

    goto :goto_0
.end method


# virtual methods
.method public getEventTimeNanos()J
    .locals 2

    .prologue
    .line 146
    iget-wide v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventTimeNanos:J

    return-wide v0
.end method

.method public getEventType()Lcom/facebook/debug/tracer/TraceEvent$Type;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    return-object v0
.end method

.method public getFormattedComment()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "TraceEvent"

    const-string v2, "Bad format string"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    iput-object v3, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mId:I

    return v0
.end method

.method public getStartTimeNanos()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mStartTimeNanos:J

    return-wide v0
.end method

.method release()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent;->sEventPool:Lcom/facebook/common/objectpool/ObjectPool;

    invoke-virtual {v0, p0}, Lcom/facebook/common/objectpool/ObjectPool;->release(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/TraceEvent;->getFormattedComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
