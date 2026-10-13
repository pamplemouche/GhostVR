.class public Lcom/oculus/horizon/widget/ExtendedScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/ExtendedScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field private final mOnScrollListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oculus/horizon/widget/ExtendedScrollView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/widget/ExtendedScrollView;->mOnScrollListenerSet:Ljava/util/Set;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/widget/ExtendedScrollView;->mOnScrollListenerSet:Ljava/util/Set;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/widget/ExtendedScrollView;->mOnScrollListenerSet:Ljava/util/Set;

    .line 30
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Lcom/oculus/horizon/widget/ExtendedScrollView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/widget/ExtendedScrollView;->mOnScrollListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/widget/ExtendedScrollView;->mOnScrollListenerSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ExtendedScrollView$OnScrollListener;

    .line 44
    invoke-interface {v0, p0}, Lcom/oculus/horizon/widget/ExtendedScrollView$OnScrollListener;->onScrollChanged(Lcom/oculus/horizon/widget/ExtendedScrollView;)V

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
