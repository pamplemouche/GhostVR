.class public Lcom/oculus/browser/VrShellDelegate$1;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/VrShellDelegate;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/VrShellDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/VrShellDelegate$1;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "VrShellDelegate.Oculus"

    const-string v1, "VrShellDelegate onContentChanged"

    .line 3
    invoke-static {v0, v1, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/oculus/browser/VrShellDelegate$1;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-virtual {p1}, Lcom/oculus/browser/VrShellDelegate;->shutdownVR()V

    :cond_1
    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 12

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 8
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 10
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->g:Z

    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 12
    iget-object v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->c:Ljava/lang/Integer;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 13
    iget v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->h:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 15
    iget v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->i:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "Navigation to %s finished, isMainFr %b, isSameDoc %b, isErr %b, hasCommitted %b, isFragment %b, pageTrans %d, errCode %d, http %d"

    .line 17
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-boolean v9, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-nez v9, :cond_0

    .line 19
    iget-object v3, p0, Lcom/oculus/browser/VrShellDelegate$1;->this$0:Lcom/oculus/browser/VrShellDelegate;

    .line 20
    iget-object v5, p2, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 21
    iget-boolean v6, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    .line 22
    iget-boolean v7, p2, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    .line 23
    iget-boolean v8, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    .line 24
    iget-object v10, p2, Lorg/chromium/content_public/browser/NavigationHandle;->c:Ljava/lang/Integer;

    .line 25
    iget v11, p2, Lorg/chromium/content_public/browser/NavigationHandle;->h:I

    move-object v4, p1

    .line 26
    invoke-static/range {v3 .. v11}, Lcom/oculus/browser/VrShellDelegate;->access$100(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZZZLjava/lang/Integer;I)V

    :cond_0
    return-void
.end method

.method public onDidStartNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2
    iget-boolean v2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 4
    iget-boolean v2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 6
    iget-boolean v2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    .line 7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "Navigation to %s started, isMainFr %b, isSameDoc %b, isErr %b"

    .line 8
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate$1;->this$0:Lcom/oculus/browser/VrShellDelegate;

    .line 11
    iget-object v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 12
    iget-boolean v2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    .line 13
    iget-boolean p2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    .line 14
    invoke-static {v0, p1, v1, v2, p2}, Lcom/oculus/browser/VrShellDelegate;->access$000(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "VrShellDelegate.Oculus"

    const-string v2, "onPageLoadFailed, %s"

    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/VrShellDelegate$1;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-static {v0, p1, p2}, Lcom/oculus/browser/VrShellDelegate;->access$300(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;I)V

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 2

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "VrShellDelegate.Oculus"

    const-string v1, "onPageLoadFinished, %s"

    invoke-static {v0, v1, p2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate$1;->this$0:Lcom/oculus/browser/VrShellDelegate;

    invoke-static {p2, p1}, Lcom/oculus/browser/VrShellDelegate;->access$200(Lcom/oculus/browser/VrShellDelegate;Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "VrShellDelegate.Oculus"

    const-string v0, "VrShellDelegate onWebContentsSwapped"

    .line 1
    invoke-static {p3, v0, p2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/oculus/browser/VrShellDelegate$1;->this$0:Lcom/oculus/browser/VrShellDelegate;

    iget-object p3, p2, Lcom/oculus/browser/VrShellDelegate;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-ne p3, p1, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/oculus/browser/VrShellDelegate;->shutdownVR()V

    :cond_0
    return-void
.end method
