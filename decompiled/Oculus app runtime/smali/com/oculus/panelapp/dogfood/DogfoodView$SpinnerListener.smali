.class Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;
.super Ljava/lang/Object;
.source "DogfoodView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView;Lcom/oculus/panelapp/dogfood/DogfoodView$1;)V
    .locals 0

    .line 229
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;-><init>(Lcom/oculus/panelapp/dogfood/DogfoodView;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x0

    const/16 p2, 0x8

    if-eqz p3, :cond_2

    const/4 p4, 0x1

    if-eq p3, p4, :cond_1

    const/4 p4, 0x2

    if-eq p3, p4, :cond_0

    goto/16 :goto_0

    .line 250
    :cond_0
    iget-object p3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p3}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$900(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object p3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p3}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1000(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 252
    iget-object p2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p2}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget-object p2, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->RESET:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    invoke-static {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1200(Lcom/oculus/panelapp/dogfood/DogfoodView;Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V

    .line 254
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    move-result-object p1

    const-string p2, "reset_view"

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->logAction(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object p3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p3}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$900(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object p3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p3}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1000(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget-object p2, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->DEFAULT:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    invoke-static {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1200(Lcom/oculus/panelapp/dogfood/DogfoodView;Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V

    .line 246
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    move-result-object p1

    const-string p2, "builds_view"

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->logAction(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object p3, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p3}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$900(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1000(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$SpinnerListener;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    sget-object p2, Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;->DEFAULT:Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;

    invoke-static {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$1200(Lcom/oculus/panelapp/dogfood/DogfoodView;Lcom/oculus/panelapp/dogfood/DogfoodView$ButtonOptions;)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
