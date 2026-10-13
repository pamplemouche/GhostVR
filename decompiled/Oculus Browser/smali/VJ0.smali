.class public final synthetic LVJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final w:LkK0;

.field public final x:LoT0;

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(LkK0;LoT0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVJ0;->w:LkK0;

    iput-object p2, p0, LVJ0;->x:LoT0;

    iput-object p3, p0, LVJ0;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 5

    iget-object v0, p0, LVJ0;->w:LkK0;

    iget-object v1, p0, LVJ0;->x:LoT0;

    iget-object v2, p0, LVJ0;->y:Ljava/lang/String;

    .line 1
    iget-object v3, v0, LkK0;->X:Landroid/os/Handler;

    new-instance v4, LUJ0;

    invoke-direct {v4, v0, v1, v2}, LUJ0;-><init>(LkK0;LoT0;Ljava/lang/String;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
