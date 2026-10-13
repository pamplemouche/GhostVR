.class public final synthetic LcO0;
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

    iput-object p1, p0, LcO0;->a:LjO0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, LcO0;->a:LjO0;

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-object v3, v0, LjO0;->d:LVN0;

    if-eqz v3, :cond_0

    .line 4
    new-instance v4, LnU;

    invoke-direct {v4}, LnU;-><init>()V

    .line 5
    iget-object v5, v3, LVN0;->a:LnU;

    new-instance v6, LRN0;

    invoke-direct {v6, v3, v2, v4}, LRN0;-><init>(LVN0;Ljava/lang/String;LnU;)V

    sget-object v2, LSN0;->a:Lorg/chromium/base/Callback;

    .line 6
    invoke-virtual {v5, v6}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 7
    invoke-virtual {v5, v2}, LnU;->a(Lorg/chromium/base/Callback;)V

    goto :goto_0

    .line 8
    :cond_0
    throw v1

    :cond_1
    return-void

    .line 9
    :cond_2
    throw v1
.end method
