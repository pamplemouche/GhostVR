.class public final synthetic Ldy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

.field public final x:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldy0;->w:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    iput-object p2, p0, Ldy0;->x:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p1, p0, Ldy0;->w:Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;

    iget-object v0, p0, Ldy0;->x:Landroid/widget/TextView;

    .line 1
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/preferences/ClearBrowsingDataCheckBoxPreference;->r0:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, p1, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p1

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4
    instance-of v4, v3, Landroid/text/Spanned;

    const-string v5, "History.ClearBrowsingData.SpannableStringAppliedCorrectly"

    .line 5
    invoke-static {v5, v4}, LfV;->a(Ljava/lang/String;Z)V

    if-nez v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v3, p1, p1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 7
    array-length v3, p1

    if-lez v3, :cond_3

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v2, :cond_2

    .line 9
    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v3, p1, v1

    .line 10
    invoke-virtual {v3, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method
