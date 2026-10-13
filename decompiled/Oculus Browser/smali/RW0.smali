.class public final synthetic LRW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/content/browser/TtsPlatformImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRW0;->w:Lorg/chromium/content/browser/TtsPlatformImpl;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LRW0;->w:Lorg/chromium/content/browser/TtsPlatformImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "TtsPlatformImpl:initialize"

    .line 1
    invoke-static {v2, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, LTW0;

    invoke-direct {v1, v0}, LTW0;-><init>(Lorg/chromium/content/browser/TtsPlatformImpl;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 3
    invoke-virtual {v1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    .line 4
    :cond_0
    throw v1
.end method
