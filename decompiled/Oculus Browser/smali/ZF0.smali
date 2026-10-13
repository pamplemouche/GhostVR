.class public LZF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lwf0;
.implements LkT;


# static fields
.field public static D:I

.field public static E:I


# instance fields
.field public A:Z

.field public B:Landroid/view/ViewGroup;

.field public final C:Ljava/lang/Runnable;

.field public w:Landroid/app/Activity;

.field public x:LdG0;

.field public final y:Landroid/os/Handler;

.field public z:LVF0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LZF0;

    const/16 v0, 0xbb8

    .line 2
    sput v0, LZF0;->D:I

    const/16 v0, 0x2710

    .line 3
    sput v0, LZF0;->E:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LVF0;

    invoke-direct {v0}, LVF0;-><init>()V

    iput-object v0, p0, LZF0;->z:LVF0;

    .line 3
    new-instance v0, LWF0;

    invoke-direct {v0, p0}, LWF0;-><init>(LZF0;)V

    iput-object v0, p0, LZF0;->C:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, LZF0;->w:Landroid/app/Activity;

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, LZF0;->y:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, LZF0;->B:Landroid/view/ViewGroup;

    .line 7
    iget-object p1, p0, LZF0;->w:Landroid/app/Activity;

    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->a(LkT;Landroid/app/Activity;)V

    .line 8
    iget-object p1, p0, LZF0;->w:Landroid/app/Activity;

    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    iget-object p1, p0, LZF0;->w:Landroid/app/Activity;

    .line 9
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, LZF0;->A:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 19
    iget-boolean v0, p0, LZF0;->A:Z

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    iget-object v0, p0, LZF0;->z:LVF0;

    invoke-virtual {v0}, LVF0;->a()LUF0;

    move-result-object v0

    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, LZF0;->y:Landroid/os/Handler;

    iget-object v1, p0, LZF0;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, LZF0;->x:LdG0;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0}, LdG0;->b()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, LZF0;->x:LdG0;

    goto :goto_1

    .line 25
    :cond_1
    iget-object v1, p0, LZF0;->x:LdG0;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 26
    new-instance v1, LdG0;

    iget-object v3, p0, LZF0;->w:Landroid/app/Activity;

    iget-object v4, p0, LZF0;->B:Landroid/view/ViewGroup;

    invoke-direct {v1, v3, p0, v0, v4}, LdG0;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;LUF0;Landroid/view/ViewGroup;)V

    iput-object v1, p0, LZF0;->x:LdG0;

    .line 27
    invoke-virtual {v1}, LdG0;->e()V

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v1, v0, v2}, LdG0;->a(LUF0;Z)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_6

    .line 29
    iget-object v1, p0, LZF0;->y:Landroid/os/Handler;

    iget-object v2, p0, LZF0;->C:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    invoke-virtual {v0}, LUF0;->b()Z

    move-result v1

    if-nez v1, :cond_5

    .line 31
    iget v0, v0, LUF0;->i:I

    if-nez v0, :cond_3

    .line 32
    sget v0, LZF0;->D:I

    .line 33
    :cond_3
    invoke-static {}, LuO0;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x2

    .line 34
    sget v1, LZF0;->E:I

    if-ge v0, v1, :cond_4

    move v0, v1

    .line 35
    :cond_4
    iget-object v1, p0, LZF0;->y:Landroid/os/Handler;

    iget-object v2, p0, LZF0;->C:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    :cond_5
    iget-object v0, p0, LZF0;->x:LdG0;

    invoke-virtual {v0}, LdG0;->a()V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(LUF0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LZF0;->A:Z

    if-eqz v0, :cond_4

    .line 2
    iget v0, p1, LUF0;->l:I

    const-string v1, "Snackbar.Shown"

    .line 3
    invoke-static {v1, v0}, LfV;->e(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, LZF0;->z:LVF0;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p1}, LUF0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, LVF0;->a()LUF0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LVF0;->a()LUF0;

    move-result-object v1

    invoke-virtual {v1}, LUF0;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, LVF0;->a(Z)LUF0;

    .line 8
    :cond_0
    iget-object v0, v0, LVF0;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, LUF0;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v0, v0, LVF0;->b:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, v0, LVF0;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 12
    :goto_0
    invoke-virtual {p0}, LZF0;->a()V

    .line 13
    iget-object p1, p0, LZF0;->x:LdG0;

    invoke-virtual {p1}, LdG0;->a()V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 14
    throw p1

    :cond_4
    return-void
.end method

.method public a(LXF0;)V
    .locals 2

    .line 15
    iget-object v0, p0, LZF0;->z:LVF0;

    .line 16
    iget-object v1, v0, LVF0;->a:Ljava/util/Deque;

    invoke-static {v1, p1}, LVF0;->a(Ljava/util/Deque;LXF0;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, LVF0;->b:Ljava/util/Deque;

    .line 17
    invoke-static {v0, p1}, LVF0;->a(Ljava/util/Deque;LXF0;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0}, LZF0;->a()V

    :cond_2
    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;F)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, LZF0;->x:LdG0;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, LZF0;->x:LdG0;

    .line 4
    iget-object p1, p1, LdG0;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->bringToFront()V

    :cond_1
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, LZF0;->A:Z

    goto :goto_1

    :cond_0
    const/4 p1, 0x5

    if-ne p2, p1, :cond_2

    .line 2
    iget-object p1, p0, LZF0;->z:LVF0;

    .line 3
    :goto_0
    invoke-virtual {p1}, LVF0;->b()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {p1, v0}, LVF0;->a(Z)LUF0;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, LZF0;->a()V

    .line 6
    iput-boolean v0, p0, LZF0;->A:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LZF0;->z:LVF0;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, LVF0;->a(Z)LUF0;

    .line 3
    invoke-virtual {p0}, LZF0;->a()V

    return-void
.end method
