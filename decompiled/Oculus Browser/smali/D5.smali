.class public LD5;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:LH5;


# direct methods
.method public constructor <init>(LH5;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, LD5;->a:LH5;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, LD5;->a:LH5;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, LR4;

    invoke-virtual {v0, p1}, LH5;->a(LR4;)V

    :cond_0
    return-void
.end method
