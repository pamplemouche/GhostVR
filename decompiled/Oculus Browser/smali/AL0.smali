.class public final synthetic LAL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LAL0;

    invoke-direct {v0}, LAL0;-><init>()V

    sput-object v0, LAL0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lle1;

    check-cast p2, Landroid/view/View;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, LqL0;->b:Lfe1;

    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    .line 2
    sget-object v1, LqL0;->a:Lke1;

    if-ne p3, v1, :cond_0

    const p3, 0x7f0b01ba

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 4
    sget-object p3, LqL0;->a:Lke1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    .line 5
    :cond_0
    sget-object v1, LqL0;->d:Lfe1;

    if-ne p3, v1, :cond_1

    .line 6
    new-instance p3, LCL0;

    invoke-direct {p3, p1, v0}, LCL0;-><init>(Lle1;Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 7
    :cond_1
    sget-object v1, LqL0;->c:Lfe1;

    const/4 v2, 0x0

    const v3, 0x7f0b0125

    const/16 v4, 0x8

    if-ne p3, v1, :cond_3

    .line 8
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 9
    sget-object p3, LqL0;->c:Lfe1;

    invoke-virtual {p1, p3}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->isPublicSuffixMatch()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    .line 11
    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 12
    :cond_3
    sget-object p1, LqL0;->b:Lfe1;

    if-ne p3, p1, :cond_5

    .line 13
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 14
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->getOriginUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, LFO0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "/$"

    const-string v3, ""

    .line 15
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->isPublicSuffixMatch()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    .line 18
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0b04de

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 20
    iget-object p3, v0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b031e

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 23
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance p2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {p2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_5
    :goto_2
    return-void
.end method
