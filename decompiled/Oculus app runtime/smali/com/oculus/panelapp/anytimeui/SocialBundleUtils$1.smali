.class final Lcom/oculus/panelapp/anytimeui/SocialBundleUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "SocialBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/SocialBundleUtils;->linkifySpan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/SpannableStringBuilder;Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils$1;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils$1;->val$panelApp:Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;

    sget-object v0, Lcom/oculus/vrshell/SystemUXRoute;->DEFAULT_BROWSER:Lcom/oculus/vrshell/SystemUXRoute;

    iget-object v1, p0, Lcom/oculus/panelapp/anytimeui/SocialBundleUtils$1;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIAndroidPanelAppBase;->actionNavigate(Lcom/oculus/vrshell/SystemUXRoute;Ljava/lang/String;)V

    return-void
.end method
