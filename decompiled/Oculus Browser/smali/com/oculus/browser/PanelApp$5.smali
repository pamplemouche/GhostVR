.class public Lcom/oculus/browser/PanelApp$5;
.super Lg11;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/PanelApp;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelApp;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$5;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-direct {p0, p2}, Lg11;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method


# virtual methods
.method public renderProcessGone(Z)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "PanelApp"

    const-string v1, "NavUi Render Process Gone!"

    .line 1
    invoke-static {v0, v1, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$5;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$600(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/HydraApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/browser/HydraApplication;->shown()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$5;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$700(Lcom/oculus/browser/PanelApp;)V

    :cond_0
    return-void
.end method
