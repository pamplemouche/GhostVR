.class Lcom/oculus/vrshell/PanelServiceConnection$1;
.super Ljava/lang/Object;
.source "PanelServiceConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/vrshell/PanelServiceConnection;->sendPanelConnectionMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/vrshell/PanelServiceConnection;


# direct methods
.method constructor <init>(Lcom/oculus/vrshell/PanelServiceConnection;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/oculus/vrshell/PanelServiceConnection$1;->this$0:Lcom/oculus/vrshell/PanelServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/PanelServiceConnection$1;->this$0:Lcom/oculus/vrshell/PanelServiceConnection;

    invoke-static {v0}, Lcom/oculus/vrshell/PanelServiceConnection;->access$000(Lcom/oculus/vrshell/PanelServiceConnection;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 289
    invoke-static {}, Lcom/oculus/vrshell/PanelServiceConnection;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure to close panel service file descriptor "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
