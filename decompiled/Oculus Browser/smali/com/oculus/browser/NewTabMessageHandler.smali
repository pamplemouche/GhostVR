.class public Lcom/oculus/browser/NewTabMessageHandler;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/OculusExplore$Listener;
.implements Lcom/oculus/browser/Experimentation$Listener;
.implements Lcom/oculus/browser/OVRServiceManager$Listener;


# static fields
.field public static final JLONG_NULL:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "NewTabMessageHandler"


# instance fields
.field public mAccessToken:Ljava/lang/String;

.field public mNativeNewTabMessageHandler:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/oculus/browser/NewTabMessageHandler;->mNativeNewTabMessageHandler:J

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/oculus/browser/NewTabMessageHandler;->nativeInit(J)V

    return-void
.end method

.method public static Create(J)Lcom/oculus/browser/NewTabMessageHandler;
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/NewTabMessageHandler;

    invoke-direct {v0, p0, p1}, Lcom/oculus/browser/NewTabMessageHandler;-><init>(J)V

    return-object v0
.end method

.method public static synthetic access$000(Lcom/oculus/browser/NewTabMessageHandler;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/NewTabMessageHandler;->mNativeNewTabMessageHandler:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/oculus/browser/NewTabMessageHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/oculus/browser/NewTabMessageHandler;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oculus/browser/NewTabMessageHandler;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/browser/NewTabMessageHandler;->nativeSetAccessToken(JLjava/lang/String;)V

    return-void
.end method

.method private native nativeInit(J)V
.end method

.method private native nativePublishStringMessage(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetAccessToken(JLjava/lang/String;)V
.end method

.method private native nativeSetExperimentData(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public LogStoryEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/oculus/browser/StoryLogging;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public OnDestroy()V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/oculus/browser/OculusExplore;->removeListener(Lcom/oculus/browser/OculusExplore$Listener;)V

    .line 2
    invoke-static {p0}, Lcom/oculus/browser/Experimentation;->removeListener(Lcom/oculus/browser/Experimentation$Listener;)V

    .line 3
    invoke-static {p0}, Lcom/oculus/browser/OVRServiceManager;->removeListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/oculus/browser/NewTabMessageHandler;->mNativeNewTabMessageHandler:J

    return-void
.end method

.method public OnJavascriptAllowed()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/oculus/browser/OculusExplore;->addListener(Lcom/oculus/browser/OculusExplore$Listener;)V

    .line 2
    invoke-static {p0}, Lcom/oculus/browser/Experimentation;->addListener(Lcom/oculus/browser/Experimentation$Listener;)V

    .line 3
    invoke-static {p0}, Lcom/oculus/browser/OVRServiceManager;->addListener(Lcom/oculus/browser/OVRServiceManager$Listener;)V

    return-void
.end method

.method public OpenFBLinking()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NewTabMessageHandler"

    const-string v2, "Opening FB linking"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oculus.vrshell"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "apk://com.oculus.vrshell.home"

    .line 5
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uri"

    const-string v3, "/fb-connect/browser?returnUrl=apk://com.oculus.browser"

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onAccessTokenReceived(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/NewTabMessageHandler;->mAccessToken:Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "NewTabMessageHandler"

    const-string v1, "onAccessTokenReceived"

    .line 2
    invoke-static {v0, v1, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lcom/oculus/browser/NewTabMessageHandler$1;

    invoke-direct {p1, p0}, Lcom/oculus/browser/NewTabMessageHandler$1;-><init>(Lcom/oculus/browser/NewTabMessageHandler;)V

    invoke-static {p1}, Lorg/chromium/base/ThreadUtils;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAccessTokenRequestFailed()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NewTabMessageHandler"

    const-string v2, "Failed to retrieve Oculus access token"

    .line 1
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onExperimentationUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/NewTabMessageHandler;->mNativeNewTabMessageHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/browser/NewTabMessageHandler;->nativeSetExperimentData(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExploreUpdated(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/oculus/browser/NewTabMessageHandler;->mNativeNewTabMessageHandler:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v2, "update_new_tab_stories"

    .line 2
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/oculus/browser/NewTabMessageHandler;->nativePublishStringMessage(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
