.class public final synthetic LVn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lao0;


# direct methods
.method public constructor <init>(Lao0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVn0;->a:Lao0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LVn0;->a:Lao0;

    check-cast p1, Llo0;

    .line 1
    iput-object p1, v0, Lao0;->c:Llo0;

    .line 2
    invoke-virtual {v0}, Lao0;->a()V

    .line 3
    iget-object p1, v0, Lao0;->a:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lao0;->b()V

    return-void
.end method
