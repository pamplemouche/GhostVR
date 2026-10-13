.class Lcom/oculus/vrshell/MainActivity$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/MainActivity;

.field final synthetic val$useWebTask:Z


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/MainActivity;Z)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/oculus/vrshell/MainActivity$1;->this$0:Lcom/oculus/vrshell/MainActivity;

    iput-boolean p2, p0, Lcom/oculus/vrshell/MainActivity$1;->val$useWebTask:Z

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/oculus/vrshell/MainActivity$1;->this$0:Lcom/oculus/vrshell/MainActivity;

    invoke-static {p1}, Lcom/oculus/vrshell/MainActivity;->access$000(Lcom/oculus/vrshell/MainActivity;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x11

    if-nez p1, :cond_1

    .line 197
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 199
    iget-object p1, p0, Lcom/oculus/vrshell/MainActivity$1;->this$0:Lcom/oculus/vrshell/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/oculus/vrshell/MainActivity;->access$002(Lcom/oculus/vrshell/MainActivity;Z)Z

    .line 200
    invoke-static {}, Lcom/oculus/vrshell/MainActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Wi-Fi Captive Portal detected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oculus.vrshell.intent.action.LAUNCH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.oculus.vrshell"

    .line 202
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "systemux://captive-wifi-portal"

    .line 203
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "intent_data"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    iget-boolean p2, p0, Lcom/oculus/vrshell/MainActivity$1;->val$useWebTask:Z

    if-eqz p2, :cond_0

    const-string p2, "ovrweb://webtask?uri=http%3A%2F%2Fclients3.google.com%2Fgenerate_204"

    goto :goto_0

    :cond_0
    const-string p2, "http://clients3.google.com/generate_204"

    :goto_0
    const-string v1, "uri"

    .line 209
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "blackscreen"

    .line 210
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-object p2, p0, Lcom/oculus/vrshell/MainActivity$1;->this$0:Lcom/oculus/vrshell/MainActivity;

    invoke-virtual {p2, p1}, Lcom/oculus/vrshell/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 212
    :cond_1
    iget-object p1, p0, Lcom/oculus/vrshell/MainActivity$1;->this$0:Lcom/oculus/vrshell/MainActivity;

    invoke-static {p1}, Lcom/oculus/vrshell/MainActivity;->access$000(Lcom/oculus/vrshell/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/oculus/vrshell/MainActivity$1;->this$0:Lcom/oculus/vrshell/MainActivity;

    invoke-static {p1, v0}, Lcom/oculus/vrshell/MainActivity;->access$002(Lcom/oculus/vrshell/MainActivity;Z)Z

    :cond_2
    :goto_1
    return-void
.end method
