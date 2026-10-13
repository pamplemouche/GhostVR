.class Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "YouAreReadyWelcomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->animateViews(Landroid/view/View;Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$1;->this$0:Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$1;->this$0:Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;

    invoke-static {v0}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->access$000(Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;)V

    .line 68
    return-void
.end method
