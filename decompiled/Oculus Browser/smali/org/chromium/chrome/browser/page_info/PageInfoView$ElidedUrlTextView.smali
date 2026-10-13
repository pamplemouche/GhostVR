.class public Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;
.super LSe;
.source "PG"


# instance fields
.field public A:Ljava/lang/Integer;

.field public B:Z

.field public C:I

.field public D:I

.field public z:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LZs0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 1
    invoke-direct {p0, p1, p2, v0}, LSe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->B:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->C:I

    const p1, 0x7fffffff

    .line 4
    iput p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->D:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-ge v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->A:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->B:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->z:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->D:I

    if-eq v0, v1, :cond_1

    .line 5
    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iput v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->D:I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasure(II)V
    .locals 3

    const v0, 0x7fffffff

    .line 1
    invoke-super {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2
    iput v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->D:I

    .line 3
    invoke-super {p0, p1, p2}, LSe;->onMeasure(II)V

    .line 4
    invoke-virtual {p0}, LSe;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->C:I

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->z:Ljava/lang/Integer;

    const/16 v1, 0x23

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 9
    :cond_0
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->A:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->z:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->A:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->z:Ljava/lang/Integer;

    .line 13
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, LSe;->onMeasure(II)V

    :cond_2
    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2
    iput p1, p0, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->D:I

    return-void
.end method
