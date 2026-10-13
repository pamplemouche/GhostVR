.class Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;
.super Landroid/os/ResultReceiver;
.source "OVRMediaServiceDumperPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;->doVrCastStatus(Ljava/io/PrintStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$out:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;Landroid/os/Handler;Ljava/io/PrintStream;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->this$0:Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;

    iput-object p3, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$out:Ljava/io/PrintStream;

    iput-object p4, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$out:Ljava/io/PrintStream;

    const-string v1, "Result: %d\n"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 99
    if-nez p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$out:Ljava/io/PrintStream;

    const-string v1, "Device id: %s\n"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "deviceid"

    .line 101
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$out:Ljava/io/PrintStream;

    const-string v1, "Device name: %s\n"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "device_name"

    .line 104
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 102
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$out:Ljava/io/PrintStream;

    const-string v1, "Device type: %s\n"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "device_type"

    .line 107
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;->access$000(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 105
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$out:Ljava/io/PrintStream;

    const-string v1, "Device state: %d\n"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "device_status"

    .line 110
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 113
    return-void
.end method
