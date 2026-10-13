.class public Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;
.super Lvc;
.source "PG"


# instance fields
.field public r0:Z

.field public s0:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f0401c2

    .line 1
    invoke-direct {p0, p1, p2, v1, v0}, Lvc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->r0:Z

    const p1, 0x7f0e0052

    .line 3
    iput p1, p0, Landroid/support/v7/preference/Preference;->c0:I

    return-void
.end method


# virtual methods
.method public a(LGc;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->a(LGc;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->s0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 4
    new-instance v1, Lrd1;

    invoke-direct {v1, v0}, Lrd1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x10100a0

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 5
    iget-object v4, v1, Lrd1;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    .line 6
    new-instance v6, Lpd1;

    const/4 v7, 0x0

    const v8, 0x7f080133

    invoke-direct {v6, v8, v3, v4, v7}, Lpd1;-><init>(I[IILod1;)V

    .line 7
    iget-object v3, v1, Lrd1;->b:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f080134

    new-array v4, v5, [I

    .line 8
    iget-object v8, v1, Lrd1;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v8, v2

    .line 9
    new-instance v2, Lpd1;

    invoke-direct {v2, v3, v4, v8, v7}, Lpd1;-><init>(I[IILod1;)V

    .line 10
    iget-object v3, v1, Lrd1;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0802ec

    .line 11
    new-instance v4, Lqd1;

    .line 12
    iget v8, v6, Lpd1;->c:I

    iget v9, v2, Lpd1;->c:I

    .line 13
    invoke-direct {v4, v3, v8, v9, v7}, Lqd1;-><init>(IIILod1;)V

    .line 14
    iget-object v3, v1, Lrd1;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f0802ed

    .line 15
    new-instance v4, Lqd1;

    .line 16
    iget v2, v2, Lpd1;->c:I

    iget v6, v6, Lpd1;->c:I

    .line 17
    invoke-direct {v4, v3, v2, v6, v7}, Lqd1;-><init>(IIILod1;)V

    .line 18
    iget-object v2, v1, Lrd1;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v2, Landroid/graphics/drawable/AnimatedStateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 20
    iget-object v3, v1, Lrd1;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 21
    iget-object v6, v1, Lrd1;->b:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpd1;

    .line 22
    iget-object v7, v1, Lrd1;->a:Landroid/content/Context;

    .line 23
    iget v8, v6, Lpd1;->a:I

    .line 24
    invoke-static {v7, v8}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 25
    iget-object v8, v6, Lpd1;->b:[I

    .line 26
    iget v6, v6, Lpd1;->c:I

    .line 27
    invoke-virtual {v2, v8, v7, v6}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_0
    iget-object v3, v1, Lrd1;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 29
    iget-object v6, v1, Lrd1;->c:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lqd1;

    .line 30
    iget-object v7, v1, Lrd1;->a:Landroid/content/Context;

    .line 31
    iget v8, v6, Lqd1;->a:I

    .line 32
    invoke-static {v7, v8}, Lsa;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 33
    iget v8, v6, Lqd1;->b:I

    .line 34
    iget v6, v6, Lqd1;->c:I

    .line 35
    instance-of v9, v7, Landroid/graphics/drawable/Animatable;

    if-eqz v9, :cond_1

    .line 36
    invoke-virtual {v2, v8, v6, v7, v5}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "drawable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_2
    invoke-static {v2}, Lx4;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f060169

    .line 39
    invoke-static {v0, v2}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    iput-object v1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->s0:Landroid/graphics/drawable/Drawable;

    :cond_3
    const v0, 0x7f0b00b9

    .line 42
    invoke-virtual {p1, v0}, LGc;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/CheckableImageView;

    .line 43
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->s0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->r0:Z

    invoke-virtual {v0, v1}, Lorg/chromium/ui/widget/CheckableImageView;->setChecked(Z)V

    .line 45
    iget-object p1, p1, Ldh;->w:Landroid/view/View;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->E:Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Landroid/support/v7/preference/Preference;->w:Landroid/content/Context;

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->r0:Z

    if-eqz v2, :cond_4

    const v2, 0x7f1300e0

    goto :goto_2

    :cond_4
    const v2, 0x7f1300d8

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->r0:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/preferences/ExpandablePreferenceGroup;->r0:Z

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->o()V

    return-void
.end method
