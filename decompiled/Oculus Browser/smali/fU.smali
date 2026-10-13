.class public final synthetic LfU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LkU;

.field public final b:LnU;


# direct methods
.method public constructor <init>(LkU;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfU;->a:LkU;

    iput-object p2, p0, LfU;->b:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LfU;->a:LkU;

    iget-object v1, p0, LfU;->b:LnU;

    .line 1
    :try_start_0
    check-cast v0, LCN0;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ljava/lang/Void;

    .line 3
    invoke-static {}, LjO0;->b()LjO0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 5
    iget-object p1, p1, LjO0;->c:LON0;

    .line 6
    iget-object p1, p1, LON0;->c:LnU;

    sget-object v0, LKN0;->a:LlU;

    invoke-virtual {p1, v0}, LnU;->a(LlU;)LnU;

    move-result-object p1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v0, LiU;

    invoke-direct {v0, v1}, LiU;-><init>(LnU;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v2, LjU;

    invoke-direct {v2, v1}, LjU;-><init>(LnU;)V

    .line 11
    invoke-virtual {p1, v0}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 12
    invoke-virtual {p1, v2}, LnU;->a(Lorg/chromium/base/Callback;)V

    goto :goto_0

    .line 13
    :cond_0
    throw v2

    .line 14
    :cond_1
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {v1, p1}, LnU;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
