.class public final synthetic LYq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LYq0;

    invoke-direct {v0}, LYq0;-><init>()V

    sput-object v0, LYq0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lle1;

    check-cast p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, Lxs0;->a:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p3, Lws0;

    sget-object v0, Lxs0;->a:Lke1;

    .line 3
    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcs0;

    invoke-direct {p3, p1}, Lws0;-><init>(Lcs0;)V

    .line 4
    iput-object p3, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->w:Lrs0;

    .line 5
    iget-object p1, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->x:Landroid/view/View;

    new-instance p3, Los0;

    invoke-direct {p3, p2}, Los0;-><init>(Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->x:Landroid/view/View;

    new-instance p3, Lps0;

    invoke-direct {p3, p2}, Lps0;-><init>(Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    iget-object p1, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->B:Landroid/widget/ImageView;

    new-instance p3, Lqs0;

    invoke-direct {p3, p2}, Lqs0;-><init>(Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 8
    :cond_0
    sget-object v0, Lxs0;->b:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    sget-object p3, Lxs0;->b:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 10
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->y:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 11
    :cond_1
    sget-object v0, Lxs0;->c:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object p3, Lxs0;->c:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 13
    iget-object p2, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->z:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 14
    :cond_2
    sget-object v0, Lxs0;->d:Lke1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lxs0;->e:Lje1;

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    sget-object v0, Lsr0;->a:Lhe1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    sget-object p3, Lsr0;->a:Lhe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lce1;)Z

    move-result p1

    .line 18
    iget-object p3, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->B:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 19
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, LAO0;->a(Landroid/content/Context;Z)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 20
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 21
    iput-boolean p1, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->C:Z

    .line 22
    iget-boolean p1, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->D:Z

    if-nez p1, :cond_8

    .line 23
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->a()V

    goto :goto_1

    .line 24
    :cond_4
    sget-object v0, Lsr0;->b:Lje1;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 25
    sget-object p3, Lsr0;->b:Lje1;

    .line 26
    invoke-virtual {p1, p3}, Lle1;->a(Lee1;)I

    move-result p1

    .line 27
    invoke-static {p2, p1}, LA7;->g(Landroid/view/View;I)V

    goto :goto_1

    .line 28
    :cond_5
    :goto_0
    sget-object p3, Lxs0;->d:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    .line 29
    sget-object v0, Lxs0;->e:Lje1;

    invoke-virtual {p1, v0}, Lle1;->a(Lee1;)I

    move-result p1

    if-eqz p3, :cond_6

    .line 30
    invoke-virtual {p2, p3}, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    .line 31
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x1

    invoke-static {v0, v0, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 32
    invoke-virtual {p3, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 33
    invoke-virtual {p2, p3}, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p2, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->D:Z

    .line 35
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/omnibox/suggestions/entity/EntitySuggestionView;->a()V

    :cond_8
    :goto_1
    return-void
.end method
