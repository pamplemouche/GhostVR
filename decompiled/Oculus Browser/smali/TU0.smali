.class public LTU0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lm81;


# instance fields
.field public final w:LRU0;

.field public final x:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final y:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(LRU0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LTU0;->w:LRU0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, LTU0;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LTU0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(LRU0;)V
    .locals 2

    .line 1
    new-instance v0, LTU0;

    invoke-direct {v0, p0}, LTU0;-><init>(LRU0;)V

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-object p0, v0, LTU0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    new-instance p0, LSU0;

    invoke-direct {p0, v0}, LSU0;-><init>(LTU0;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    invoke-virtual {p0, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 6
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->b(Lm81;)V

    .line 8
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 9
    iget-object p1, p0, LTU0;->y:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    new-instance p1, LSU0;

    invoke-direct {p1, p0}, LSU0;-><init>(LTU0;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 11
    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :cond_0
    return-void
.end method
