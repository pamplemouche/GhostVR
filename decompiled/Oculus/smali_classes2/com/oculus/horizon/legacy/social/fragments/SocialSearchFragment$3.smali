.class Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;
.super Ljava/lang/Object;
.source "SocialSearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 118
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$100(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$3;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$300(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/SocialSearchFragmentAdapter;->doSearch(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 118
    goto :goto_0

    :cond_2
    move v2, v1

    .line 119
    goto :goto_1

    :cond_3
    move v1, v3

    .line 120
    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method
