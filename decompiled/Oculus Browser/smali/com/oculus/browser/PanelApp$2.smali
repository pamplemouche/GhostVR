.class public Lcom/oculus/browser/PanelApp$2;
.super LTH0;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/PanelApp;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$2;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-direct {p0}, LTH0;-><init>()V

    return-void
.end method


# virtual methods
.method public didCloseTab(IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$2;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$200(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$2;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$200(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$2;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$200(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public restoreCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$2;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$200(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method
