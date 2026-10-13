.class public final synthetic Lod0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lqd0;


# direct methods
.method public constructor <init>(Lqd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod0;->w:Lqd0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lod0;->w:Lqd0;

    .line 1
    iget-object v1, v0, LCd0;->a:Landroid/view/ViewGroup;

    iget-object v0, v0, Lqd0;->c:Lpd0;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
