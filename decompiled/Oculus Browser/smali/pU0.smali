.class public final synthetic LpU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFU0;


# instance fields
.field public final w:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LpU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 3

    iget-object v0, p0, LpU0;->w:Lorg/chromium/components/signin/AccountManagerFacade;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance v2, LyU0;

    invoke-direct {v2, v0, v1}, LyU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;LuU0;)V

    sget-object v0, LkW;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    .line 3
    :cond_0
    throw v1
.end method
