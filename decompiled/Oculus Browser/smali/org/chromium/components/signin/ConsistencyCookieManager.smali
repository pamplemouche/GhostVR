.class public Lorg/chromium/components/signin/ConsistencyCookieManager;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LVU0;
.implements LEU0;


# instance fields
.field public final a:J

.field public final b:Lorg/chromium/components/signin/AccountTrackerService;

.field public final c:Lorg/chromium/components/signin/AccountManagerFacade;

.field public final d:LYU0;

.field public e:Z


# direct methods
.method public constructor <init>(JLorg/chromium/components/signin/AccountTrackerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iput-object p3, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    .line 4
    iput-wide p1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->a:J

    .line 5
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    .line 6
    sget-object p1, LYU0;->c:LYU0;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, LYU0;

    invoke-direct {p1}, LYU0;-><init>()V

    sput-object p1, LYU0;->c:LYU0;

    .line 8
    :cond_0
    sget-object p1, LYU0;->c:LYU0;

    .line 9
    iput-object p1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->d:LYU0;

    .line 10
    iget-object p1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {p1, p0}, Lorg/chromium/components/signin/AccountTrackerService;->a(LEU0;)V

    .line 11
    iget-object p1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p1, Lorg/chromium/components/signin/AccountManagerFacade;->k:LWU0;

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p1, LWU0;->b:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->d:LYU0;

    .line 15
    iget-object p1, p1, LYU0;->b:LMU0;

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p1, LWU0;->b:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 17
    invoke-virtual {p0}, Lorg/chromium/components/signin/ConsistencyCookieManager;->d()Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->e:Z

    return-void

    .line 18
    :cond_1
    throw p2

    .line 19
    :cond_2
    throw p2

    .line 20
    :cond_3
    throw p2
.end method

.method public static create(JLorg/chromium/components/signin/AccountTrackerService;)Lorg/chromium/components/signin/ConsistencyCookieManager;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/components/signin/ConsistencyCookieManager;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/signin/ConsistencyCookieManager;-><init>(JLorg/chromium/components/signin/AccountTrackerService;)V

    return-object v0
.end method

.method private destroy()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    invoke-virtual {v0, p0}, Lorg/chromium/components/signin/AccountTrackerService;->b(LEU0;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->d:LYU0;

    .line 4
    iget-object v0, v0, LYU0;->b:LMU0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, v0, LWU0;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->k:LWU0;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, v0, LWU0;->b:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void

    .line 9
    :cond_0
    throw v1

    .line 10
    :cond_1
    throw v1

    .line 11
    :cond_2
    throw v1
.end method

.method private getIsUpdatePending()Z
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/components/signin/ConsistencyCookieManager;->d()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->e:Z

    if-ne v1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->e:Z

    .line 4
    iget-wide v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->a:J

    .line 5
    invoke-static {v0, v1}, LJ/N;->MnLcfBnb(J)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/chromium/components/signin/ConsistencyCookieManager;->d()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->e:Z

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->e:Z

    .line 4
    iget-wide v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->a:J

    .line 5
    invoke-static {v0, v1}, LJ/N;->MnLcfBnb(J)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->c:Lorg/chromium/components/signin/AccountManagerFacade;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-object v0, v0, Lorg/chromium/components/signin/AccountManagerFacade;->k:LWU0;

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, v0, LWU0;->a:Ljava/lang/Object;

    .line 5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->d:LYU0;

    .line 6
    iget-object v0, v0, LYU0;->b:LMU0;

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, v0, LWU0;->a:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/chromium/components/signin/ConsistencyCookieManager;->b:Lorg/chromium/components/signin/AccountTrackerService;

    .line 9
    iget v1, v0, Lorg/chromium/components/signin/AccountTrackerService;->b:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    iget-boolean v0, v0, Lorg/chromium/components/signin/AccountTrackerService;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 10
    :cond_2
    throw v1

    :cond_3
    :goto_1
    return v2

    .line 11
    :cond_4
    throw v1

    .line 12
    :cond_5
    throw v1
.end method
