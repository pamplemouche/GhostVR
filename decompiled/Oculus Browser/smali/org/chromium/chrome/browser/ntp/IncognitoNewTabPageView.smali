.class public Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;
.super Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;
.source "PG"


# instance fields
.field public A:Lorg/chromium/chrome/browser/ntp/NewTabPageScrollView;

.field public B:I

.field public C:I

.field public D:Landroid/widget/LinearLayout;

.field public E:Landroid/widget/TextView;

.field public F:Landroid/widget/TextView;

.field public G:Landroid/widget/LinearLayout;

.field public H:Landroid/widget/TextView;

.field public I:[Landroid/widget/TextView;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->z:Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 16
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->B:I

    const/16 v1, 0x1e0

    const/16 v2, 0xf0

    const/16 v3, 0x2d0

    if-gt v0, v3, :cond_1

    if-le v0, v2, :cond_0

    .line 17
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->C:I

    if-gt v0, v1, :cond_2

    :cond_0
    const/16 v0, 0x30

    goto :goto_0

    .line 18
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->C:I

    if-gt v0, v1, :cond_3

    :cond_2
    const/16 v0, 0x48

    goto :goto_0

    :cond_3
    const/16 v0, 0x78

    :goto_0
    const v1, 0x7f0b02ce

    .line 19
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 20
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    int-to-float v0, v0

    invoke-static {v5, v0}, LGO0;->a(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, LGO0;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 22
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->B:I

    const/16 v1, 0x258

    const/high16 v4, 0x44160000    # 600.0f

    const/4 v5, -0x2

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gt v0, v3, :cond_5

    if-gt v0, v2, :cond_4

    const/16 v0, 0x18

    goto :goto_1

    :cond_4
    const/16 v0, 0x20

    .line 23
    :goto_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->D:Landroid/widget/LinearLayout;

    const v9, 0x800003

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 24
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v4}, LGO0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 26
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->G:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget v10, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->B:I

    mul-int/lit8 v11, v0, 0x2

    sub-int/2addr v10, v11

    .line 28
    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    .line 29
    invoke-static {v9, v10}, LGO0;->a(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    goto :goto_3

    .line 31
    :cond_5
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->C:I

    const/16 v2, 0x140

    if-gt v0, v2, :cond_6

    const/16 v0, 0x10

    const/16 v6, 0x10

    goto :goto_2

    :cond_6
    const/16 v0, 0x48

    const/16 v6, 0x48

    .line 32
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 33
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, LGO0;->a(Landroid/content/Context;F)I

    move-result v0

    .line 34
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->G:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_3
    if-eqz v2, :cond_7

    .line 36
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_4

    .line 37
    :cond_7
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->G:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    int-to-float v5, v6

    invoke-static {v4, v5}, LGO0;->a(Landroid/content/Context;F)I

    move-result v4

    .line 39
    iget-object v5, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    int-to-float v0, v0

    invoke-static {v6, v0}, LGO0;->a(Landroid/content/Context;F)I

    move-result v6

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, LGO0;->a(Landroid/content/Context;F)I

    move-result v0

    .line 41
    invoke-virtual {v5, v6, v4, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->I:[Landroid/widget/TextView;

    aget-object v0, v0, v8

    .line 43
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    float-to-double v4, v0

    iget v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->C:I

    if-gt v0, v1, :cond_8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_8
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    :goto_5
    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 44
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->I:[Landroid/widget/TextView;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_a

    aget-object v6, v1, v5

    if-eqz v2, :cond_9

    .line 45
    iget-object v9, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->G:Landroid/widget/LinearLayout;

    .line 46
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-ne v6, v9, :cond_9

    .line 47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v9, v10}, LGO0;->a(Landroid/content/Context;F)I

    move-result v9

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    .line 48
    :goto_7
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    invoke-virtual {v10, v8, v0, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 50
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 51
    :cond_a
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->E:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v8, v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->E:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13040f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->B:I

    if-le v1, v3, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    .line 55
    :goto_8
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->H:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    const/16 v3, 0x8

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez v1, :cond_d

    .line 56
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_a

    :cond_d
    const-string v1, " "

    .line 58
    invoke-static {v0, v1}, LZi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130396

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, LVe1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060107

    new-instance v5, LJm0;

    invoke-direct {v5, p0}, LJm0;-><init>(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)V

    invoke-direct {v1, v3, v4, v5}, LVe1;-><init>(Landroid/content/res/Resources;ILorg/chromium/base/Callback;)V

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v7

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    .line 63
    invoke-virtual {v2, v1, v0, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_a
    return-void
.end method

.method public final a(II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "<li>([^<]+)\n"

    const-string v1, "<li>$1</li>\n"

    .line 3
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "<li1>$1</li1>"

    const-string v1, " *<li>([^<]*)</li>"

    .line 4
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "<li2>$1</li2>"

    .line 5
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " *<li>([^<]*)</li>\n"

    const-string v1, "<li3>$1</li3>"

    .line 6
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " *</?ul>\\n?"

    const-string v1, ""

    .line 7
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    new-array v0, v0, [LWe1;

    .line 8
    new-instance v1, LWe1;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0600e6

    .line 10
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 11
    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const-string v3, "<em>"

    const-string v4, "</em>"

    invoke-direct {v1, v3, v4, v2}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    new-instance v2, LWe1;

    new-instance v3, Lorg/chromium/ui/widget/ChromeBulletSpan;

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/chromium/ui/widget/ChromeBulletSpan;-><init>(Landroid/content/Context;)V

    const-string v4, "<li1>"

    const-string v5, "</li1>"

    invoke-direct {v2, v4, v5, v3}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, LWe1;

    new-instance v3, Lorg/chromium/ui/widget/ChromeBulletSpan;

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/chromium/ui/widget/ChromeBulletSpan;-><init>(Landroid/content/Context;)V

    const-string v4, "<li2>"

    const-string v5, "</li2>"

    invoke-direct {v2, v4, v5, v3}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, LWe1;

    new-instance v3, Lorg/chromium/ui/widget/ChromeBulletSpan;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/chromium/ui/widget/ChromeBulletSpan;-><init>(Landroid/content/Context;)V

    const-string v4, "<li3>"

    const-string v5, "</li3>"

    invoke-direct {v2, v4, v5, v3}, LWe1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 15
    invoke-static {p2, v0}, LXe1;->a(Ljava/lang/String;[LWe1;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/chromium/chrome/browser/gesturenav/HistoryNavigationLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->z:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0b02e3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabPageScrollView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->A:Lorg/chromium/chrome/browser/ntp/NewTabPageScrollView;

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013f

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1300ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->A:Lorg/chromium/chrome/browser/ntp/NewTabPageScrollView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    const v0, 0x7f0b0232

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 10
    new-instance v2, LKm0;

    invoke-direct {v2, p0}, LKm0;-><init>(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->B:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->C:I

    const v1, 0x7f13040e

    const v2, 0x7f0b02cd

    .line 13
    invoke-virtual {p0, v2, v1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->a(II)V

    const v1, 0x7f130411

    const v3, 0x7f0b02d1

    .line 14
    invoke-virtual {p0, v3, v1}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->a(II)V

    const v1, 0x7f0b02cc

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->D:Landroid/widget/LinearLayout;

    const v1, 0x7f0b02d0

    .line 16
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->E:Landroid/widget/TextView;

    const v1, 0x7f0b02cf

    .line 17
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->H:Landroid/widget/TextView;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 19
    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->F:Landroid/widget/TextView;

    aput-object v4, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->H:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->I:[Landroid/widget/TextView;

    const v0, 0x7f0b02cb

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->G:Landroid/widget/LinearLayout;

    .line 22
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->a()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2
    iget v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->B:I

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->C:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_1

    .line 3
    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->B:I

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->C:I

    .line 5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->a()V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
