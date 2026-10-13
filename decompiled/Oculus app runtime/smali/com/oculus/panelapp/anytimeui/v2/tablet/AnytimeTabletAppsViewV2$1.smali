.class Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;
.super Ljava/lang/Object;
.source "AnytimeTabletAppsViewV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;

    invoke-static {v0}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->access$000(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;)Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->logButtonClick(Landroid/view/View;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 66
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2$1;->this$0:Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;

    invoke-static {v0, p1}, Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;->access$100(Lcom/oculus/panelapp/anytimeui/v2/tablet/AnytimeTabletAppsViewV2;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
