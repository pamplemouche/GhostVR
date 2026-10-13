.class public LM40;
.super LQ40;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ChromeActivity;

.field public final b:Z

.field public final c:Z

.field public final d:F


# direct methods
.method public constructor <init>(Lo50;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, LQ40;-><init>()V

    .line 2
    iget v0, p1, Lo50;->c:F

    .line 3
    iput v0, p0, LM40;->d:F

    .line 4
    iget-object p1, p1, Lo50;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 5
    iput-object p1, p0, LM40;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    const/4 p1, 0x6

    .line 6
    invoke-static {p1}, LP40;->a(I)Z

    move-result p1

    iput-boolean p1, p0, LM40;->c:Z

    .line 7
    iget-object p1, p0, LM40;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ChromeActivity;->k0()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    .line 8
    iget-object v0, p0, LM40;->a:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->A0()Lbd0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 9
    :cond_0
    iget v3, v0, Lbd0;->G:I

    int-to-float v3, v3

    .line 10
    iget v4, v0, Lbd0;->D:I

    int-to-float v4, v4

    .line 11
    iget v0, v0, Lbd0;->H:I

    int-to-float v0, v0

    int-to-float v5, v1

    .line 12
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->n()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    int-to-float p1, p1

    add-float/2addr v4, v3

    sub-float/2addr p1, v4

    sub-float/2addr v5, v0

    sub-float/2addr p1, v5

    :goto_1
    cmpl-float v0, p1, v2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v0, 0x42600000    # 56.0f

    int-to-float p2, p2

    .line 14
    iget v2, p0, LM40;->d:F

    mul-float p2, p2, v2

    mul-float p1, p1, v2

    sub-float/2addr p1, v0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    const/4 v1, 0x1

    .line 15
    :cond_3
    :goto_2
    iput-boolean v1, p0, LM40;->b:Z

    return-void
.end method


# virtual methods
.method public a(LW40;)V
    .locals 2

    .line 2
    iget-boolean v0, p0, LM40;->b:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    check-cast p1, Lk50;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lk50;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LM40;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LM40;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LM40;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, LM40;->b:Z

    invoke-static {v0}, Lz50;->a(Z)V

    :cond_0
    return-void
.end method
