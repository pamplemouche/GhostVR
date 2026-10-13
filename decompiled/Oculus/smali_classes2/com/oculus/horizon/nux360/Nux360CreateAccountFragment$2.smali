.class Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$2;
.super Ljava/lang/Object;
.source "Nux360CreateAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->setupLogin(Landroid/view/View;)V
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
    .line 138
    iput-object p1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v0}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->access$200(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment$2;->this$0:Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;

    invoke-static {v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;->access$100(Lcom/oculus/horizon/nux360/Nux360CreateAccountFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360CreateAccountPresenter;->login(Ljava/lang/String;)V

    .line 142
    return-void
.end method
