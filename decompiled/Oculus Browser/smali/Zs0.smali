.class public LZs0;
.super Landroid/widget/FrameLayout;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final A:Landroid/widget/TextView;

.field public final B:Landroid/widget/TextView;

.field public final C:Landroid/widget/LinearLayout;

.field public final D:Landroid/view/View;

.field public final E:Landroid/widget/Button;

.field public final F:Landroid/widget/Button;

.field public final G:Landroid/widget/Button;

.field public final H:Ljava/lang/Runnable;

.field public final w:Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;

.field public final z:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LZs0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LXs0;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    const v1, 0x7f0e013f

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b0315

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

    iput-object p1, p0, LZs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

    const p1, 0x7f0b0307

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LZs0;->x:Landroid/widget/TextView;

    const p1, 0x7f0b0306

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LZs0;->y:Landroid/widget/TextView;

    const p1, 0x7f0b0311

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LZs0;->z:Landroid/widget/TextView;

    const p1, 0x7f0b0314

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LZs0;->A:Landroid/widget/TextView;

    const p1, 0x7f0b0310

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, LZs0;->B:Landroid/widget/TextView;

    const p1, 0x7f0b030f

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, LZs0;->C:Landroid/widget/LinearLayout;

    const p1, 0x7f0b0312

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, LZs0;->D:Landroid/view/View;

    const p1, 0x7f0b0308

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, LZs0;->E:Landroid/widget/Button;

    const p1, 0x7f0b0313

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, LZs0;->F:Landroid/widget/Button;

    const p1, 0x7f0b0309

    .line 13
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, LZs0;->G:Landroid/widget/Button;

    .line 14
    iget-object p1, p0, LZs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

    iget-object v1, p2, LXs0;->n:Ljava/lang/CharSequence;

    iget v2, p2, LXs0;->q:I

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iput v2, p1, Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;->C:I

    .line 17
    iget-object p1, p2, LXs0;->i:Ljava/lang/Runnable;

    iput-object p1, p0, LZs0;->H:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, LZs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 19
    :cond_0
    iget-object p1, p0, LZs0;->w:Lorg/chromium/chrome/browser/page_info/PageInfoView$ElidedUrlTextView;

    iget-boolean v1, p2, LXs0;->a:Z

    iget-object v2, p2, LXs0;->h:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v3, v2}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 20
    iget-object p1, p0, LZs0;->x:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v3, v2}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 21
    iget-object p1, p0, LZs0;->y:Landroid/widget/TextView;

    iget-boolean v4, p2, LXs0;->b:Z

    invoke-virtual {p0, p1, v4, v3, v2}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, LZs0;->C:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v1, v4, v2}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 23
    iget-object p1, p0, LZs0;->E:Landroid/widget/Button;

    iget-boolean v5, p2, LXs0;->c:Z

    iget-object v6, p2, LXs0;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v5, v3, v6}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 24
    iget-object p1, p0, LZs0;->F:Landroid/widget/Button;

    iget-boolean v5, p2, LXs0;->d:Z

    iget-object v6, p2, LXs0;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v5, v3, v6}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 25
    iget-object p1, p0, LZs0;->G:Landroid/widget/Button;

    iget-boolean v5, p2, LXs0;->e:Z

    iget-object v6, p2, LXs0;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v5, v4, v6}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 26
    iget-object p1, p0, LZs0;->z:Landroid/widget/TextView;

    iget-boolean v4, p2, LXs0;->f:Z

    invoke-virtual {p0, p1, v4, v3, v2}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 27
    iget-object p1, p0, LZs0;->B:Landroid/widget/TextView;

    iget-boolean v4, p2, LXs0;->f:Z

    iget-object v5, p2, LXs0;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v4, v3, v5}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 28
    iget-object p1, p0, LZs0;->A:Landroid/widget/TextView;

    iget-boolean v4, p2, LXs0;->f:Z

    if-eqz v4, :cond_1

    iget-object v4, p2, LXs0;->p:Ljava/lang/CharSequence;

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, p1, v0, v3, v2}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 31
    iget-object p1, p0, LZs0;->D:Landroid/view/View;

    iget-boolean v0, p2, LXs0;->g:Z

    invoke-virtual {p0, p1, v0, v3, v2}, LZs0;->a(Landroid/view/View;ZFLjava/lang/Runnable;)V

    .line 32
    iget-object p1, p0, LZs0;->B:Landroid/widget/TextView;

    iget-object v0, p2, LXs0;->o:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object p1, p2, LXs0;->p:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 34
    iget-object p1, p0, LZs0;->A:Landroid/widget/TextView;

    iget-object p2, p2, LXs0;->p:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ZFLjava/lang/Runnable;)V
    .locals 0

    .line 28
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 29
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b0305

    .line 30
    invoke-virtual {p1, p2, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-nez p4, :cond_1

    return-void

    .line 31
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 7

    .line 1
    iget-object v0, p0, LZs0;->C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, LZs0;->C:Landroid/widget/LinearLayout;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LYs0;

    .line 4
    iget-object v1, p0, LZs0;->C:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0e0140

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b030c

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 7
    iget-object v5, v0, LYs0;->a:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0b030a

    .line 8
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 9
    iget v5, v0, LYs0;->c:I

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v0, LYs0;->b:I

    invoke-static {v5, v6}, LDM0;->a(Landroid/content/Context;I)LDM0;

    move-result-object v5

    .line 11
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 12
    :cond_1
    iget v5, v0, LYs0;->b:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v0, LYs0;->c:I

    .line 14
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 15
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 16
    :goto_2
    iget v4, v0, LYs0;->d:I

    if-eqz v4, :cond_2

    const v4, 0x7f0b030e

    .line 17
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 18
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget v5, v0, LYs0;->d:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 20
    :cond_2
    iget v4, v0, LYs0;->e:I

    if-eqz v4, :cond_3

    const v4, 0x7f0b030d

    .line 21
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 22
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget v5, v0, LYs0;->e:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 24
    :cond_3
    iget-object v0, v0, LYs0;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    const v4, 0x7f0b0305

    .line 25
    invoke-virtual {v3, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    :cond_4
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b0305

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find click callback for view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LZs0;->H:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1
.end method
