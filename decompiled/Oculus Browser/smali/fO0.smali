.class public final synthetic LfO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LjO0;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(LjO0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfO0;->a:LjO0;

    iput-object p2, p0, LfO0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LfO0;->a:LjO0;

    iget-object v1, p0, LfO0;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Exception;

    .line 1
    iget-object p1, v0, LjO0;->a:LBN0;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, LnU;

    invoke-direct {v0}, LnU;-><init>()V

    .line 3
    iget-object v2, p1, LBN0;->b:LnU;

    new-instance v3, LAN0;

    invoke-direct {v3, p1, v1, v0}, LAN0;-><init>(LBN0;Ljava/util/List;LnU;)V

    sget-object p1, LrN0;->a:Lorg/chromium/base/Callback;

    .line 4
    invoke-virtual {v2, v3}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 5
    invoke-virtual {v2, p1}, LnU;->a(Lorg/chromium/base/Callback;)V

    .line 6
    sget-object p1, LgO0;->a:Lorg/chromium/base/Callback;

    .line 7
    invoke-virtual {v0, p1}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
