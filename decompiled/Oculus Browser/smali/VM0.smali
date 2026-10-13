.class public final synthetic LVM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LWM0;

.field public final x:Ldh;

.field public final y:Z


# direct methods
.method public constructor <init>(LWM0;Ldh;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVM0;->w:LWM0;

    iput-object p2, p0, LVM0;->x:Ldh;

    iput-boolean p3, p0, LVM0;->y:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LVM0;->w:LWM0;

    iget-object v1, p0, LVM0;->x:Ldh;

    iget-boolean v2, p0, LVM0;->y:Z

    if-eqz v0, :cond_1

    .line 1
    iget-object v1, v1, Ldh;->w:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2
    iget-object v0, v0, LWM0;->e:LXM0;

    .line 3
    iget v0, v0, LXM0;->D:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method
