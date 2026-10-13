.class public LA2;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final synthetic a:LD2;


# direct methods
.method public constructor <init>(LD2;)V
    .locals 0

    .line 1
    iput-object p1, p0, LA2;->a:LD2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, LA2;->a:LD2;

    invoke-virtual {p1}, LD2;->E()V

    .line 4
    iget-object p1, p0, LA2;->a:LD2;

    iget-object p1, p1, LD2;->y:LF2;

    invoke-virtual {p1}, LF2;->a()Z

    :goto_0
    return-void
.end method
