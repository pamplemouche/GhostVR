.class public final synthetic LPp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LQp0;


# direct methods
.method public constructor <init>(LQp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPp0;->a:LQp0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LPp0;->a:LQp0;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1
    iput-boolean p1, v0, LQp0;->y:Z

    .line 2
    iget-object v1, v0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->b:Lhe1;

    invoke-virtual {v1, v2}, Lle1;->a(Lce1;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->f:Lhe1;

    iget-boolean v3, v0, LQp0;->y:Z

    invoke-virtual {v1, v2, v3}, Lle1;->a(Lhe1;Z)V

    .line 4
    :cond_0
    iget-object v1, v0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->h:Lke1;

    invoke-virtual {v1, v2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSp0;

    .line 5
    iget-object v2, v0, LQp0;->x:Lorg/chromium/base/Callback;

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget-object p1, v0, LQp0;->w:Lle1;

    sget-object v2, LTp0;->h:Lke1;

    .line 7
    invoke-virtual {p1, v2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v1, v0, LQp0;->z:LNp0;

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {v0}, LQp0;->a()V

    :cond_3
    return-void
.end method
