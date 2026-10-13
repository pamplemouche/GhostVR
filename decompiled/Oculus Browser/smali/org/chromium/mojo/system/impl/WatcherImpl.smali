.class public Lorg/chromium/mojo/system/impl/WatcherImpl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LH71;


# instance fields
.field public a:J

.field public b:LG71;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->MXGgOw9k(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    return-void
.end method

.method private onHandleReady(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->b:LG71;

    invoke-interface {v0, p1}, LG71;->a(I)V

    return-void
.end method


# virtual methods
.method public a(Lq71;Li71;LG71;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return v4

    .line 2
    :cond_0
    instance-of v0, p1, LN71;

    if-nez v0, :cond_1

    return v4

    .line 3
    :cond_1
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    check-cast p1, LN71;

    .line 4
    iget p1, p1, LN71;->w:I

    .line 5
    iget p2, p2, Lp71;->a:I

    .line 6
    invoke-static {p0, v0, v1, p1, p2}, LJ/N;->MOmBVeTt(Ljava/lang/Object;JII)I

    move-result p1

    if-nez p1, :cond_2

    .line 7
    iput-object p3, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->b:LG71;

    :cond_2
    return p1
.end method

.method public cancel()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->b:LG71;

    .line 3
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    .line 4
    invoke-static {p0, v0, v1}, LJ/N;->MPTT407x(Ljava/lang/Object;J)V

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    .line 3
    invoke-static {p0, v0, v1}, LJ/N;->Mi32vqDA(Ljava/lang/Object;J)V

    .line 4
    iput-wide v2, p0, Lorg/chromium/mojo/system/impl/WatcherImpl;->a:J

    return-void
.end method
