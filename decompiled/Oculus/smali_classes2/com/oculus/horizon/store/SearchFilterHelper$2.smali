.class Lcom/oculus/horizon/store/SearchFilterHelper$2;
.super Ljava/lang/Object;
.source "SearchFilterHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/SearchFilterHelper;->setUpMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

.field final synthetic val$menu:Lcom/oculus/horizon/widget/OculusPopupMenu;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/SearchFilterHelper;Lcom/oculus/horizon/widget/OculusPopupMenu;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oculus/horizon/store/SearchFilterHelper$2;->this$0:Lcom/oculus/horizon/store/SearchFilterHelper;

    iput-object p2, p0, Lcom/oculus/horizon/store/SearchFilterHelper$2;->val$menu:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/store/SearchFilterHelper$2;->val$menu:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->show()V

    .line 116
    return-void
.end method
