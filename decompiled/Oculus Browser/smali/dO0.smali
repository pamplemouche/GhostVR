.class public final synthetic LdO0;
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

    iput-object p1, p0, LdO0;->a:LjO0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LdO0;->a:LjO0;

    check-cast p1, Ljava/lang/Exception;

    .line 1
    iget-object p1, v0, LjO0;->a:LBN0;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, LnU;

    invoke-direct {v0}, LnU;-><init>()V

    .line 3
    iget-object v1, p1, LBN0;->b:LnU;

    new-instance v2, LwN0;

    invoke-direct {v2, p1, v0}, LwN0;-><init>(LBN0;LnU;)V

    sget-object p1, LxN0;->a:Lorg/chromium/base/Callback;

    .line 4
    invoke-virtual {v1, v2}, LnU;->c(Lorg/chromium/base/Callback;)V

    .line 5
    invoke-virtual {v1, p1}, LnU;->a(Lorg/chromium/base/Callback;)V

    .line 6
    sget-object p1, LiO0;->a:Lorg/chromium/base/Callback;

    .line 7
    invoke-virtual {v0, p1}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
