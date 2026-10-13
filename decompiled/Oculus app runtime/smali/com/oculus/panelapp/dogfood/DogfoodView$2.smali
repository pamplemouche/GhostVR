.class Lcom/oculus/panelapp/dogfood/DogfoodView$2;
.super Ljava/lang/Object;
.source "DogfoodView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView;->bindSpinner()V
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

    .line 134
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$2;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$2;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$100(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;

    move-result-object p1

    const-string p2, "advanced_menu"

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/dogfood/DogfoodPanelTelemetry;->logAction(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
