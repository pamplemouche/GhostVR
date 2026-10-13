.class Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "FbLocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/android/FbLocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BroadcastRecord"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final receivers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/Collection;)V
    .locals 0
    .param p1, "givenIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p2, "givenReceivers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/common/android/FbLocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    .line 72
    iput-object p2, p0, Lcom/facebook/common/android/FbLocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/Collection;

    .line 73
    return-void
.end method
