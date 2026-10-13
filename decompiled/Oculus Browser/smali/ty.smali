.class public final Lty;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LTw;


# instance fields
.field public final a:Lpx;

.field public final b:Lky;

.field public final c:Ldx;

.field public final d:LFx;

.field public final e:J

.field public final f:D


# direct methods
.method public constructor <init>(Lpx;Lky;Ldx;LFx;Lpw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lty;->a:Lpx;

    .line 3
    iput-object p2, p0, Lty;->b:Lky;

    .line 4
    iput-object p3, p0, Lty;->c:Ldx;

    .line 5
    iput-object p4, p0, Lty;->d:LFx;

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x3

    .line 7
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-string p3, "default_action_ttl_seconds"

    .line 8
    invoke-virtual {p5, p3, p1, p2}, Lpw;->a(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lty;->e:J

    const-wide p1, 0x3fd3333333333333L    # 0.3

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "minimum_valid_action_ratio"

    invoke-virtual {p5, p2, p1}, Lpw;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lty;->f:D

    return-void
.end method
