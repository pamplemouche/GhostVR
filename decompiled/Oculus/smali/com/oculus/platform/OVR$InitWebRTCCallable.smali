.class Lcom/oculus/platform/OVR$InitWebRTCCallable;
.super Ljava/lang/Object;
.source "OVR.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/platform/OVR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InitWebRTCCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    iput-object p1, p0, Lcom/oculus/platform/OVR$InitWebRTCCallable;->mContext:Landroid/content/Context;

    .line 1110
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/oculus/platform/OVR$InitWebRTCCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/oculus/platform/OVR$InitWebRTCCallable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oculus/platform/OVR;->nativeSetAndroidObjects(Landroid/content/Context;)V

    .line 1113
    const/4 v0, 0x0

    return-object v0
.end method
