.class public Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;
.super Lorg/chromium/chrome/browser/infobar/InfoBar;
.source "PG"


# instance fields
.field public G:Z

.field public H:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f080248

    const v2, 0x7f0600e9

    .line 1
    invoke-direct {p0, v1, v2, v0, v0}, Lorg/chromium/chrome/browser/infobar/InfoBar;-><init>(IILjava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    .line 2
    new-instance v0, Lbg0;

    invoke-direct {v0, p0}, Lbg0;-><init>(Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->H:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static create()Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 20
    iget-object p1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    const v0, 0x7f130515

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lpf0;)V
    .locals 4

    .line 1
    new-instance v0, LjN0;

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1}, LjN0;-><init>(Landroid/content/Context;)V

    const v1, 0x7f130515

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070160

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06008c

    .line 9
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x10

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 12
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b021a

    .line 13
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 14
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x2

    .line 15
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 16
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->C:Landroid/content/Context;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07027c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 18
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {p1, v0, v1}, Lpf0;->a(Landroid/view/View;F)V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->l()LG70;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->l()LG70;

    move-result-object v0

    .line 3
    iget-object v1, v0, LG70;->A:LpI0;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DomDistiller.InfoBarUsage"

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, LfV;->a(Ljava/lang/String;Z)V

    .line 5
    iget-object v1, v0, LG70;->A:LpI0;

    check-cast v1, LrI0;

    invoke-virtual {v1}, LrI0;->c()I

    move-result v1

    .line 6
    iget-object v2, v0, LG70;->y:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, LG70;->y:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH70;

    const/4 v1, 0x1

    iput-boolean v1, v0, LH70;->c:Z

    .line 8
    :cond_2
    :goto_0
    invoke-super {p0}, Lorg/chromium/chrome/browser/infobar/InfoBar;->e()V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/ReaderModeInfoBar;->G:Z

    return-void
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final l()LG70;
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/InfoBar;->F:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    return-object v4

    .line 2
    :cond_0
    invoke-static {v0, v1, p0}, LJ/N;->MTkhOevD(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->I0()LG70;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v4
.end method
