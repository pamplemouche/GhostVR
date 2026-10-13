.class public Lorg/chromium/chrome/browser/contacts_picker/ContactView;
.super LhR0;
.source "PG"


# instance fields
.field public N:Landroid/content/Context;

.field public O:LS30;

.field public P:LrR0;

.field public Q:LF30;

.field public R:Landroid/widget/TextView;

.field public S:Landroid/widget/TextView;

.field public T:Landroid/widget/TextView;

.field public U:Landroid/widget/TextView;

.field public V:Landroid/widget/TextView;

.field public W:LBd1;

.field public a0:Lle1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LhR0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->N:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, LiR0;->C:Z

    return-void
.end method


# virtual methods
.method public a(LF30;Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, LhR0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->R:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->T:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->U:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->V:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iput-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->Q:LF30;

    .line 24
    iput-object p1, p0, LiR0;->A:Ljava/lang/Object;

    .line 25
    iget-object v0, p0, LiR0;->z:LrR0;

    .line 26
    iget-object v0, v0, LrR0;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 27
    invoke-virtual {p0, v0}, LiR0;->setChecked(Z)V

    .line 28
    iget-object v0, p1, LF30;->x:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->R:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    sget-boolean v0, LP30;->H:Z

    .line 31
    sget-boolean v2, LP30;->I:Z

    .line 32
    iget-object v3, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->N:Landroid/content/Context;

    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11000a

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p1, LF30;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p1, LF30;->y:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    iget-object v7, p1, LF30;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_1

    sub-int/2addr v7, v5

    new-array v8, v5, [Ljava/lang/Object;

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    .line 38
    invoke-virtual {v3, v4, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    move-object v7, v0

    :goto_1
    if-eqz v2, :cond_5

    .line 39
    iget-object v2, p1, LF30;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 40
    :cond_3
    iget-object v2, p1, LF30;->z:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    iget-object v8, p1, LF30;->z:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_4

    sub-int/2addr v8, v5

    new-array v9, v5, [Ljava/lang/Object;

    .line 42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 43
    invoke-virtual {v3, v4, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    :goto_2
    move-object v2, v1

    move-object v3, v2

    .line 44
    :goto_3
    iget-object v4, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->S:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v0}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->T:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->U:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->V:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    if-nez p2, :cond_7

    .line 48
    iget-object p2, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->O:LS30;

    .line 49
    iget-object p2, p2, LS30;->G:LCM0;

    .line 50
    iget-object v0, p1, LF30;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 51
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, LF30;->x:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object p1, p1, LF30;->x:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 53
    array-length v0, p1

    if-le v0, v5, :cond_6

    .line 54
    invoke-static {v1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    sub-int/2addr v1, v5

    aget-object p1, p1, v1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_6
    invoke-virtual {p2, v1}, LCM0;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 56
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 57
    iput-object p2, p0, LhR0;->M:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {p0, v6}, LhR0;->b(Z)V

    goto :goto_4

    .line 59
    :cond_7
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a(Landroid/graphics/Bitmap;)V

    :goto_4
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->N:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8
    new-instance v1, Ly4;

    invoke-direct {v1, v0, p1}, Ly4;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v1, Lz4;->k:Z

    .line 10
    iput-boolean p1, v1, Lz4;->j:Z

    .line 11
    iget p1, v1, Lz4;->m:I

    iget v0, v1, Lz4;->l:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 12
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, v1, Lz4;->g:F

    .line 13
    iget-object p1, v1, Lz4;->d:Landroid/graphics/Paint;

    iget-object v0, v1, Lz4;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 14
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    iput-object v1, p0, LhR0;->M:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, LhR0;->b(Z)V

    return-void
.end method

.method public final a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->Q:LF30;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 3
    invoke-super {p0}, LiR0;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 4
    invoke-super {p0}, LiR0;->toggle()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0185

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b0478

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, LiR0;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->onLongClick(Landroid/view/View;)Z

    :goto_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, LhR0;->onFinishInflate()V

    const v0, 0x7f0b0494

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->R:Landroid/widget/TextView;

    const v0, 0x7f0b0182

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->S:Landroid/widget/TextView;

    const v0, 0x7f0b0185

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->T:Landroid/widget/TextView;

    const v0, 0x7f0b0477

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->U:Landroid/widget/TextView;

    const v0, 0x7f0b0478

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->V:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->T:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->V:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->O:LS30;

    .line 2
    iget-object p1, p1, LS30;->z:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    invoke-virtual {p1}, LBg0;->o()LBd1;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->W:LBd1;

    .line 4
    new-instance p1, LG30;

    invoke-direct {p1, p0}, LG30;-><init>(Lorg/chromium/chrome/browser/contacts_picker/ContactView;)V

    .line 5
    new-instance v0, LXd1;

    sget-object v1, LEd1;->q:[LUd1;

    invoke-direct {v0, v1}, LXd1;-><init>([LUd1;)V

    sget-object v1, LEd1;->a:Lfe1;

    .line 6
    invoke-virtual {v0, v1, p1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p1, LEd1;->c:Lke1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->Q:LF30;

    .line 7
    iget-object v1, v1, LF30;->x:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, p1, v1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p1, LEd1;->e:Lke1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->Q:LF30;

    .line 9
    sget-boolean v2, LP30;->H:Z

    .line 10
    sget-boolean v3, LP30;->I:Z

    .line 11
    invoke-virtual {v1, v2, v3}, LF30;->a(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, p1, v1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p1, LEd1;->g:Lke1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->N:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130207

    invoke-virtual {v0, p1, v1, v2}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    .line 14
    invoke-virtual {v0}, LXd1;->a()Lle1;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a0:Lle1;

    .line 15
    sget-object v0, LEd1;->d:Lke1;

    .line 16
    iget-object v1, p0, LhR0;->M:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p1, v0, v1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->W:LBd1;

    iget-object v0, p0, Lorg/chromium/chrome/browser/contacts_picker/ContactView;->a0:Lle1;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1, v1}, LBd1;->a(Lle1;IZ)V

    const/4 p1, 0x1

    return p1
.end method
