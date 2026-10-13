.class Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin$1;
.super Landroid/os/ResultReceiver;
.source "OVRLibraryDumperPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin;->doRefetch(Ljava/io/PrintStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin;Landroid/os/Handler;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin$1;->this$0:Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin;

    iput-object p3, p0, Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/libraryapi/dumper/OVRLibraryDumperPlugin$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 153
    return-void
.end method
