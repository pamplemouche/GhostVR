.class Lcom/oculus/horizon/widget/OculusPopupMenu$1;
.super Ljava/lang/Object;
.source "OculusPopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/OculusPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/OculusPopupMenu;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$1;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$1;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->access$000(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$1;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->access$000(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$1;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-static {v1}, Lcom/oculus/horizon/widget/OculusPopupMenu;->access$100(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/oculus/horizon/widget/OculusPopupMenu$MenuAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$1;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->dismiss()V

    .line 61
    :cond_0
    return-void
.end method
