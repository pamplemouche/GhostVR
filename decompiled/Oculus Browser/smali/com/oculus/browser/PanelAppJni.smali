.class public final Lcom/oculus/browser/PanelAppJni;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/oculus/browser/PanelApp$Natives;


# static fields
.field public static final TEST_HOOKS:LJT;

.field public static testInstance:Lcom/oculus/browser/PanelApp$Natives;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/PanelAppJni$1;

    invoke-direct {v0}, Lcom/oculus/browser/PanelAppJni$1;-><init>()V

    sput-object v0, Lcom/oculus/browser/PanelAppJni;->TEST_HOOKS:LJT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(Lcom/oculus/browser/PanelApp$Natives;)Lcom/oculus/browser/PanelApp$Natives;
    .locals 0

    .line 1
    sput-object p0, Lcom/oculus/browser/PanelAppJni;->testInstance:Lcom/oculus/browser/PanelApp$Natives;

    return-object p0
.end method

.method public static get()Lcom/oculus/browser/PanelApp$Natives;
    .locals 1

    .line 1
    new-instance v0, Lcom/oculus/browser/PanelAppJni;

    invoke-direct {v0}, Lcom/oculus/browser/PanelAppJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDefaultSearchUri(JLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, LJ/N;->MmoC5pfr(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Lcom/oculus/browser/PanelApp;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/ShellEnvironment;I)J
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->M96KwE$T(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public onLoadProgressChanged(JD)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, LJ/N;->MkhJ$3DK(JD)V

    return-void
.end method

.method public onPhysicalBackingSizeChanged(JLorg/chromium/content_public/browser/WebContents;II)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MtJ0aUvQ(JLjava/lang/Object;II)V

    return-void
.end method

.method public reportIntentLaunchTelemetry(JLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, LJ/N;->MnIWU0oo(JLjava/lang/String;I)V

    return-void
.end method

.method public requestExit(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, LJ/N;->MDkWG7XF(J)V

    return-void
.end method

.method public setAccessToken(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, LJ/N;->MhxPZ65F(JLjava/lang/String;)V

    return-void
.end method

.method public setNavUiContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-static/range {p1 .. p6}, LJ/N;->MQlh35cA(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTabList(J[Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, LJ/N;->MiwLSbe$(J[Ljava/lang/Object;I)V

    return-void
.end method

.method public setTransientProperties(J[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, LJ/N;->M1675DJl(J[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public setWebContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MEqHKbf$(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setWebVRRequestedMode(JZ)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, LJ/N;->McQ4N10R(JZ)V

    return-void
.end method

.method public suspendAllMedia(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-static {p1}, LJ/N;->MoMvOgjB(Ljava/lang/Object;)V

    return-void
.end method

.method public toggleNewPanelsAllowed(JZ)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, LJ/N;->M9fkR7dq(JZ)V

    return-void
.end method
