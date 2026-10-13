.class Lcom/oculus/panelapp/dogfood/DogfoodView$5;
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

    .line 181
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$5;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 184
    invoke-static {}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TODO Create reset buttons if possible"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
