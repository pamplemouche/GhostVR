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
.field private static final TAG:Ljava/lang/String; = "TraceEvent"

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
    .param p1, "x0"    # Lcom/facebook/debug/tracer/TraceEvent$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/facebook/debug/tracer/TraceEvent;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/facebook/debug/tracer/TraceEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/debug/tracer/TraceEvent;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/facebook/debug/tracer/TraceEvent;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/debug/tracer/TraceEvent;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    return-object p1
.end method

.method static formatTime(J)Ljava/lang/String;
    .locals 14
    .param p0, "time"    # J

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const-wide/16 v8, 0x3e8

    .line 236
    long-to-float v4, p0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-long p0, v4

    .line 237
    div-long v4, p0, v8

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 238
    .local v2, "sec":J
    rem-long v4, p0, v8

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 241
    .local v0, "ms":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x64

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-long v6, v8, v0

    .line 243
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static get(Lcom/facebook/debug/tracer/TraceEvent$Type;ILjava/lang/String;[Ljava/lang/Object;JJ)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 4
    .param p0, "eventType"    # Lcom/facebook/debug/tracer/TraceEvent$Type;
    .param p1, "id"    # I
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .param p4, "startTimeNanos"    # J
    .param p6, "threadStartTimeMillis"    # J

    .prologue
    .line 93
    sget-object v1, Lcom/facebook/debug/tracer/TraceEvent;->sEventPool:Lcom/facebook/common/objectpool/ObjectPool;

    invoke-virtual {v1}, Lcom/facebook/common/objectpool/ObjectPool;->allocate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/debug/tracer/TraceEvent;

    .line 94
    .local v0, "evt":Lcom/facebook/debug/tracer/TraceEvent;
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

.method static getCommentEvent(ILjava/lang/String;[Ljava/lang/Object;)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 8
    .param p0, "id"    # I
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const-wide/16 v4, -0x1

    .line 69
    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent$Type;->COMMENT:Lcom/facebook/debug/tracer/TraceEvent$Type;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    invoke-static/range {v0 .. v7}, Lcom/facebook/debug/tracer/TraceEvent;->get(Lcom/facebook/debug/tracer/TraceEvent$Type;ILjava/lang/String;[Ljava/lang/Object;JJ)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    return-object v0
.end method

.method static getSpawnEvent(ILjava/lang/String;)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 8
    .param p0, "id"    # I
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 65
    sget-object v0, Lcom/facebook/debug/tracer/TraceEvent$Type;->SPAWN:Lcom/facebook/debug/tracer/TraceEvent$Type;

    const/4 v3, 0x0

    move v1, p0

    move-object v2, p1

    move-wide v6, v4

    invoke-static/range {v0 .. v7}, Lcom/facebook/debug/tracer/TraceEvent;->get(Lcom/facebook/debug/tracer/TraceEvent$Type;ILjava/lang/String;[Ljava/lang/Object;JJ)Lcom/facebook/debug/tracer/TraceEvent;

    move-result-object v0

    return-object v0
.end method

.method static getStartEvent(ILjava/lang/String;[Ljava/lang/Object;Z)Lcom/facebook/debug/tracer/TraceEvent;
    .locals 8
    .param p0, "id"    # I
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .param p3, "async"    # Z

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
    .param p0, "startEvent"    # Lcom/facebook/debug/tracer/TraceEvent;

    .prologue
    .line 77
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

.method static longToPaddedString(J)Ljava/lang/String;
    .locals 4
    .param p0, "v"    # J

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    .local v0, "sb":Ljava/lang/StringBuilder;
    long-to-float v1, p0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long p0, v1

    .line 215
    const-wide/16 v2, 0xa

    cmp-long v1, p0, v2

    if-gez v1, :cond_1

    .line 216
    const-string v1, "____"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    :goto_0
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 217
    :cond_1
    const-wide/16 v2, 0x64

    cmp-long v1, p0, v2

    if-gez v1, :cond_2

    .line 218
    const-string v1, "___"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 219
    :cond_2
    const-wide/16 v2, 0x3e8

    cmp-long v1, p0, v2

    if-gez v1, :cond_3

    .line 220
    const-string v1, "__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 221
    :cond_3
    const-wide/16 v2, 0x2710

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 222
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method appendTraceString(Ljava/lang/StringBuilder;JJI)V
    .locals 12
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "traceStartTime"    # J
    .param p4, "prevTime"    # J
    .param p6, "indents"    # I

    .prologue
    .line 166
    const-wide/16 v8, -0x1

    cmp-long v5, p4, v8

    if-nez v5, :cond_1

    .line 167
    const-string v5, "-----"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :goto_0
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-wide v8, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventTimeNanos:J

    sub-long/2addr v8, p2

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/facebook/debug/tracer/TraceEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v5, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->START:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v5, v8, :cond_2

    .line 175
    const-string v5, " Start    ...     ...   "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_0
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    move/from16 v0, p6

    if-ge v4, v0, :cond_6

    .line 194
    const-string v5, "|  "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 169
    .end local v4    # "i":I
    :cond_1
    iget-wide v8, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventTimeNanos:J

    sub-long v8, v8, p4

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/facebook/debug/tracer/TraceEvent;->longToPaddedString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_2
    iget-object v5, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->START_ASYNC:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v5, v8, :cond_3

    .line 177
    const-string v5, " AStart   ...     ...   "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    :cond_3
    iget-object v5, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-eq v5, v8, :cond_4

    iget-object v5, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->STOP_ASYNC:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-ne v5, v8, :cond_5

    .line 179
    :cond_4
    const-string v5, " Done "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-wide v8, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventTimeNanos:J

    iget-wide v10, p0, Lcom/facebook/debug/tracer/TraceEvent;->mStartTimeNanos:J

    sub-long v2, v8, v10

    .line 181
    .local v2, "deltaTimeNanos":J
    iget-wide v8, p0, Lcom/facebook/debug/tracer/TraceEvent;->mThreadEventTimeMs:J

    iget-wide v10, p0, Lcom/facebook/debug/tracer/TraceEvent;->mThreadStartTimeMs:J

    sub-long v6, v8, v10

    .line 183
    .local v6, "threadDeltaMs":J
    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    invoke-static {v8, v9}, Lcom/facebook/debug/tracer/TraceEvent;->longToPaddedString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v5, " ms "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v6, v7}, Lcom/facebook/debug/tracer/TraceEvent;->longToPaddedString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v5, " ms "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 187
    .end local v2    # "deltaTimeNanos":J
    .end local v6    # "threadDeltaMs":J
    :cond_5
    iget-object v5, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    sget-object v8, Lcom/facebook/debug/tracer/TraceEvent$Type;->SPAWN:Lcom/facebook/debug/tracer/TraceEvent$Type;

    if-eq v5, v8, :cond_0

    .line 190
    const-string v5, " Comment  ...     ...   "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    .restart local v4    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/facebook/debug/tracer/TraceEvent;->getFormattedComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    return-void
.end method

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

.method public getEventTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventType:Lcom/facebook/debug/tracer/TraceEvent$Type;

    invoke-virtual {v0}, Lcom/facebook/debug/tracer/TraceEvent$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedComment()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mFormatArgs:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mComment:Ljava/lang/String;

    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/util/IllegalFormatException;
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

.method public getThreadEventTimeMs()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/facebook/debug/tracer/TraceEvent;->mThreadEventTimeMs:J

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

.method setEventTimeNanos(J)V
    .locals 1
    .param p1, "eventTimeNanos"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/facebook/debug/tracer/TraceEvent;->mEventTimeNanos:J

    .line 151
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
