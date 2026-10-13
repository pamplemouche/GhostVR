.class public Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;
.super Ljava/lang/Object;
.source "GlMediaRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/spherical/GlMediaRenderThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewParam"
.end annotation


# instance fields
.field private dragX:I

.field private dragY:I

.field public final lock:Ljava/util/concurrent/locks/Lock;

.field public final projectionMatrix:[F

.field public viewHeight:I

.field public viewWidth:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->lock:Ljava/util/concurrent/locks/Lock;

    .line 740
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->projectionMatrix:[F

    .line 742
    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->dragX:I

    return v0
.end method

.method static synthetic access$302(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;I)I
    .locals 0

    .prologue
    .line 734
    iput p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->dragX:I

    return p1
.end method

.method static synthetic access$400(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;)I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->dragY:I

    return v0
.end method

.method static synthetic access$402(Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;I)I
    .locals 0

    .prologue
    .line 734
    iput p1, p0, Lcom/oculus/horizon/spherical/GlMediaRenderThread$ViewParam;->dragY:I

    return p1
.end method
