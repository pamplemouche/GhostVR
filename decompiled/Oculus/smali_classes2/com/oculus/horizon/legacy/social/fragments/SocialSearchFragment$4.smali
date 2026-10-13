.class Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$4;
.super Ljava/lang/Object;
.source "SocialSearchFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 129
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$4;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
