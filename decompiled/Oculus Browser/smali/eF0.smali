.class public LeF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEU0;


# instance fields
.field public final synthetic a:Lorg/chromium/components/signin/AccountTrackerService;

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:LjF0;


# direct methods
.method public constructor <init>(LjF0;Lorg/chromium/components/signin/AccountTrackerService;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, LeF0;->d:LjF0;

    iput-object p2, p0, LeF0;->a:Lorg/chromium/components/signin/AccountTrackerService;

    iput-wide p3, p0, LeF0;->b:J

    iput-boolean p5, p0, LeF0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, LeF0;->a:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {v0, p0}, Lorg/chromium/components/signin/AccountTrackerService;->b(LEU0;)V

    .line 2
    iget-wide v0, p0, LeF0;->b:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string v0, "Signin.AndroidAccountSigninViewSeedingTime"

    .line 4
    invoke-static {v0, v2, v3}, LfV;->c(Ljava/lang/String;J)V

    .line 5
    iget-object v0, p0, LeF0;->d:LjF0;

    .line 6
    iget-boolean v1, v0, LjF0;->H0:Z

    if-eqz v1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-boolean v1, p0, LeF0;->c:Z

    .line 8
    invoke-virtual {v0, v1}, LjF0;->g(Z)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
