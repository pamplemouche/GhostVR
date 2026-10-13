.class public final synthetic LBU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/components/signin/AccountTrackerService;

.field public final b:LmU0;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountTrackerService;LmU0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBU0;->a:Lorg/chromium/components/signin/AccountTrackerService;

    iput-object p2, p0, LBU0;->b:LmU0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LBU0;->a:Lorg/chromium/components/signin/AccountTrackerService;

    iget-object v1, p0, LBU0;->b:LmU0;

    check-cast p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1
    new-instance v2, LDU0;

    invoke-direct {v2, v0, p1, v1}, LDU0;-><init>(Lorg/chromium/components/signin/AccountTrackerService;Ljava/util/List;LmU0;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {v2, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
