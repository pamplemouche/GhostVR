.class public LRR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Z

.field public final synthetic x:LSR0;


# direct methods
.method public constructor <init>(LSR0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LRR0;->x:LSR0;

    iput-boolean p2, p0, LRR0;->w:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LRR0;->x:LSR0;

    .line 2
    iget-object v0, v0, LSR0;->a:LTR0;

    .line 3
    iget-boolean v1, p0, LRR0;->w:Z

    .line 4
    iput-boolean v1, v0, LTR0;->c:Z

    .line 5
    iget-object v0, v0, LTR0;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
