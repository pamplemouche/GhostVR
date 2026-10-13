.class public LGQ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LTh;


# instance fields
.field public final synthetic w:LNQ0;


# direct methods
.method public constructor <init>(LNQ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LGQ0;->w:LNQ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0150

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, LGQ0;->w:LNQ0;

    .line 3
    iget-object p1, p1, LNQ0;->R:Ljava/lang/Runnable;

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5
    iget-object p1, p0, LGQ0;->w:LNQ0;

    .line 6
    invoke-virtual {p1}, LNQ0;->a()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0b01f3

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, LGQ0;->w:LNQ0;

    .line 9
    iget-object p1, p1, LNQ0;->w:Landroid/content/Context;

    .line 10
    invoke-static {p1}, LNQ0;->a(Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
