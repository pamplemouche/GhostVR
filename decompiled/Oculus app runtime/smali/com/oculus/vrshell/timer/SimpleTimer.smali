.class public Lcom/oculus/vrshell/timer/SimpleTimer;
.super Ljava/lang/Object;
.source "SimpleTimer.java"


# static fields
.field private static final INIT_VALUE:J = -0x1L


# instance fields
.field private mDuration:J

.field private mEndTime:J

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private mTimeService:Lcom/oculus/vrshell/timer/TimeService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 18
    invoke-direct {p0, v0}, Lcom/oculus/vrshell/timer/SimpleTimer;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-static {}, Lcom/oculus/vrshell/timer/TimeServiceElapsedRealtime;->getInstance()Lcom/oculus/vrshell/timer/TimeService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oculus/vrshell/timer/SimpleTimer;-><init>(Ljava/lang/String;Lcom/oculus/vrshell/timer/TimeService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oculus/vrshell/timer/TimeService;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mStartTime:J

    .line 14
    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mEndTime:J

    .line 15
    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mDuration:J

    .line 28
    invoke-virtual {p0, p1}, Lcom/oculus/vrshell/timer/SimpleTimer;->setName(Ljava/lang/String;)Lcom/oculus/vrshell/timer/SimpleTimer;

    .line 29
    iput-object p2, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mTimeService:Lcom/oculus/vrshell/timer/TimeService;

    return-void
.end method

.method private getLogString()Ljava/lang/String;
    .locals 3

    .line 130
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfNotFinished()V

    const/4 v0, 0x2

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SimpleTimer[%s] took %d ms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private throwIfFinished()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SimpleTimer was already finished!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNotFinished()V
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SimpleTimer is still running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNotStarted()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SimpleTimer is not running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfStarted()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SimpleTimer was already started!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finish()Lcom/oculus/vrshell/timer/SimpleTimer;
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfNotStarted()V

    .line 102
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfFinished()V

    .line 104
    iget-object v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mTimeService:Lcom/oculus/vrshell/timer/TimeService;

    invoke-interface {v0}, Lcom/oculus/vrshell/timer/TimeService;->getCurrentMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mEndTime:J

    .line 105
    iget-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mEndTime:J

    iget-wide v2, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mDuration:J

    return-object p0
.end method

.method public finishWithLogI(Ljava/lang/String;)J
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->finish()Lcom/oculus/vrshell/timer/SimpleTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/timer/SimpleTimer;->getDuration()J

    move-result-wide v0

    .line 123
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public finishWithLogV(Ljava/lang/String;)J
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->finish()Lcom/oculus/vrshell/timer/SimpleTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/timer/SimpleTimer;->getDuration()J

    move-result-wide v0

    .line 114
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfNotStarted()V

    .line 68
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfNotFinished()V

    .line 70
    iget-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mDuration:J

    return-wide v0
.end method

.method public isFinished()Z
    .locals 5

    .line 45
    iget-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mEndTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 5

    .line 40
    iget-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public peekDuration()J
    .locals 4

    .line 56
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfNotStarted()V

    .line 57
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfFinished()V

    .line 59
    iget-object v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mTimeService:Lcom/oculus/vrshell/timer/TimeService;

    invoke-interface {v0}, Lcom/oculus/vrshell/timer/TimeService;->getCurrentMs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()Lcom/oculus/vrshell/timer/SimpleTimer;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfNotFinished()V

    :cond_0
    const-wide/16 v0, -0x1

    .line 89
    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mStartTime:J

    .line 90
    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mEndTime:J

    .line 91
    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mDuration:J

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oculus/vrshell/timer/SimpleTimer;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public start()Lcom/oculus/vrshell/timer/SimpleTimer;
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/oculus/vrshell/timer/SimpleTimer;->throwIfStarted()V

    .line 78
    iget-object v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mTimeService:Lcom/oculus/vrshell/timer/TimeService;

    invoke-interface {v0}, Lcom/oculus/vrshell/timer/TimeService;->getCurrentMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/vrshell/timer/SimpleTimer;->mStartTime:J

    return-object p0
.end method
