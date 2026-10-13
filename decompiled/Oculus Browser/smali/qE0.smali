.class public final synthetic LqE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LuE0;


# direct methods
.method public constructor <init>(LuE0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LqE0;->a:LuE0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LqE0;->a:LuE0;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iput-object p1, v0, LuE0;->j:Ljava/lang/Boolean;

    .line 2
    iget p1, v0, LuE0;->a:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3
    iget-object p1, v0, LuE0;->k:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, LuE0;->h:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, v0, LuE0;->k:Ljava/lang/Runnable;

    .line 6
    :goto_0
    invoke-virtual {v0}, LuE0;->b()V

    :cond_1
    return-void
.end method
