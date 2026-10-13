.class public Lcom/facebook/react/touch/JSResponderHandler;
.super Ljava/lang/Object;
.source "JSResponderHandler.java"

# interfaces
.implements Lcom/facebook/react/touch/OnInterceptTouchEventListener;


# instance fields
.field private volatile mCurrentJSResponder:I

.field private mViewParentBlockingNativeResponder:Landroid/view/ViewParent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    return-void
.end method

.method private maybeUnblockNativeResponder()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mViewParentBlockingNativeResponder:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mViewParentBlockingNativeResponder:Landroid/view/ViewParent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mViewParentBlockingNativeResponder:Landroid/view/ViewParent;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public clearJSResponder()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    .line 48
    invoke-direct {p0}, Lcom/facebook/react/touch/JSResponderHandler;->maybeUnblockNativeResponder()V

    .line 49
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    iget v2, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    .line 61
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 70
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public setJSResponder(ILandroid/view/ViewParent;)V
    .locals 1
    .param p2    # Landroid/view/ViewParent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    iput p1, p0, Lcom/facebook/react/touch/JSResponderHandler;->mCurrentJSResponder:I

    .line 39
    invoke-direct {p0}, Lcom/facebook/react/touch/JSResponderHandler;->maybeUnblockNativeResponder()V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 42
    iput-object p2, p0, Lcom/facebook/react/touch/JSResponderHandler;->mViewParentBlockingNativeResponder:Landroid/view/ViewParent;

    .line 44
    :cond_0
    return-void
.end method
