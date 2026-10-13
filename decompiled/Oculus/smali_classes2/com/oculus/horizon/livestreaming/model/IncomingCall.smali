.class public Lcom/oculus/horizon/livestreaming/model/IncomingCall;
.super Ljava/lang/Object;
.source "IncomingCall.java"


# instance fields
.field public final callerId:Ljava/lang/String;

.field public final callerName:Ljava/lang/String;

.field public final callerPhoto:Landroid/net/Uri;

.field public final currentPartyId:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public seen:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->id:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->callerId:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->callerName:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->callerPhoto:Landroid/net/Uri;

    .line 20
    iput-object p5, p0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->currentPartyId:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/livestreaming/model/IncomingCall;->seen:Z

    .line 22
    return-void
.end method
