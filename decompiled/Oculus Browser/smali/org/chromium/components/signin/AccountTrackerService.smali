.class public Lorg/chromium/components/signin/AccountTrackerService;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field public b:I

.field public c:Z

.field public d:Z

.field public e:LFU0;

.field public final f:LWT;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->f:LWT;

    .line 3
    iput-wide p1, p0, Lorg/chromium/components/signin/AccountTrackerService;->a:J

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    .line 5
    iput-boolean p1, p0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    return-void
.end method

.method public static create(J)Lorg/chromium/components/signin/AccountTrackerService;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance v0, Lorg/chromium/components/signin/AccountTrackerService;

    invoke-direct {v0, p0, p1}, Lorg/chromium/components/signin/AccountTrackerService;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public a(LEU0;)V
    .locals 1

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 6
    iget-object v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->f:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 7
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    .line 9
    iget-object v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->f:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEU0;

    .line 10
    invoke-interface {v1}, LEU0;->c()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountTrackerService;->a()Z

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    if-eq v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountTrackerService;->c()V

    :cond_3
    return v2
.end method

.method public final b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->f:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LEU0;

    .line 4
    invoke-interface {v1}, LEU0;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(LEU0;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->f:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    .line 3
    iput-boolean v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->d:Z

    .line 4
    invoke-static {}, LmU0;->b()LmU0;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, LmU0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    .line 7
    iget-object v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->e:LFU0;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, LAU0;

    invoke-direct {v0, p0}, LAU0;-><init>(Lorg/chromium/components/signin/AccountTrackerService;)V

    iput-object v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->e:LFU0;

    .line 9
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    iget-object v2, p0, Lorg/chromium/components/signin/AccountTrackerService;->e:LFU0;

    invoke-virtual {v0, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->a(LFU0;)V

    .line 10
    :cond_0
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    new-instance v2, LBU0;

    invoke-direct {v2, p0, v1}, LBU0;-><init>(Lorg/chromium/components/signin/AccountTrackerService;LmU0;)V

    invoke-virtual {v0, v2}, Lorg/chromium/components/signin/AccountManagerFacade;->b(Lorg/chromium/base/Callback;)V

    return-void

    .line 11
    :cond_1
    iput v0, p0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    return-void
.end method
