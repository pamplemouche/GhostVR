.class Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$2;
.super Ljava/lang/Object;
.source "SocialSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment$2;->this$0:Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;->access$000(Lcom/oculus/horizon/legacy/social/fragments/SocialSearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method
