.class Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$2;
.super Ljava/lang/Object;
.source "SocialAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->setDismissKeyboardOnTouchListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$2;->this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 576
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$2;->this$0:Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;

    iget-object v0, v0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 579
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
