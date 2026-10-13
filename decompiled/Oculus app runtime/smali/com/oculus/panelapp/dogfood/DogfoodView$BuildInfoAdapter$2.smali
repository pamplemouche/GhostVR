.class Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$2;
.super Ljava/lang/Object;
.source "DogfoodView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;

.field final synthetic val$item:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$2;->this$1:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;

    iput-object p2, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$2;->val$item:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 319
    iget-object p1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$2;->this$1:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;

    iget-object p1, p1, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter;->this$0:Lcom/oculus/panelapp/dogfood/DogfoodView;

    invoke-static {p1}, Lcom/oculus/panelapp/dogfood/DogfoodView;->access$700(Lcom/oculus/panelapp/dogfood/DogfoodView;)Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;

    move-result-object p1

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->UNINSTALLER:Lcom/oculus/vrshell/SystemUXRoute;

    invoke-virtual {v0}, Lcom/oculus/vrshell/SystemUXRoute;->path()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfoAdapter$2;->val$item:Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;

    iget-object v1, v1, Lcom/oculus/panelapp/dogfood/DogfoodView$BuildInfo;->label:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/dogfood/DogfoodPanelApp;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
