.class Lcom/oculus/modules/MessengerModule$1;
.super Ljava/lang/Object;
.source "MessengerModule.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/MessengerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/MessengerModule;


# direct methods
.method constructor <init>(Lcom/oculus/modules/MessengerModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/MessengerModule;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/oculus/modules/MessengerModule$1;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 329
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$1;->this$0:Lcom/oculus/modules/MessengerModule;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/oculus/modules/MessengerModule;->access$402(Lcom/oculus/modules/MessengerModule;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 331
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$1;->this$0:Lcom/oculus/modules/MessengerModule;

    invoke-static {v0}, Lcom/oculus/modules/MessengerModule;->access$500(Lcom/oculus/modules/MessengerModule;)V

    .line 332
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 336
    invoke-static {}, Lcom/oculus/modules/MessengerModule;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$1;->this$0:Lcom/oculus/modules/MessengerModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/modules/MessengerModule;->access$402(Lcom/oculus/modules/MessengerModule;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 338
    iget-object v0, p0, Lcom/oculus/modules/MessengerModule$1;->this$0:Lcom/oculus/modules/MessengerModule;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/modules/MessengerModule;->access$602(Lcom/oculus/modules/MessengerModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 339
    return-void
.end method
