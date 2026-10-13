.class public Lcom/oculus/horizon/social/SocialDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SocialDataObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oculus/horizon/social/SocialDataObserver;->mListener:Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/social/SocialDataObserver;->mListener:Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;

    invoke-interface {v0}, Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;->onSocialDataChanged()V

    .line 32
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/social/SocialDataObserver;->mListener:Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;

    invoke-interface {v0}, Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;->onSocialDataChanged()V

    .line 37
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/social/SocialDataObserver;->mListener:Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;

    invoke-interface {v0}, Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;->onSocialDataChanged()V

    .line 42
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/social/SocialDataObserver;->mListener:Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;

    invoke-interface {v0}, Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;->onSocialDataChanged()V

    .line 47
    return-void
.end method
