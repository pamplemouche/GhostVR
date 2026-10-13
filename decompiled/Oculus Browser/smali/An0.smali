.class public LAn0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LkT;
.implements Lad0;


# instance fields
.field public A:LBn0;

.field public final w:Landroid/os/Handler;

.field public final x:Ljava/lang/Runnable;

.field public y:Landroid/app/Activity;

.field public z:LUF0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lzn0;

    invoke-direct {v0, p0}, Lzn0;-><init>(LAn0;)V

    iput-object v0, p0, LAn0;->x:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LAn0;->w:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, LAn0;->b(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LAn0;->z:LUF0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, v0, LUF0;->a:LXF0;

    .line 3
    invoke-interface {p1, v1}, LXF0;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, v0, LUF0;->a:LXF0;

    .line 5
    invoke-interface {p1, v1}, LXF0;->a(Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->a(LkT;)V

    .line 7
    iget-object p1, p0, LAn0;->y:Landroid/app/Activity;

    instance-of v0, p1, Lorg/chromium/chrome/browser/ChromeActivity;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 9
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lbd0;->R:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object p1, p0, LAn0;->w:Landroid/os/Handler;

    iget-object v0, p0, LAn0;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, p0, LAn0;->A:LBn0;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1}, LdG0;->b()V

    .line 14
    iput-object v1, p0, LAn0;->A:LBn0;

    .line 15
    :cond_3
    iput-object v1, p0, LAn0;->z:LUF0;

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, LAn0;->b(Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, LAn0;->b(Z)V

    return-void
.end method
