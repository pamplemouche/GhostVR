.class Lcom/oculus/horizon/libraryui/LibraryFragment$2;
.super Ljava/lang/Object;
.source "LibraryFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/LibraryFragment;->showNewLibraryNux()V
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
    .line 176
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$2;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$2;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->access$100(Lcom/oculus/horizon/libraryui/LibraryFragment;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 180
    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$2;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    const v1, 0x3f555555

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$2;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    sget v3, Lcom/oculus/horizon/R$string;->library_nux_saved:I

    .line 185
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v4, v2, v4}, Lcom/oculus/horizon/libraryui/LibraryFragment;->access$200(Lcom/oculus/horizon/libraryui/LibraryFragment;FLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$2;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v3, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$2;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    sget v4, Lcom/oculus/horizon/R$string;->library_nux_title:I

    .line 189
    invoke-virtual {v3, v4}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/libraryui/LibraryFragment$2;->this$0:Lcom/oculus/horizon/libraryui/LibraryFragment;

    sget v5, Lcom/oculus/horizon/R$string;->library_nux_local_media:I

    .line 190
    invoke-virtual {v4, v5}, Lcom/oculus/horizon/libraryui/LibraryFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-static {v1, v2, v3, v4, v0}, Lcom/oculus/horizon/libraryui/LibraryFragment;->access$200(Lcom/oculus/horizon/libraryui/LibraryFragment;FLjava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/widget/PopupBubble;)Lcom/oculus/horizon/widget/PopupBubble;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PopupBubble;->show()V

    goto :goto_0
.end method
