.class Lcom/oculus/panelapp/dogfood/DogfoodView$1;
.super Ljava/lang/Object;
.source "DogfoodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;->initialize(Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;)V
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

    .line 108
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$1;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$1;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_primary_panel:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$1;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_update_ota_panel:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$1;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_update_panel_text:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$string;->dogfood_waiting_for_update:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$1;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_no_update_button:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$1;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget v0, Lcom/oculus/panelapp/dogfood/R$id;->dogfood_ota_update_progress_bar:I

    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/dogfood/DogfoodView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/views/ShellProgressBarView;->setProgressRatio(F)V

    return-void
.end method
