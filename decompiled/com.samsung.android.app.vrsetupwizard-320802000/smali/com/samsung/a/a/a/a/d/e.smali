.class Lcom/samsung/a/a/a/a/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/samsung/a/a/a/a/d/d;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/d/e;->a:Lcom/samsung/a/a/a/a/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string p1, "newThread on Executor"

    invoke-static {p1}, Lcom/samsung/a/a/a/a/j/a;->b(Ljava/lang/String;)V

    return-object v0
.end method
