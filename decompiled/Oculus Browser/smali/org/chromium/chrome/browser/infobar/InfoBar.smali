.class public abstract Lorg/chromium/chrome/browser/infobar/InfoBar;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LVf0;


# instance fields
.field public A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

.field public B:Landroid/view/View;

.field public C:Landroid/content/Context;

.field public D:Z

.field public E:Z

.field public F:J

.field public final w:I

.field public final x:Landroid/graphics/Bitmap;

.field public final y:I

.field public final z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->E:Z

    .line 3
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->w:I

    .line 4
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->x:Landroid/graphics/Bitmap;

    .line 5
    iput p2, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->y:I

    .line 6
    iput-object p3, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->z:Ljava/lang/CharSequence;

    return-void
.end method

.method private closeInfoBar()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->D:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->D:Z

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 4
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->E:Z

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->j()V

    .line 6
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 7
    iget-object v2, v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v2, v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->z:LWT;

    invoke-virtual {v2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwf0;

    .line 9
    iget-object v4, v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->y:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-interface {v3, v1, p0, v4}, Lwf0;->a(Lorg/chromium/chrome/browser/infobar/InfoBarContainer;Lorg/chromium/chrome/browser/infobar/InfoBar;Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, v1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    .line 11
    iget-object v1, v1, LNf0;->H:LJf0;

    .line 12
    iget-object v2, v1, LJf0;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v1}, LJf0;->c()V

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 15
    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    .line 16
    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private final setNativeInfoBar(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public a(LUf0;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->H:LNf0;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, LNf0;->H:LJf0;

    .line 5
    invoke-virtual {p1}, LJf0;->c()V

    :cond_0
    return-void
.end method

.method public a(Lpf0;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->E:Z

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MIi8S4CA(JLjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const v2, 0x7f0b021b

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4
    :cond_1
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/infobar/InfoBar;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v2, 0x7f1301bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MKU1DDSu(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->D:Z

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MlP0Xunk(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->E:Z

    return v0
.end method

.method public g()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    .line 3
    invoke-static {v0, v1, p0}, LJ/N;->MfsFPc2F(JLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final h()Landroid/view/View;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lpf0;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    iget v4, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->w:I

    iget v5, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->y:I

    iget-object v6, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->x:Landroid/graphics/Bitmap;

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lpf0;-><init>(Landroid/content/Context;LVf0;IILandroid/graphics/Bitmap;)V

    .line 3
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->a(Lpf0;)V

    .line 4
    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    goto :goto_1

    .line 5
    :cond_0
    new-instance v0, LUf0;

    iget-object v8, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    iget v10, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->w:I

    iget v11, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->y:I

    iget-object v12, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->x:Landroid/graphics/Bitmap;

    iget-object v13, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->z:Ljava/lang/CharSequence;

    move-object v7, v0

    move-object v9, p0

    invoke-direct/range {v7 .. v13}, LUf0;-><init>(Landroid/content/Context;LVf0;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->a(LUf0;)V

    .line 7
    iget-object v1, v0, LUf0;->J:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_1
    iget-object v1, v0, LUf0;->G:LRf0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-object v1, v0, LUf0;->H:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, v0, LUf0;->K:Lorg/chromium/chrome/browser/ui/widget/DualControlLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    :cond_3
    iget-object v1, v0, LUf0;->F:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    .line 13
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->B:Landroid/view/View;

    return-object v0
.end method

.method public i()LZF0;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->A:Lorg/chromium/chrome/browser/infobar/InfoBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/InfoBarContainer;->C:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->C()LZF0;

    move-result-object v0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNativeDestroyed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    return-void
.end method
