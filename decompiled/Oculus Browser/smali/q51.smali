.class public Lq51;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ls51;


# direct methods
.method public synthetic constructor <init>(Ls51;Lg51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq51;->w:Ls51;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq51;->w:Ls51;

    .line 2
    iget-object v0, v0, Ls51;->g:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 4
    iget-object v0, p0, Lq51;->w:Ls51;

    const/4 v1, 0x3

    .line 5
    invoke-virtual {v0, v1}, Ls51;->a(I)V

    .line 6
    iget-object v0, p0, Lq51;->w:Ls51;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v1, v0, Ls51;->q:Landroid/graphics/Rect;

    return-void
.end method
