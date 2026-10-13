.class final Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/MainActivity;


# direct methods
.method private constructor <init>(Lcom/oculus/vrshell/MainActivity;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;->this$0:Lcom/oculus/vrshell/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/vrshell/MainActivity;Lcom/oculus/vrshell/MainActivity$1;)V
    .locals 0

    .line 738
    invoke-direct {p0, p1}, Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;-><init>(Lcom/oculus/vrshell/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 741
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 742
    invoke-static {}, Lcom/oculus/vrshell/MainActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Stopping VrShell due to ACTION_USER_BACKGROUND"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p1, p0, Lcom/oculus/vrshell/MainActivity$UserSwitchReceiver;->this$0:Lcom/oculus/vrshell/MainActivity;

    invoke-virtual {p1}, Lcom/oculus/vrshell/MainActivity;->getAppPtr()J

    move-result-wide v0

    invoke-static {p2}, Lcom/oculus/vrshell/IntentParser;->ToEnvironment(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/oculus/vrshell/ShellApplication;->nativeBroadcastIntent(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
