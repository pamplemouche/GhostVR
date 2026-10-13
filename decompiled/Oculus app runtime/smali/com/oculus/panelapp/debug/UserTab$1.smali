.class Lcom/oculus/panelapp/debug/UserTab$1;
.super Ljava/lang/Object;
.source "UserTab.java"

# interfaces
.implements Lcom/oculus/authapi/OVRAuth$CallerInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/debug/UserTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/debug/UserTab;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/debug/UserTab;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/oculus/panelapp/debug/UserTab$1;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachCallerInfo(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/oculus/panelapp/debug/UserTab$1;->this$0:Lcom/oculus/panelapp/debug/UserTab;

    invoke-virtual {v0}, Lcom/oculus/panelapp/debug/UserTab;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oculus/vrshell/util/CallerInfoHelper;->attachCallerInfo(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
