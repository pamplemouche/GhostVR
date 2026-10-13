.class Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$ActionClickListener;
.super Ljava/lang/Object;
.source "AnytimeUIMinimizedBarView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;


# direct methods
.method private constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$ActionClickListener;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$ActionClickListener;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView$ActionClickListener;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;

    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->mPanelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    invoke-static {}, Lcom/oculus/panelapp/anytimeui/AnytimeUIMinimizedBarView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
