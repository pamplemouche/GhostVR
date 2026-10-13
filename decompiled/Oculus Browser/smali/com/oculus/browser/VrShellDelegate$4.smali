.class public Lcom/oculus/browser/VrShellDelegate$4;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/VrShellDelegate;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/VrShellDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate$4;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "VrShellDelegate.Oculus"

    const-string v1, "requestVrNavigation.onPageLoadFailed, %s"

    invoke-static {v0, v1, p2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate$4;->this$0:Lcom/oculus/browser/VrShellDelegate;

    iget-object p2, p2, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oculus/browser/WebVRNavigationDescriptor;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate$4;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-virtual {p2, p1}, Lcom/oculus/browser/VrShellDelegate;->cancelVrNavigation(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 4
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 2
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "VrShellDelegate.Oculus"

    const-string v1, "requestVrNavigation.onPageLoadFinished, %s: error = %b"

    .line 4
    invoke-static {v0, v1, p2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate$4;->this$0:Lcom/oculus/browser/VrShellDelegate;

    iget-object p2, p2, Lcom/oculus/browser/VrShellDelegate;->mNavigationSession:Lcom/oculus/browser/WebVRNavigationDescriptor;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oculus/browser/WebVRNavigationDescriptor;->isNavigatingTo(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate$4;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-static {p2}, Lcom/oculus/browser/VrShellDelegate;->access$800(Lcom/oculus/browser/VrShellDelegate;)V

    .line 8
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1, p0}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method
