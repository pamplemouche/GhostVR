.class public final Lj9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEd;


# instance fields
.field public final synthetic w:Lk9;


# direct methods
.method public constructor <init>(Lk9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj9;->w:Lk9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lqd;Z)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lqd;->c()Lqd;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lj9;->w:Lk9;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Lk9;->a(Landroid/view/Menu;)Li9;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 3
    iget-object p2, p0, Lj9;->w:Lk9;

    iget v2, p1, Li9;->a:I

    invoke-virtual {p2, v2, p1, v0}, Lk9;->a(ILi9;Landroid/view/Menu;)V

    .line 4
    iget-object p2, p0, Lj9;->w:Lk9;

    invoke-virtual {p2, p1, v1}, Lk9;->a(Li9;Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lj9;->w:Lk9;

    invoke-virtual {v0, p1, p2}, Lk9;->a(Li9;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Lqd;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 6
    iget-object v0, p0, Lj9;->w:Lk9;

    iget-boolean v1, v0, Lk9;->U:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lk9;->h()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lj9;->w:Lk9;

    iget-boolean v1, v1, Lk9;->d0:Z

    if-nez v1, :cond_0

    const/16 v1, 0x6c

    .line 9
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
