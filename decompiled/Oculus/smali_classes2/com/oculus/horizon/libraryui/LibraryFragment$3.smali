.class Lcom/oculus/horizon/libraryui/LibraryFragment$3;
.super Ljava/lang/Object;
.source "LibraryFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/PopupBubble$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/LibraryFragment;->getBubbleCallback(Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

.field final synthetic val$nextBubble:Lcom/oculus/horizon/widget/PopupBubble;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/LibraryFragment;Lcom/oculus/horizon/widget/PopupBubble;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$3;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$3;->val$nextBubble:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpsellClicked(Z)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$3;->val$nextBubble:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble;->show()V

    .line 215
    return-void
.end method

.method public onUpsellDismissed()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$3;->val$nextBubble:Lcom/oculus/horizon/widget/PopupBubble;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble;->show()V

    .line 220
    return-void
.end method
