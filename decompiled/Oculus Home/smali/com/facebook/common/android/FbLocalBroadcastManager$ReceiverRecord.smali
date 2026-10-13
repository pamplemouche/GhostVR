.class Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;
.super Ljava/lang/Object;
.source "FbLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/android/FbLocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverRecord"
.end annotation


# instance fields
.field broadcasting:Z

.field final filter:Landroid/content/IntentFilter;

.field final handler:Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

.field final looperId:J

.field final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;JLcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;)V
    .locals 1
    .param p1, "givenFilter"    # Landroid/content/IntentFilter;
    .param p2, "givenReceiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "givenLooperId"    # J
    .param p5, "givenHandler"    # Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 47
    iput-object p2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    .line 48
    iput-wide p3, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->looperId:J

    .line 49
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

    iput-object v0, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->handler:Lcom/facebook/common/android/FbLocalBroadcastManager$LocalBroadcastHandler;

    .line 50
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Receiver{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, " looperId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-wide v2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;->looperId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
