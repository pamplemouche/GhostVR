.class Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;
.super Ljava/lang/Object;
.source "AnytimeBarViewV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->access$000(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logButtonClick(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->access$100(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;->valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;

    invoke-static {v1}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->access$100(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;)Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletHostViewV2;->showTablet(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletV2;)V

    .line 81
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;

    check-cast p1, Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;->access$200(Lcom/oculus/panelapp/anytimeui/v2/AnytimeBarViewV2;Lcom/oculus/panelapp/anytimeui/v2/bar/AnytimeBarNavigationButtonV2;)V

    return-void
.end method
