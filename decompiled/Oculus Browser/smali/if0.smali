.class public Lif0;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "PG"


# instance fields
.field public final J:I

.field public final K:I

.field public final L:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v2, 0x7f0600e9

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(IILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p3, p0, Lif0;->L:Ljava/lang/String;

    .line 3
    iput p4, p0, Lif0;->J:I

    .line 4
    iput p5, p0, Lif0;->K:I

    return-void
.end method


# virtual methods
.method public a(LUf0;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->a(LUf0;)V

    .line 2
    invoke-virtual {p1}, LUf0;->a()LRf0;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lif0;->L:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v2, LVe1;

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance v3, Lhf0;

    invoke-direct {v3, p0}, Lhf0;-><init>(Lif0;)V

    invoke-direct {v2, p1, v3}, LVe1;-><init>(Landroid/content/res/Resources;Lorg/chromium/base/Callback;)V

    iget p1, p0, Lif0;->J:I

    iget v3, p0, Lif0;->K:I

    const/16 v4, 0x12

    .line 6
    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 7
    invoke-virtual {v0, v1}, LRf0;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    return-void
.end method
