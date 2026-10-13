.class public Lcom/oculus/vrshell/TimeServiceFake;
.super Ljava/lang/Object;
.source "TimeServiceFake.java"

# interfaces
.implements Lcom/oculus/vrshell/timer/TimeService;


# instance fields
.field private mTimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentMs()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/oculus/vrshell/TimeServiceFake;->mTimeMs:J

    return-wide v0
.end method

.method public setTimeMs(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/oculus/vrshell/TimeServiceFake;->mTimeMs:J

    return-void
.end method
