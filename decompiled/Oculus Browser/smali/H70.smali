.class public LH70;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lg11;

.field public b:I

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:LI70;

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LH70;->f:Z

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LH70;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LH70;->f:Z

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LH70;->h:J

    return-void
.end method
