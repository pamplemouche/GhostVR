.class Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;
.super Ljava/lang/Object;
.source "SurfaceBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/SurfaceBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BroadcastRequestRunnable"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLiftInhibit:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mSurface:Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/horizon/capture/SurfaceBroadcast;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/capture/SurfaceBroadcast;Landroid/content/Context;Ljava/lang/String;Landroid/view/Surface;Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;Z)V
    .locals 0
    .param p4    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->this$0:Lcom/oculus/horizon/capture/SurfaceBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mSurface:Landroid/view/Surface;

    .line 57
    iput-object p5, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mAction:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mSignal:Ljava/util/concurrent/CountDownLatch;

    .line 59
    iput-boolean p7, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mLiftInhibit:Z

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mLiftInhibit:Z

    return v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mSignal:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->this$0:Lcom/oculus/horizon/capture/SurfaceBroadcast;

    iget-object v1, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable$1;-><init>(Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;)V

    iget-object v3, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mAction:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mSurface:Landroid/view/Surface;

    iget-boolean v6, p0, Lcom/oculus/horizon/capture/SurfaceBroadcast$BroadcastRequestRunnable;->mLiftInhibit:Z

    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/capture/SurfaceBroadcast;->sendBroadcast(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;Ljava/lang/String;Landroid/view/Surface;Z)V

    .line 82
    return-void
.end method
