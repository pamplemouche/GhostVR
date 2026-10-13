.class public Lrd0;
.super LCd0;
.source "PG"


# instance fields
.field public b:F

.field public c:J


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, LCd0;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 3
    invoke-static {p0, p1, p2}, LJ/N;->MzJQbog2(Ljava/lang/Object;FLjava/lang/Object;)J

    move-result-wide p1

    .line 4
    iput-wide p1, p0, Lrd0;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 8
    iget-wide v0, p0, Lrd0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-wide v0, p0, Lrd0;->c:J

    .line 10
    invoke-static {v0, v1, p0}, LJ/N;->MxNewYMm(JLjava/lang/Object;)V

    .line 11
    iput-wide v2, p0, Lrd0;->c:J

    return-void
.end method

.method public a(F)V
    .locals 5

    .line 5
    iget-wide v0, p0, Lrd0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 6
    :cond_0
    iget v2, p0, Lrd0;->b:F

    add-float/2addr v2, p1

    iput v2, p0, Lrd0;->b:F

    .line 7
    invoke-static {v0, v1, p0, v2, p1}, LJ/N;->Mmktf561(JLjava/lang/Object;FF)V

    return-void
.end method

.method public a(FF)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lrd0;->c:J

    iget-object v2, p0, LCd0;->a:Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget-object v2, p0, LCd0;->a:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 4
    invoke-static/range {v0 .. v6}, LJ/N;->Mh7HUra7(JLjava/lang/Object;FFII)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lrd0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, p0, v2, v2}, LJ/N;->Mmktf561(JLjava/lang/Object;FF)V

    .line 3
    iput v2, p0, Lrd0;->b:F

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lrd0;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lrd0;->c:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->M5ii_o9D(JLjava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lrd0;->b:F

    return-void
.end method
