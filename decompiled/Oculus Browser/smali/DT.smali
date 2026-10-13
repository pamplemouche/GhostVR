.class public final LDT;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LDT;->b:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, LDT;->c:J

    .line 4
    iput-boolean p4, p0, LDT;->a:Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    .line 6
    iput-wide p1, p0, LDT;->d:J

    return-void
.end method
