.class Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;
.super Landroid/os/ResultReceiver;
.source "OVRMediaServiceDumperPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;->doVrCastDiscover(Ljava/io/PrintStream;)V
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
    .line 151
    iput-object p1, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;->this$0:Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;

    iput-object p3, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;->val$out:Ljava/io/PrintStream;

    iput-object p4, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 153
    if-nez p1, :cond_0

    .line 154
    const-string v0, "device_list"

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;->val$out:Ljava/io/PrintStream;

    const-string v2, "Got %d devices\n"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 158
    iget-object v2, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;->val$out:Ljava/io/PrintStream;

    const-string v3, "Device %s, %s, %s\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "device_name"

    .line 160
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "deviceid"

    .line 161
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v6, "device_type"

    .line 162
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin;->access$000(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 158
    invoke-virtual {v2, v3, v4}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;->val$out:Ljava/io/PrintStream;

    const-string v1, "Error while doing discovery."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/service_media/dumper/OVRMediaServiceDumperPlugin$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 168
    return-void
.end method
