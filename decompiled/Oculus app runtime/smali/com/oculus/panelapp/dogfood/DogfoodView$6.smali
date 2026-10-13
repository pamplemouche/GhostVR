.class Lcom/oculus/panelapp/dogfood/DogfoodView$6;
.super Ljava/lang/Object;
.source "DogfoodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;->setUpBottomBarButtons(Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$6;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$6;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    move-result-object p1

    const-string v0, "cancel_button"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->logAction(Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$6;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$700(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    move-result-object p1

    const-string v0, "quitAndHide"

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method
