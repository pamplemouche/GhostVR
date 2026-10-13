.class Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$2;
.super Ljava/lang/Object;
.source "YouAreReadyWelcomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->navigateNextWithDelay()V
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
    .line 118
    iput-object p1, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$2;->this$0:Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$2;->this$0:Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 122
    instance-of v1, v0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$Host;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$Host;

    invoke-interface {v0}, Lcom/oculus/horizon/obe/YouAreReadyWelcomeFragment$Host;->onWelcomeFragmentNavigateNext()V

    .line 125
    :cond_0
    return-void
.end method
