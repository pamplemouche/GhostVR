.class public Lcom/oculus/horizon/pdp/widget/ProgressView;
.super Landroid/widget/RelativeLayout;
.source "ProgressView.java"


# instance fields
.field private mActionButton:Landroid/widget/ImageView;

.field private mMax:J

.field private mProgress:J

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->progress_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v0, Lcom/oculus/horizon/R$id;->progress_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mTextView:Landroid/widget/TextView;

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->progress_action:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mActionButton:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/oculus/horizon/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/widget/ProgressView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 48
    return-void
.end method

.method private update(JJ)V
    .locals 11

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/16 v6, 0x400

    .line 93
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/ProgressView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/oculus/horizon/util/FileSizeUtils;->formatForDisplayAbbreviated(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/widget/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, p4}, Lcom/oculus/horizon/util/FileSizeUtils;->formatForDisplayAbbreviated(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 96
    sget v3, Lcom/oculus/horizon/R$string;->common_download_progress:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    cmp-long v0, p1, v8

    if-gtz v0, :cond_0

    cmp-long v0, p3, v8

    if-lez v0, :cond_1

    .line 100
    :cond_0
    div-long/2addr p1, v6

    .line 101
    div-long/2addr p3, v6

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    long-to-int v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 106
    return-void
.end method


# virtual methods
.method public setActionImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-void
.end method

.method public setActionImageResource(I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    return-void
.end method

.method public setActionOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public setActionVisibility(I)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 74
    return-void
.end method

.method public setMax(J)V
    .locals 5

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mMax:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 59
    iput-wide p1, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mMax:J

    .line 60
    iget-wide v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgress:J

    iget-wide v2, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mMax:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/widget/ProgressView;->update(JJ)V

    .line 62
    :cond_0
    return-void
.end method

.method public setProgress(J)V
    .locals 5

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgress:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 52
    iput-wide p1, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgress:J

    .line 53
    iget-wide v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mProgress:J

    iget-wide v2, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mMax:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/widget/ProgressView;->update(JJ)V

    .line 55
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/pdp/widget/ProgressView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    return-void
.end method
