.class Lcom/oculus/horizon/libraryui/LibraryFragment$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "LibraryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/LibraryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/LibraryFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$1;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$1;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->access$000(Lcom/oculus/horizon/libraryui/LibraryFragment;)Lcom/oculus/horizon/libraryui/events/LibraryEventBus;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/libraryui/events/TabChangedEvent;

    invoke-direct {v1, p1}, Lcom/oculus/horizon/libraryui/events/TabChangedEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/libraryui/events/LibraryEventBus;->post(Ljava/lang/Object;)V

    .line 124
    return-void
.end method
