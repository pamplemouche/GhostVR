.class public Lcom/oculus/horizon/widget/PopupBubble;
.super Landroid/widget/PopupWindow;
.source "PopupBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/PopupBubble$BubbleView;,
        Lcom/oculus/horizon/widget/PopupBubble$Callback;
    }
.end annotation


# instance fields
.field private mAnchorPoint:Landroid/graphics/Point;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

.field private mCallback:Lcom/oculus/horizon/widget/PopupBubble$Callback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mParentViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mShowBelow:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Point;Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble$Callback;Z)V
    .locals 4
    .param p1    # Landroid/graphics/Point;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/oculus/horizon/widget/PopupBubble$Callback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 78
    new-instance v0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4, p5}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, v0, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 82
    invoke-direct {p0, p2}, Lcom/oculus/horizon/widget/PopupBubble;->setParentView(Landroid/view/View;)V

    .line 83
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/PopupBubble;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    iput-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    .line 84
    iput-object p6, p0, Lcom/oculus/horizon/widget/PopupBubble;->mCallback:Lcom/oculus/horizon/widget/PopupBubble$Callback;

    .line 85
    iput-object p1, p0, Lcom/oculus/horizon/widget/PopupBubble;->mAnchorPoint:Landroid/graphics/Point;

    .line 86
    iput-boolean p3, p0, Lcom/oculus/horizon/widget/PopupBubble;->mShowBelow:Z

    .line 88
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PopupBubble;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {p0, p7}, Lcom/oculus/horizon/widget/PopupBubble;->setFocusable(Z)V

    .line 90
    invoke-virtual {p0, v3}, Lcom/oculus/horizon/widget/PopupBubble;->setTouchable(Z)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/oculus/horizon/widget/PopupBubble;->setOutsideTouchable(Z)V

    .line 92
    new-instance v0, Lcom/oculus/horizon/widget/PopupBubble$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/PopupBubble$1;-><init>(Lcom/oculus/horizon/widget/PopupBubble;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/PopupBubble;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble$Callback;Z)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/oculus/horizon/widget/PopupBubble$Callback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/widget/PopupBubble;-><init>(Landroid/graphics/Point;Landroid/view/View;ZLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble$Callback;Z)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$Callback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mCallback:Lcom/oculus/horizon/widget/PopupBubble$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/widget/PopupBubble;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mAnchorPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/widget/PopupBubble;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/widget/PopupBubble;->getParentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$BubbleView;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/widget/PopupBubble;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/widget/PopupBubble;->calculatePositionAndShow()V

    return-void
.end method

.method private calculatePositionAndShow()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-direct {p0}, Lcom/oculus/horizon/widget/PopupBubble;->getParentView()Landroid/view/View;

    move-result-object v5

    .line 161
    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mAnchorPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mAnchorPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mAnchorPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mAnchorPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 178
    :goto_1
    iget-object v2, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->getWidth()I

    move-result v2

    .line 181
    div-int/lit8 v3, v2, 0x2

    sub-int v6, v1, v3

    .line 183
    iget-boolean v3, p0, Lcom/oculus/horizon/widget/PopupBubble;->mShowBelow:Z

    if-eqz v3, :cond_3

    .line 187
    :goto_2
    div-int/lit8 v3, v2, 0x2

    add-int v7, v1, v3

    .line 188
    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    .line 189
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 190
    sub-int v2, v7, v8

    .line 193
    div-int/lit8 v7, v8, 0x2

    if-le v1, v7, :cond_4

    if-lez v2, :cond_4

    move v1, v2

    .line 201
    :goto_3
    iget-object v2, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    iget-object v2, v2, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mNub:Landroid/view/View;

    .line 203
    iget-object v3, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    invoke-virtual {v3}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    .line 204
    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 206
    invoke-virtual {p0, v5, v4, v6, v0}, Lcom/oculus/horizon/widget/PopupBubble;->showAtLocation(Landroid/view/View;III)V

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->show()V

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 173
    invoke-virtual {v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 175
    iget-boolean v2, p0, Lcom/oculus/horizon/widget/PopupBubble;->mShowBelow:Z

    if-eqz v2, :cond_2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 183
    :cond_3
    iget-object v3, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    invoke-virtual {v3}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_2

    .line 196
    :cond_4
    if-gez v3, :cond_5

    move v1, v3

    .line 198
    goto :goto_3

    :cond_5
    move v1, v4

    goto :goto_3
.end method

.method private getParentView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mParentViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mParentViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setParentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mParentViewRef:Ljava/lang/ref/WeakReference;

    .line 213
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/widget/PopupBubble;->dismiss()V

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->hide()V

    .line 157
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    invoke-direct {p0}, Lcom/oculus/horizon/widget/PopupBubble;->getParentView()Landroid/view/View;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/widget/PopupBubble;->mAnchorPoint:Landroid/graphics/Point;

    if-nez v1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    iget-boolean v1, v1, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->mIsLaidOut:Z

    if-nez v1, :cond_1

    .line 133
    iget-object v1, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    .line 134
    invoke-virtual {v1}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/widget/PopupBubble$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/widget/PopupBubble$2;-><init>(Lcom/oculus/horizon/widget/PopupBubble;)V

    .line 135
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 146
    iget-object v1, p0, Lcom/oculus/horizon/widget/PopupBubble;->mBubbleView:Lcom/oculus/horizon/widget/PopupBubble$BubbleView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/PopupBubble$BubbleView;->setVisibility(I)V

    .line 147
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/oculus/horizon/widget/PopupBubble;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/widget/PopupBubble;->calculatePositionAndShow()V

    goto :goto_0
.end method
