.class public final synthetic LbO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LjO0;


# direct methods
.method public constructor <init>(LjO0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbO0;->a:LjO0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LbO0;->a:LjO0;

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, p1, v2}, LjO0;->a(Ljava/util/List;Z)V

    .line 3
    iget-object v0, v0, LjO0;->c:LON0;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, LnU;

    invoke-direct {v1}, LnU;-><init>()V

    .line 5
    iget-object v3, v0, LON0;->d:LnU;

    new-instance v4, LJN0;

    invoke-direct {v4, v0, v2, p1, v1}, LJN0;-><init>(LON0;ZLjava/util/List;LnU;)V

    invoke-virtual {v3, v4}, LnU;->b(Lorg/chromium/base/Callback;)V

    .line 6
    iput-object v1, v0, LON0;->d:LnU;

    return-void

    .line 7
    :cond_0
    throw v1

    .line 8
    :cond_1
    throw v1
.end method
