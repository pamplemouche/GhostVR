.class public final synthetic Lxb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LJx;


# instance fields
.field public final a:Lyx;


# direct methods
.method public constructor <init>(Lyx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxb0;->a:Lyx;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lxb0;->a:Lyx;

    .line 1
    invoke-virtual {v0}, Lyx;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iput-object p1, v0, Lyx;->y:Ljava/lang/Object;

    .line 3
    iget-object p1, v0, Lyx;->w:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
