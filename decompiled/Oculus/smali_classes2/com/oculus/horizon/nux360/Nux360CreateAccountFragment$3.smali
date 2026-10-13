.class Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$3;
.super Ljava/lang/Object;
.source "Nux360CreateAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->setupLegalNotice(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->access$300(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$3;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oculus/horizon/navigation/IntentFactory;->newLegalActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method
