.class public Lcom/oculus/browser/PanelApp$3;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/PanelApp;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$3;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$3;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$400(Lcom/oculus/browser/PanelApp;)LlI0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$3;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$400(Lcom/oculus/browser/PanelApp;)LlI0;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    .line 3
    iget-object p2, p0, Lcom/oculus/browser/PanelApp$3;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p2}, Lcom/oculus/browser/PanelApp;->access$400(Lcom/oculus/browser/PanelApp;)LlI0;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$3;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$200(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method
